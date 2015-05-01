<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class UserHooks {

	function setHomePage(&$bean, $event, $arguments) {
		
		if (!$bean->is_admin) {
		
			//Is Domains Installed
			$domainsQuery = $bean->db->query("SELECT DISTINCT id_name FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
			$manageDomains = ($domainsQuery->num_rows > 0); 
			
			$manageDomainsWhere = "";
			if ($manageDomains)
				$manageDomainsWhere = " AND asol_domain_id='".$bean->asol_domain_id."' ";
	
			$queryres = $bean->db->query("SELECT COUNT(id) as count FROM roles_homepage WHERE user_owner='".$bean->id."'".$manageDomainsWhere);
	
			$res = $bean->db->fetchByAssoc($queryres);
			
			if ($res['count'] == 0) {
			
				$GLOBALS['log']->debug("*********************** ASOL: Setting homepage for current User [".$bean->id."] at Domain with Id [".$bean->asol_domain_id."]");
				
				//Obtenemos los tabs actuales del admin
				$tabs = Array();
				$queryUserAdminTabs = $bean->db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_published, asol_domain_id FROM roles_homepage WHERE role_id='default' AND user_owner='1' AND home_hash_published!=''".$manageDomainsWhere);
	
				while($queryRow = $bean->db->fetchByAssoc($queryUserAdminTabs))
					$tabs[] = $queryRow;
							
				foreach ($tabs as $tab) {
					if ($manageDomains)
						$bean->db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', 'default', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$bean->id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_published']."', '', '".$tab['asol_domain_id']."')");
					else
						$bean->db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published) VALUES ('".create_guid()."', 'default', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$bean->id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_published']."', '')");
				}
					
			
			}

		}
			
	}
	
	function resetHomePage(&$bean, $event, $arguments) {
		
		if (!$bean->is_admin) {
			
			if (($_REQUEST['action'] == 'DetailView') && (isset($_REQUEST['reset_homepage']))) {
				
				//Recalcular el homepage para el usuario actual
				global $db, $current_user;
				
				//Is Domains Installed
				$domainsQuery = $db->query("SELECT id_name FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
				$manageDomains = ($domainsQuery->num_rows > 0);
				
				$manageDomainsWhere = "";
				$currentUserDomainId = "null";
				$asolDomainId = (isset($bean->asol_domain_id)) ? $bean->asol_domain_id : null;
				
				if ($manageDomains) {
					$manageDomainsWhere = " AND asol_domain_id='".$asolDomainId."' ";
					$currentUserDomainId = "'".$asolDomainId."'";
				}
				
				$GLOBALS['log']->debug("**************************** ASOL: SELECT DISTINCT role_id FROM acl_roles_users WHERE user_id='".$bean->id."' AND deleted='0'");
				$queryUserRole = $db->query("SELECT DISTINCT role_id FROM acl_roles_users WHERE user_id='".$bean->id."' AND deleted='0'");
				
				$roleIds = Array();
				while($queryRow = $db->fetchByAssoc($queryUserRole))
					$roleIds[] = $queryRow['role_id'];
				
				if (count($roleIds) == 0) { //Asignar role default
			
					if ($bean->id == $current_user->id) { //Actualizamos el homepage si el usuario actual es quien resetea su propio homepage
								
						//Obtenemos los tabs actuales del admin
						$tabs = Array();
						$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_published FROM roles_homepage WHERE role_id='default' AND user_owner='1' AND home_hash_published!=''".$manageDomainsWhere);
						while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
							$tabs[] = $queryRow;
									
						//Borrar sus tabs previos que no sean custom
						$db->query("DELETE FROM roles_homepage WHERE user_owner='".$bean->id."' AND custom_home=0 ".$manageDomainsWhere);
						
						//Cambiamos el rol de los tabs que si sean custom al nuevo rol
						$db->query("UPDATE roles_homepage SET role_id='default' WHERE user_owner='".$bean->id."' AND custom_home=1 ".$manageDomainsWhere);
					
						foreach ($tabs as $tab)
							$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', 'default', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$bean->id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_published']."', '', ".$currentUserDomainId.")");
					
					}
				
				} else { //Buscar y asignar el roleHomePage con mayor prioridad
					
					//Calcular el rol de mayor prioridad
					$oldPriority = 0;
					$maxRole = "";
					foreach ($roleIds as $idRole) {
					
						$queryUserMaxRoles = $db->query("SELECT home_priority FROM roles_homepage WHERE role_id='".$idRole."' AND user_owner='1'".$manageDomainsWhere);
						$queryUserMaxRow = $db->fetchByAssoc($queryUserMaxRoles);
					
						if ($queryUserMaxRow['home_priority'] >= $oldPriority)
							$maxRole = $idRole;
							
						$oldPriority = $queryUserMaxRow['home_priority'];
						
					}
					
					
					$queryUserMaxRoles = $db->query("SELECT home_hash_published FROM roles_homepage WHERE user_owner='1' AND role_id='".$maxRole."'".$manageDomainsWhere." ORDER BY home_hash_published DESC");
					$queryUserMaxRow = $db->fetchByAssoc($queryUserMaxRoles);
					
					if (empty($queryUserMaxRow['home_hash_published'])) {
								
						if ($bean->id == $current_user->id) { //Actualizamos el homepage si el usuario actual es quien resetea su propio homepage
								
							//Obtenemos los tabs actuales del admin
							$tabs = Array();
							$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_published FROM roles_homepage WHERE role_id='default' AND user_owner='1' AND home_hash_published!=''".$manageDomainsWhere);
							while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
								$tabs[] = $queryRow;
										
							//Borrar sus tabs previos que no sean custom
							$db->query("DELETE FROM roles_homepage WHERE user_owner='".$bean->id."' AND custom_home=0".$manageDomainsWhere);
							
							//Cambiamos el rol de los tabs que si sean custom al nuevo rol
							$db->query("UPDATE roles_homepage SET role_id='default' WHERE user_owner='".$bean->id."' AND custom_home=1".$manageDomainsWhere);
						
							foreach ($tabs as $tab)
								$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', 'default', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$bean->id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_published']."', '', ".$currentUserDomainId.")");
						
						}
					
					} else {
					
						if ($bean->id == $current_user->id) { //Actualizamos el homepage si el usuario actual es quien resetea su propio homepage
								
							//Obtenemos los tabs actuales del admin
							$tabs = Array();
							$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_published FROM roles_homepage WHERE role_id='".$maxRole."' AND user_owner='1' AND home_hash_published!=''".$manageDomainsWhere);
							while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
								$tabs[] = $queryRow;
										
							//Borrar sus tabs previos que no sean custom
							$db->query("DELETE FROM roles_homepage WHERE user_owner='".$bean->id."' AND custom_home=0".$manageDomainsWhere);
							
							//Cambiamos el rol de los tabs que si sean custom al nuevo rol
							$db->query("UPDATE roles_homepage SET role_id='".$maxRole."' WHERE user_owner='".$bean->id."' AND custom_home=1".$manageDomainsWhere);
						
							foreach ($tabs as $tab)
								$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$maxRole."', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$bean->id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_published']."', '', ".$currentUserDomainId.")");
						
						}
						
					}
				
				}
				
			}
		
		}
			
	}

}
?>
