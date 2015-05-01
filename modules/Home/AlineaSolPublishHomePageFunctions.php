<?php


class asol_managePublishHomePageActions {
	
	static private $newTabHash = 'YToyOntzOjg6ImRhc2hsZXRzIjthOjM6e3M6MzY6ImU1YmEwYjEyLTZjNDktOGUyZS0zY2NhLTRiNjZlNmUzMzgyZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiTXlUaHJlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjI6Im1vZHVsZXMvVGhyZWFkcy9EYXNobGV0cy9NeVRocmVhZHNEYXNobGV0L015VGhyZWFkc0Rhc2hsZXQucGhwIjtzOjEyOiJzb3J0X29wdGlvbnMiO2E6Mjp7czo5OiJzb3J0T3JkZXIiO3M6NDoiZGVzYyI7czo3OiJvcmRlckJ5IjtzOjE2OiJyZWNlbnRfcG9zdF9kYXRlIjt9fXM6MzY6ImUwYTYyN2NiLWM2YjQtOTkyNC0wZDBlLTRmMmFiNjE5OTdhYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImNkOGY0ZTFjLWU2ZTItYTIzMS0yNGVlLTRmMmFiNmQzZTFiZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJOZXdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTk6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9TdWdhck5ld3NEYXNobGV0L1N1Z2FyTmV3c0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6Mjp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJjZDhmNGUxYy1lNmUyLWEyMzEtMjRlZS00ZjJhYjZkM2UxYmQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImUwYTYyN2NiLWM2YjQtOTkyNC0wZDBlLTRmMmFiNjE5OTdhYyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjk6InBhZ2VUaXRsZSI7czo4OiJNeSBTdWdhciI7fWk6MTthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo1OntpOjA7czozNjoiNmI2Mjk3MGItN2VhMC0yZWFlLTA0NjctNGI5OTg3OGFkZDU5IjtpOjE7czozNjoiMjMwYmJhYTctYWJmZC0yMWExLTc0N2MtNGFlZTAxZDFiYTY4IjtpOjI7czozNjoiZGMzNDc2OGUtOWY2YS1lMzg5LTlmZTItNGFmODcyZWExNmQ2IjtpOjM7czozNjoiMjMxOGVkMGUtYTg5ZC1kMzBlLTJjYzktNGFlZTAxOTBjNjg0IjtpOjQ7czozNjoiMmE0NjRjODUtNTBhOC1hYzAyLTk5ZDEtNGNjMjlmZjg5Y2E4Ijt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyMmVjNzJkYy03NjQ0LTJlNzEtNTA4Mi00YWVlMDE2MDI4YzAiO2k6MTtzOjM2OiI5MGFjOWVkZC05NTU0LWVlZTItNTZiYS00YmI5ZGI3ZTQ2MmYiO2k6MjtzOjM2OiJjZjliYjQ1NC1iMDQ5LWFjMDYtYmE5OS00YjE4MTk2MDQwZWUiO2k6MztzOjM2OiIyMmZjOTFkYi04OWFjLTdhMTYtMmJjNS00YWVlMDFjOWI5YmIiO2k6NDtzOjM2OiI1ZDdmNmIzMS1iNzJmLWU1ZWMtZTM1MS00ZDJlYzhkNWE4NjIiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czo5OiJwYWdlVGl0bGUiO3M6MTQ6IkRhc2hib2FyZCBIb21lIjt9fX0=';
	static private $emptyTabHash = 'YToyOntzOjg6ImRhc2hsZXRzIjthOjA6e31zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTowOnt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjA6e319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czo5OiJwYWdlVGl0bGUiO3M6ODoiTXkgU3VnYXIiO319fQ==';	
	
	static public function managePublishHomePageActions($mod_strings) {
		
		global $current_user, $sugar_config, $db, $current_language;

		
		//*******************************************//
		//***Override CurrentUser ID for Any Admin***//
		//*******************************************//
		$userCanManageHomePage = self::userCanManageHomePage();
		$currentUserId = ($userCanManageHomePage) ? "1" : $current_user->id;
	
		
		//*********************************************//
		//***Check if AlineaSol Domains is Installed***//
		//*********************************************//
		$homePageDomainVars = self::getHomePageDomainVars();
	
		$manageDomains = $homePageDomainVars["manageDomains"];
		$currentUserDomain = $homePageDomainVars["currentUserDomain"];
		
		
		if (((!$manageDomains) || ((!empty($currentUserDomain)))) && ((!isset($_REQUEST['update_domain']) || ($_REQUEST['update_domain'] != "removeDomain")))) {

			$manageDomainsWhere = "";
			$currentUserDomainId = "null";
			if ($manageDomains) {
				$manageDomainsWhere = " AND asol_domain_id='".$currentUserDomain."' ";
				$currentUserDomainId = "'".$currentUserDomain."'";
			}
		
			if (!isset($_REQUEST['asolRole'])) {
			
				$GLOBALS['log']->debug("******************************* ASOL: clicked on sugar HOME button");
				
				if ($userCanManageHomePage)
					$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab FROM roles_homepage WHERE role_id='default' AND user_owner='".$currentUserId."' AND custom_home=0".$manageDomainsWhere);
				else 
					$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab FROM roles_homepage WHERE user_owner='".$currentUserId."' AND custom_home=0".$manageDomainsWhere);
				
				$numTabsRow = $db->fetchByAssoc($queryNumTabs);
				
				if ($userCanManageHomePage)
					$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE role_id='default' AND user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."'".$manageDomainsWhere);
				else
					$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."' AND custom_home=0".$manageDomainsWhere);		
				$numTabsRow2 = $db->fetchByAssoc($queryNumTabs2);
			
			
				if ($userCanManageHomePage) {
			
					$landingHomePageRole = self::getLandingHomePageRoleId();
					$adminTabId = (!empty($numTabsRow2['min_id'])) ? $numTabsRow2['min_id'] : '1';
					
					$_REQUEST['changeHome'] = 'true';
					$_REQUEST['redirect'] = 'true';
					$_REQUEST['asolRole'] = $landingHomePageRole;
					$_REQUEST['asolRoleCopy'] = $landingHomePageRole;
					$_REQUEST['rolePriority'] = '0';
					$_REQUEST['tabId'] = $adminTabId;
					$_REQUEST['customHome'] = '0';
			
				} else {
				
					//Principalmente cargar el no custom, si no hubiese cargar el custom
					if (!empty($numTabsRow2['min_id'])) {
			
						$_REQUEST['changeHome'] = 'true';
						$_REQUEST['redirect'] = 'true';
						$_REQUEST['asolRole'] = '';
						$_REQUEST['asolRoleCopy'] = 'default';
						$_REQUEST['rolePriority'] = '0';
						$_REQUEST['tabId'] = $numTabsRow2['min_id'];
						$_REQUEST['customHome'] = '0';
					
					} else {
					
						$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab FROM roles_homepage WHERE user_owner='".$currentUserId."' AND custom_home=1".$manageDomainsWhere);
						$numTabsRow = $db->fetchByAssoc($queryNumTabs);
						$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."' AND custom_home=1".$manageDomainsWhere);		
						$numTabsRow2 = $db->fetchByAssoc($queryNumTabs2);
						
						
						$_REQUEST['changeHome'] = 'true';
						$_REQUEST['redirect'] = 'true';
						$_REQUEST['asolRole'] = '';
						$_REQUEST['asolRoleCopy'] = 'default';
						$_REQUEST['rolePriority'] = '0';
						$_REQUEST['tabId'] = $numTabsRow2['min_id'];
						$_REQUEST['customHome'] = '1';
					
					}
				
				}
			
			}
		
		
			//si se ha cambiado el rol del dropdown
			
			$GLOBALS['log']->debug("******************************* ASOL: asolRole");
			
			$queryHomeRoleUser = $db->query("SELECT role_id FROM roles_homepage WHERE user_owner='".$currentUserId."'".$manageDomainsWhere." LIMIT 1");
			$queryHomeRoleRow = $db->fetchByAssoc($queryHomeRoleUser);
			
			$newTabHash = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
			$emptyTabHash = self::$emptyTabHash;
			//Obtenemos los parametros de la peticion
			
			
			$asolRole = (!empty ($_REQUEST['asolRole'])) ? $_REQUEST['asolRole'] : $queryHomeRoleRow['role_id'];
			$asolRoleCopy = (isset($_REQUEST['asolRoleCopy'])) ? $_REQUEST['asolRoleCopy'] : null;
			$asolHideButtons = (!empty($_REQUEST['hideTabButtons'])) ? $_REQUEST['hideTabButtons'] : "true";
			$asolCustomHome = (isset($_REQUEST['customHome']) && $_REQUEST['customHome']) ? 1 : 0;
			$rolePriority = (isset($_REQUEST["rolePriority"])) ? $_REQUEST["rolePriority"] : '0';
			
			$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab, MAX(tab_order) as maxtab, MAX(tab_id) as maxId FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_id!=-1 AND custom_home=0".$manageDomainsWhere);
			$numTabsRow = $db->fetchByAssoc($queryNumTabs);
			
			if (empty($numTabsRow["min_tab"])) {
			
				$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab, MAX(tab_order) as maxtab, MAX(tab_id) as maxId FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_id!=-1 AND custom_home=1".$manageDomainsWhere);
				$numTabsRow = $db->fetchByAssoc($queryNumTabs);
			
			}
			
			$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."' AND custom_home=0".$manageDomainsWhere);		
			$numTabsRow2 = $db->fetchByAssoc($queryNumTabs2);
			
			
			$tabId = ((isset($_REQUEST['tabId'])) && (!empty($_REQUEST['tabId']))) ? $_REQUEST['tabId'] : $numTabsRow2['min_id'];
			
			$querySugarIdTab = $db->query("SELECT id FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_id='".$tabId."' AND custom_home=".$asolCustomHome.$manageDomainsWhere." LIMIT 1");
			$sugarIdRow = $db->fetchByAssoc($querySugarIdTab);
			$sugarId = $sugarIdRow['id'];
			
			//Obtenemos el home del usuario actual
			$adminHome = self::getAdminHome();
			
			if (isset($_REQUEST['changeHome'])) {
			
				//Obtenemos la fila de la BDD relativa al role y tab seleccionados
				$queryRoleSavedHome = $db->query("SELECT * FROM roles_homepage WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."' AND custom_home='".$asolCustomHome."'".$manageDomainsWhere);
				$queryRow = $db->fetchByAssoc($queryRoleSavedHome);
				
				$queryRoleCount = $db->query("SELECT count(id) as count FROM roles_homepage WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
				$queryRow2 = $db->fetchByAssoc($queryRoleCount);
				
				//Si no existe una entrada en dicho contenido para el role actual
				if ($queryRow2['count'] == 0) { //Esto solo ocurre con los roles, no con los tabs
			
					$GLOBALS['log']->debug("******************************* ASOL: entry not exists");
					
					//creamos una entrada para dicho role y la almacenamos en ambos ficheros
					if ($userCanManageHomePage) {
					
						if ($asolRole == 'default')
							$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '1', '".$mod_strings['LBL_MAIN_TAB']."', '1', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', 0, 0, '".$adminHome."', '".$adminHome."', ".$currentUserDomainId.")");
						else
							$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '1', '".$mod_strings['LBL_MAIN_TAB']."', '1', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', 0, 0, '".$newTabHash."', '', ".$currentUserDomainId.")");
							
					} else {
			
						$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', 'default', '1', '".$mod_strings['LBL_MAIN_CUSTOM_TAB']."', '1', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', 0, 1, '".$adminHome."', '', ".$currentUserDomainId.")");
						//assign no mostrar delete
						$_REQUEST['oneCustomTab'] = true;
					
					}
						
					if ($userCanManageHomePage)
						$_REQUEST['tabName'] = $mod_strings['LBL_MAIN_TAB'];
					else 
						$_REQUEST['tabName'] = $mod_strings['LBL_MAIN_CUSTOM_TAB'];
					
					$_REQUEST['hideTabButtons'] = $asolHideButtons;
					
			
				} else {//Si existe esa entrada...
			
					$GLOBALS['log']->debug("******************************* ASOL: entry exists");
					
					//Obtenemos el contenido de dicha entrada
					$rolePriority = (isset($_REQUEST['rolePriority'])) ? $_REQUEST['rolePriority'] : $queryRow['home_priority'];
					$userPrefs = unserialize(base64_decode($queryRow['home_hash_stored']));
			
					//Actualizamos las preferencias del usuario admin (el actual) para que pueda visualizar el cambio de homePage
					$current_user->setPreference('dashlets', $userPrefs['dashlets'], 0, 'Home');
					$current_user->setPreference('pages', $userPrefs['pages'], 0, 'Home');
			
					//Recargamos la pagina actual para visualizar dichos cambios
					
						
					if (isset($_REQUEST['redirect'])) {
					
						//FixUp for Domains and PublishhomePage Compatibility
						if (isset($_SESSION['startUpDomainSelectionDiv']))
							$_SESSION['startUpDomainSelectionDiv'] = true;
						$domainLoginError = ((isset($_REQUEST['domainLoginError'])) && ($_REQUEST['domainLoginError'] == 'true')) ? "&domainLoginError=true" : "";
						//FixUp for Domains and PublishhomePage Compatibility
						
						SugarApplication::redirect("index.php?module=Home&action=index&changeHome=true&asolRole=$asolRole&asolRoleCopy=$asolRoleCopy&rolePriority=$rolePriority&tabId=$tabId&hideTabButtons=$asolHideButtons&customHome=$asolCustomHome".$domainLoginError);
							
					} else {
						
						//FixUp for Domains and PublishhomePage Compatibility
						if (isset($_SESSION['startUpDomainSelectionDiv']))
							unset($_SESSION['startUpDomainSelectionDiv']);
						//FixUp for Domains and PublishhomePage Compatibility
					
					}
					
					
					$_REQUEST['tabName'] = $queryRow['tab_name'];
					
				
				}
				
			}
			
				
			if (isset($_REQUEST['asolPublishHome'])) {
			
				//*****************************//
				//***Publish PublishHomePage***//
				//*****************************//
				self::publishHomePagePublish($mod_strings, $asolRole, $adminHome, $tabId, $currentUserId, $currentUserDomain, $manageDomains, $currentUserDomainId, $manageDomainsWhere);
			
			}
					
			if (isset($_REQUEST['asolSaveHome'])) { //Save de un roleHomePage
			
				//****************************//
				//****Save PublishHomePage****//
				//****************************//
				self::publishHomePageSave($mod_strings, $asolHideButtons, $adminHome, $asolRole, $tabId, $currentUserId, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere);
				
			}
			
			if (isset($_REQUEST['asolChangePriority'])) {
			
				//********************************//
				//****Priority PublishHomePage****//
				//********************************//
				self::publishHomePagePriority($mod_strings, $asolHideButtons, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere);
			
			}
			
			if (isset($_REQUEST['asolManageTabs'])) {
			
				//***********************************//
				//****Manage Tabs PublishHomePage****//
				//***********************************//
				self::publishHomePageManageTabs($mod_strings, $asolHideButtons, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere);
				
			}
			
			if (isset($_REQUEST['asolDuplicateHome'])) {
				
				//*********************************//
				//****Duplicate PublishHomePage****//
				//*********************************//
				self::publishHomePageDuplicate($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $rolePriority, $adminHome, $currentUserId, $manageDomains, $currentUserDomainId, $manageDomainsWhere);
							
			}
			
			if (isset($_REQUEST['asolDeleteHome'])) {
			
				//******************************//
				//****Delete PublishHomePage****//
				//******************************//
				self::publishHomePageDelete($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $tabId, $currentUserId, $asolCustomHome, $manageDomainsWhere);
				
			}
			
			if (isset($_REQUEST['copy'])) { //Borrar las entradas del rol distino y duplicar las de origen con el rol destino
			
				//****************************//
				//****Copy PublishHomePage****//
				//****************************//
				self::publishHomePageCopy($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $currentUserId, $manageDomains, $currentUserDomain, $currentUserDomainId, $manageDomainsWhere);
				
			}
					
			if (isset($_REQUEST['newtab'])) {
			
				//*******************************//
				//****New Tab PublishHomePage****//
				//*******************************//
				self::publishHomePageNewTab($mod_strings, $asolRole, $asolRoleCopy, $rolePriority, $asolHideButtons, $currentUserId, $manageDomains, $currentUserDomainId, $manageDomainsWhere);
				
			}
			
			
			$customs = array();
			$queryOneCustom = $db->query("SELECT custom_home FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			while ($queryOneRow = $db->fetchByAssoc($queryOneCustom)){
				$customs[] = $queryOneRow;
			}
			
			if ((count($customs) == 1) && ($customs[0]["custom_home"] == "1"))
				$_REQUEST['oneCustomTab'] = true;
				
			//********ASOL publish home module
		
		}
		
	}
	
	static private function getAdminHome() {
		
		global $current_user, $db;
		
		$queryAdminHome = $db->query("SELECT contents FROM user_preferences WHERE category='Home' AND assigned_user_id='".$current_user->id."' AND deleted=0");
		$queryRow = $db->fetchByAssoc($queryAdminHome);

		return $queryRow['contents'];
		
	}
	
	static private function getHomePageDomainVars() {
			
		global $db, $current_user;
		
		$domainsQuery = $db->query("SELECT DISTINCT id_name FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
		$manageDomains = ($domainsQuery->num_rows > 0);
		
		$currentUserDomain = null;
		$userCanManageHomePage = self::userCanManageHomePage();
		
		if ($manageDomains) {
		
			if ($userCanManageHomePage) {
				if (isset($_REQUEST['update_domain'])) {
					$currentUserDomain = $_REQUEST['update_domain'];
					//Avoid to publish, delete, save or copy Homepages from other Domains!
					unset($_REQUEST['asolPublishHome']); unset($_REQUEST['asolSaveHome']); 
					unset($_REQUEST['asolChangePriority']);	unset($_REQUEST['asolManageTabs']);
					unset($_REQUEST['asolDuplicateHome']); unset($_REQUEST['asolDeleteHome']);
					unset($_REQUEST['copy']); unset($_REQUEST['newtab']);
					
					$_REQUEST['changeHome'] = 'true';
					$_REQUEST['redirect'] = 'true';
					
				} else {
					$currentUserDomain = $current_user->asol_default_domain;
				}
			} else {
				$currentUserDomain = $current_user->asol_domain_id;
			}
				
		}
		
		return array(
			"manageDomains" => $manageDomains,
			"currentUserDomain" => $currentUserDomain
		);
		
	}
	
	static public function publishHomePagePublish($mod_strings, $asolRole, $adminHome, $tabId, $currentUserId, $currentUserDomain, $manageDomains, $currentUserDomainId, $manageDomainsWhere, $update = true) {
		
		global $sugar_config, $current_user, $db;
		
		if ($asolRole == 'default') {
			
			if ($update) {
				//guardamos en la BDD la configuracion del tab actual
				$db->query("UPDATE roles_homepage SET home_hash_stored='".$adminHome."', home_hash_published='".$adminHome."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			}
			
			//UPDATE BDD: obtenemos los usuarios sin role alguno y sobreescribimos sus tabs
			$ids = array();
			
			if ($manageDomains)
				$queryUserRoleLess = $db->query("SELECT id FROM users WHERE id NOT IN (SELECT DISTINCT user_id FROM acl_roles_users WHERE deleted=0) AND id!='1' AND asol_domain_id='".$current_user->asol_default_domain."'");
			else
				$queryUserRoleLess = $db->query("SELECT id FROM users WHERE id NOT IN (SELECT DISTINCT user_id FROM acl_roles_users WHERE deleted=0) AND id!='1'");
			
			while($queryRow = $db->fetchByAssoc($queryUserRoleLess))
				$ids[] = $queryRow['id'];
	
			//Obtenemos los tabs actuales del admin
			$tabs = array();
			$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_stored FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
				$tabs[] = $queryRow;
			
			//Actualizamos los tabs publicados
			foreach ($tabs as $tab)
				$db->query("UPDATE roles_homepage SET date_modified='".gmdate('Y-m-d H:i:s')."', home_hash_published='".$tab['home_hash_stored']."' WHERE id='".$tab['id']."'".$manageDomainsWhere);
			
				
			foreach ($ids as $id) {
							
				//si no tiene nada publicado todav?a, guardamos el homepage actual para ese usuario como Main custom Tab
				$queryUserAddCustomTab = $db->query("SELECT COUNT(id) as the_count FROM roles_homepage WHERE user_owner='".$id."'".$manageDomainsWhere);
				$queryRow = $db->fetchByAssoc($queryUserAddCustomTab);
				
				if ($queryRow['the_count'] == 0){
				
					$queryUserCurrentHomePage = $db->query("SELECT contents FROM user_preferences WHERE category='Home' AND assigned_user_id='".$id."' AND deleted=0 ORDER BY date_modified DESC LIMIT 1");
					$queryRow2 = $db->fetchByAssoc($queryUserCurrentHomePage);
					$userHome = $queryRow2['contents'];
	
					if (empty($userHome))
						$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
					else {
						$sugarEmpty = unserialize(base64_decode($userHome));
						if (empty($sugarEmpty['dashlets'])){
							$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
							$db->query("UPDATE user_preferences SET contents='".$userHome."' WHERE assigned_user_id='".$id."' AND category='Home'");	
						}
					}
					
					//Si rolehomepage cadena vacia, insert ome vacio controlado
					$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', -1, '".$mod_strings["LBL_MAIN_CUSTOM_TAB"]."', '1', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '0', 1, '".$userHome."', '', ".$currentUserDomainId.")");
					
				} 
				
				
				//Borrar sus tabs previos que no sean custom
				$db->query("DELETE FROM roles_homepage WHERE user_owner='".$id."' AND custom_home=0".$manageDomainsWhere);
				
				//Cambiamos el rol de los tabs que si sean custom al nuevo rol
				$db->query("UPDATE roles_homepage SET role_id='".$asolRole."' WHERE user_owner='".$id."' AND custom_home=1".$manageDomainsWhere);
			
				foreach ($tabs as $tab)
					$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_stored']."', '', ".$currentUserDomainId.")");
			
			}	
				
			$domainAppendedText = "";
			if ($manageDomains) {
				$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
				$domainNameRow = $db->fetchByAssoc($domainNameRs);
				$domainAppendedText = " (".$domainNameRow['name'].")";
			}
			$_REQUEST['infoMessage'] =  $mod_strings['LBL_PUBLISHED_HOME_NONE'].$domainAppendedText.".";
	
		} else if ($asolRole == 'all') {
	
			if ($update) {
				//guardamos en la BDD la configuracion del tab actual
				$db->query("UPDATE roles_homepage SET home_hash_stored='".$adminHome."', home_hash_published='".$adminHome."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			}
			
			//UPDATE BDD Solo si el rol a actualizar es de mayor prioridad que el actual
			$ids = Array();
			
			if ($manageDomains)
				$queryUser = $db->query('SELECT id FROM users WHERE id!="1" AND asol_domain_id="'.$current_user->asol_default_domain.'"');
			else
				$queryUser = $db->query('SELECT id FROM users WHERE id!="1"');
				
			
			while($queryRow = $db->fetchByAssoc($queryUser))
				$ids[] = $queryRow['id'];
				
			//Obtenemos los tabs actuales del admin
			$tabs = Array();
			$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_stored FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
				$tabs[] = $queryRow;
				
			//Actualizamos los tabs publicados
			foreach ($tabs as $tab)
				$db->query("UPDATE roles_homepage SET date_modified='".gmdate('Y-m-d H:i:s')."', home_hash_published='".$tab['home_hash_stored']."' WHERE id='".$tab['id']."'".$manageDomainsWhere);
	
			foreach ($ids as $id){
			
				//si no tiene nada publicado todav?a, guardamos el homepage actual para ese usuario como Main custom Tab
				$queryUserAddCustomTab = $db->query("SELECT COUNT(id) as the_count FROM roles_homepage WHERE user_owner='".$id."'".$manageDomainsWhere);
				$queryRow = $db->fetchByAssoc($queryUserAddCustomTab);
				
				if ($queryRow['the_count'] == 0){
				
					$queryUserCurrentHomePage = $db->query("SELECT contents FROM user_preferences WHERE category='Home' AND assigned_user_id='".$id."' AND deleted=0 ORDER BY date_modified DESC LIMIT 1");
					$queryRow = $db->fetchByAssoc($queryUserCurrentHomePage);
					$userHome = $queryRow['contents'];
					
					if (empty($userHome))
						$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
					else {
						$sugarEmpty = unserialize(base64_decode($userHome));
						if (empty($sugarEmpty['dashlets'])){
							$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
							$db->query("UPDATE user_preferences SET contents='".$userHome."' WHERE assigned_user_id='".$id."' AND category='Home'");	
						}
					}
	
					$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', -1, '".$mod_strings["LBL_MAIN_CUSTOM_TAB"]."', '1', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '0', 1, '".$userHome."', '', ".$currentUserDomainId.")");
					
				}
				
			
				//Borrar sus tabs previos que no sean custom
				$db->query("DELETE FROM roles_homepage WHERE user_owner='".$id."' AND custom_home=0".$manageDomainsWhere);
				
				//Cambiamos el rol de los tabs que si sean custom al nuevo rol
				$db->query("UPDATE roles_homepage SET role_id='".$asolRole."' WHERE user_owner='".$id."' AND custom_home=1".$manageDomainsWhere);
				
				foreach ($tabs as $tab)
					$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_stored']."', '', ".$currentUserDomainId.")");
					
			}
				
			$domainAppendedText = "";
			if ($manageDomains) {
				$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
				$domainNameRow = $db->fetchByAssoc($domainNameRs);
				$domainAppendedText = " (".$domainNameRow['name'].")";
			}
			$_REQUEST['infoMessage'] =  $mod_strings['LBL_PUBLISHED_HOME_ALL'].$domainAppendedText.".";
	
		} else {
	
			if ($update) {
				//guardamos en la BDD la configuracion del tab actual
				$db->query("UPDATE roles_homepage SET home_hash_stored='".$adminHome."', home_hash_published='".$adminHome."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			}
			
			//UPDATE BDD Solo si el rol a actualizar es de mayor prioridad que el actual
			$ids = Array();
			
			if ($manageDomains)
				$queryUserRole = $db->query("SELECT users.id FROM users LEFT JOIN acl_roles_users ON users.id=acl_roles_users.user_id WHERE acl_roles_users.role_id='".$asolRole."' AND acl_roles_users.user_id!='1' AND acl_roles_users.deleted='0' AND users.asol_domain_id='".$current_user->asol_default_domain."'");
			else
				$queryUserRole = $db->query("SELECT users.id FROM users LEFT JOIN acl_roles_users ON users.id=acl_roles_users.user_id WHERE acl_roles_users.role_id='".$asolRole."' AND acl_roles_users.user_id!='1' AND acl_roles_users.deleted='0'");
			
			
			while($queryRow = $db->fetchByAssoc($queryUserRole))
				$ids[] = $queryRow['id'];
	
				
			//Obtenemos los tabs actuales del admin
			$tabs = Array();
			$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_stored FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
			while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
				$tabs[] = $queryRow;
				
			//Actualizamos los tabs publicados
			foreach ($tabs as $tab)
				$db->query("UPDATE roles_homepage SET date_modified='".gmdate('Y-m-d H:i:s')."', home_hash_published='".$tab['home_hash_stored']."' WHERE id='".$tab['id']."'".$manageDomainsWhere);
				
				
			foreach ($ids as $id){
	
				//Obtener roles del usuario y publicar solo aquel homepage de mayor prioridad.
				$idsRoles = Array();
				$queryUserRoles = $db->query("SELECT DISTINCT role_id FROM acl_roles_users WHERE user_id='".$id."' AND deleted='0'");
				while($queryRow = $db->fetchByAssoc($queryUserRoles))
					$idsRoles[count($idsRoles)] = $queryRow['role_id'];
	
				//Calcular el rol de mayor prioridad
				$oldPriority = 0;
				$maxRole = '';
				foreach ($idsRoles as $idRole) {
	
					$queryUserMaxRoles = $db->query("SELECT home_priority FROM roles_homepage WHERE role_id='".$idRole."'".$manageDomainsWhere);
					$queryUserMaxRow = $db->fetchByAssoc($queryUserMaxRoles);
	
					if ($queryUserMaxRow['home_priority'] >= $oldPriority)
						$maxRole = $idRole;
	
					$oldPriority = $queryUserMaxRow['home_priority'];
	
				}
	
				//obtener tabs para el rol obtenido
				//Obtenemos los tabs actuales del admin
				$tabs = Array();
				$queryUserAdminTabs = $db->query("SELECT id, role_id, tab_id, tab_name, tab_order, home_priority, home_hash_stored FROM roles_homepage WHERE role_id='".$maxRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
				while($queryRow = $db->fetchByAssoc($queryUserAdminTabs))
					$tabs[] = $queryRow;
					
				
				if ($maxRole == $asolRole) {
				
					
					//si no tiene nada publicado todav?a, guardamos el homepage actual para ese usuario como Main custom Tab
					$queryUserAddCustomTab = $db->query("SELECT COUNT(id) as the_count FROM roles_homepage WHERE user_owner='".$id."'".$manageDomainsWhere);
					$queryRow = $db->fetchByAssoc($queryUserAddCustomTab);
					
					if ($queryRow['the_count'] == 0){
					
						$queryUserCurrentHomePage = $db->query("SELECT contents FROM user_preferences WHERE category='Home' AND assigned_user_id='".$id."' AND deleted=0 ORDER BY date_modified DESC LIMIT 1");
						$queryRow = $db->fetchByAssoc($queryUserCurrentHomePage);
						$userHome = $queryRow['contents'];
						
						if (empty($userHome))
							$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
						else {
							$sugarEmpty = unserialize(base64_decode($userHome));
							if (empty($sugarEmpty['dashlets'])){
								$userHome = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
								$db->query("UPDATE user_preferences SET contents='".$userHome."' WHERE assigned_user_id='".$id."' AND category='Home'");	
							}
						}

						$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', -1, '".$mod_strings["LBL_MAIN_CUSTOM_TAB"]."', '1', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '0', 1, '".$userHome."', '', ".$currentUserDomainId.")");
						
					}
					
				
					//Borrar sus tabs previos que no sean custom
					$db->query("DELETE FROM roles_homepage WHERE user_owner='".$id."' AND custom_home=0".$manageDomainsWhere);
					
					//Cambiamos el rol de los tabs que si sean custom al nuevo rol
					$db->query("UPDATE roles_homepage SET role_id='".$asolRole."' WHERE user_owner='".$id."' AND custom_home=1".$manageDomainsWhere);
					
					foreach ($tabs as $tab) {
						if ($manageDomains)
							$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_stored']."', '', '".$current_user->asol_default_domain."')");
						else
							$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published) VALUES ('".create_guid()."', '".$asolRole."', '".$tab['tab_id']."', '".$tab['tab_name']."', '".$tab['tab_order']."', '".$id."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$tab['home_priority']."', 0, '".$tab['home_hash_stored']."', '')");
					}
					
				}
					
			}
	
			$domainAppendedText = "";
			if ($manageDomains) {
				$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
				$domainNameRow = $db->fetchByAssoc($domainNameRs);
				$domainAppendedText = " (".$mod_strings['LBL_DOMAIN'].": ".$domainNameRow['name'].")";
			}
			$_REQUEST['infoMessage'] =  $mod_strings['LBL_PUBLISHED_HOME'].$domainAppendedText.".";
	
		}

		
		$_REQUEST['hideTabButtons'] = $asolHideButtons;
		$_REQUEST['customHome'] = $asolCustomHome;
		
	}
	
	static private function publishHomePageSave($mod_strings, $asolHideButtons, $adminHome, $asolRole, $tabId, $currentUserId, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere) {
				
		global $db;
		
		$tabName = $_REQUEST['tabName'];
		
		$db->query("UPDATE roles_homepage SET tab_name='".$tabName."', home_hash_stored='".$adminHome."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."' AND custom_home='".$asolCustomHome."'".$manageDomainsWhere);
		
		$domainAppendedText = "";
		if ($manageDomains) {
			$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
			$domainNameRow = $db->fetchByAssoc($domainNameRs);
			$domainAppendedText = " (".$domainNameRow['name'].")";
		}
		
		$_REQUEST['infoMessage'] =  $mod_strings['LBL_HOMEPAGE_ROLE_SAVED'].$domainAppendedText.".";
		
	}
	
	static private function publishHomePagePriority($mod_strings, $asolHideButtons, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere) {
				
		global $db, $mod_strings;
		
		$tabName = $_REQUEST['tabName'];
		$priorities = explode("\${Y}", $_REQUEST['newPriorities']);
		
		foreach ($priorities as $priority){
			$prioritieValues = explode("\${X}", $priority);
			$db->query("UPDATE roles_homepage SET home_priority='".$prioritieValues[1]."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE role_id='".$prioritieValues[0]."'".$manageDomainsWhere);
		}
			
		$domainAppendedText = "";
		
		if ($manageDomains) {
	
			$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
			$domainNameRow = $db->fetchByAssoc($domainNameRs);
			$domainAppendedText = " (".$domainNameRow['name'].")";
		
		}
		
		$_REQUEST['infoMessage'] =  $mod_strings['LBL_HOMEPAGE_ROLE_SAVED'].$domainAppendedText.".";
		
	}
	
	static private function publishHomePageManageTabs($mod_strings, $asolHideButtons, $asolCustomHome, $manageDomains, $currentUserDomain, $manageDomainsWhere) {
					
		global $db;
	
		$orders = explode("\${Y}", $_REQUEST['newOrders']);
		$names = explode("\${Y}", $_REQUEST['newNames']);
		
		foreach ($orders as $order){
			$orderValues = explode("\${X}", $order);
			$db->query("UPDATE roles_homepage SET tab_order='".$orderValues[1]."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE id='".$orderValues[0]."'".$manageDomainsWhere);
		}
		
		foreach ($names as $key => $name){
			$nameValues = explode("\${X}", $name);
			if ($_REQUEST['tabId'] == ($key + 1))
				$_REQUEST['tabName'] = $nameValues[1];
			$db->query("UPDATE roles_homepage SET tab_name='".$nameValues[1]."', date_modified='".gmdate('Y-m_d H:i:s')."' WHERE id='".$nameValues[0]."'".$manageDomainsWhere);	
		}
	
		$domainAppendedText = "";
		
		if ($manageDomains) {
			
			$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
			$domainNameRow = $db->fetchByAssoc($domainNameRs);
			$domainAppendedText = " (".$domainNameRow['name'].")";
		
		}
		
		$_REQUEST['infoMessage'] =  $mod_strings['LBL_HOMEPAGE_ROLE_SAVED'].$domainAppendedText.".";
		
	}
	
	static private function publishHomePageDuplicate($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $rolePriority, $adminHome, $currentUserId, $manageDomains, $currentUserDomainId, $manageDomainsWhere) {
	
		global $db, $current_user;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$GLOBALS['log']->fatal("ASOL [".$manageDomains."]");
		
		$queryNumTabs = $db->query("SELECT MIN(tab_order) as min_tab, MAX(tab_order) as maxtab, MAX(tab_id) as maxId FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_id!=-1".$manageDomainsWhere);
		$numTabsRow = $db->fetchByAssoc($queryNumTabs);
		
		$customTab = ($userCanManageHomePage) ? '0' : '1';
		
		if ($manageDomains)
			$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '".($numTabsRow['maxId']+1)."', '".$mod_strings['LBL_COPY_OF']." ".$_REQUEST['tabName']."', '".($numTabsRow['maxtab']+1)."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$rolePriority."', ".$customTab.", '".$adminHome."', '', ".$currentUserDomainId.")");
		else
			$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published) VALUES ('".create_guid()."', '".$asolRole."', '".($numTabsRow['maxId']+1)."', '".$mod_strings['LBL_COPY_OF']." ".$_REQUEST['tabName']."', '".($numTabsRow['maxtab']+1)."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$rolePriority."', ".$customTab.", '".$adminHome."', '')");
		SugarApplication::redirect("index.php?module=Home&action=index&changeHome=true&redirect=true&asolRole=".$asolRole."&tabId=".($numTabsRow['maxId']+1)."&asolRoleCopy=".$asolRoleCopy."&hideTabButtons=".$asolHideButtons."&customHome=".$customTab."&rolePriority=".$rolePriority);
	
	}
				
	static private function publishHomePageDelete($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $tabId, $currentUserId, $asolCustomHome, $manageDomainsWhere) {
	
		global $db;
	
		$db->query("DELETE FROM roles_homepage WHERE role_id='".$asolRole."' AND tab_id='".$tabId."' AND user_owner='".$currentUserId."' AND custom_home='".$asolCustomHome."'".$manageDomainsWhere);
		
		$queryNumTabs = $db->query("SELECT id, MIN(tab_order) as min_tab, MAX(tab_order) as maxtab FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND custom_home=0".$manageDomainsWhere);
		$numTabsRow = $db->fetchByAssoc($queryNumTabs);
		$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."' AND custom_home='0'".$manageDomainsWhere);		
		$numTabsRow2 = $db->fetchByAssoc($queryNumTabs2);
	
		$asolCustomHome = '0';
		
		if (empty($numTabsRow2['min_id'])) {
		
			$queryNumTabs = $db->query("SELECT id, MIN(tab_order) as min_tab, MAX(tab_order) as maxtab FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND custom_home=1".$manageDomainsWhere);
			$numTabsRow = $db->fetchByAssoc($queryNumTabs);
			$queryNumTabs2 = $db->query("SELECT tab_id as min_id FROM roles_homepage WHERE user_owner='".$currentUserId."' AND tab_order='".$numTabsRow['min_tab']."' AND custom_home=1".$manageDomainsWhere);		
			$numTabsRow2 = $db->fetchByAssoc($queryNumTabs2);
		
			$asolCustomHome = '1';
		
		}
		
		SugarApplication::redirect("index.php?module=Home&action=index&changeHome=true&redirect=true&asolRole=".$asolRole."&tabId=".$numTabsRow2['min_id']."&asolRoleCopy=".$asolRoleCopy."&hideTabButtons=".$asolHideButtons."&customHome=".$asolCustomHome);
	
	}
	
	static private function publishHomePageCopy($mod_strings, $asolRole, $asolRoleCopy, $asolHideButtons, $currentUserId, $manageDomains, $currentUserDomain, $currentUserDomainId, $manageDomainsWhere) {
		
		global $db;
		
		$db->query("DELETE FROM roles_homepage WHERE role_id='".$asolRoleCopy."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
	
		$queryRoleSavedHomeCopy = $db->query("SELECT * FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
		
		while ($queryRowCopy = $db->fetchByAssoc($queryRoleSavedHomeCopy)){
	
			if ($manageDomains)
				$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRoleCopy."', '".$queryRowCopy['tab_id']."', '".$queryRowCopy['tab_name']."', '".$queryRowCopy['tab_order']."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', 0, 0, '".$queryRowCopy['home_hash_stored']."', '', ".$currentUserDomainId.")");
			else
				$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published) VALUES ('".create_guid()."', '".$asolRoleCopy."', '".$queryRowCopy['tab_id']."', '".$queryRowCopy['tab_name']."', '".$queryRowCopy['tab_order']."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', 0, 0, '".$queryRowCopy['home_hash_stored']."', '')");
				
		}
		
		$_REQUEST['hideTabButtons'] = $asolHideButtons;
		
		$domainAppendedText = "";
		
		if ($manageDomains) {
			
			$domainNameRs = $db->query("SELECT name FROM asol_domains WHERE id='".$currentUserDomain."' LIMIT 1");
			$domainNameRow = $db->fetchByAssoc($domainNameRs);
			$domainAppendedText = " (".$domainNameRow['name'].")";
		
		}
		
		$_REQUEST['infoMessage'] =  $mod_strings['LBL_COPIED_HOME'].$domainAppendedText.".";
		
	}
	
	static private function publishHomePageNewTab($mod_strings, $asolRole, $asolRoleCopy, $rolePriority, $asolHideButtons, $currentUserId, $manageDomains, $currentUserDomainId, $manageDomainsWhere) {
				
		global $db, $sugar_config, $current_user;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$newTabHash = (isset($sugar_config['AlineaSolPublishHomePageNewTabHash'])) ? $sugar_config['AlineaSolPublishHomePageNewTabHash'] : self::$newTabHash;
		
		$queryNumTabs = $db->query("SELECT MAX(tab_order) as maxtab, MAX(tab_id) as maxId FROM roles_homepage WHERE role_id='".$asolRole."' AND user_owner='".$currentUserId."' AND tab_id!=-1".$manageDomainsWhere);
		$numTabsRow = $db->fetchByAssoc($queryNumTabs);
		
		$customTab = ($userCanManageHomePage) ? '0' : '1';
		if ($manageDomains)
			$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published, asol_domain_id) VALUES ('".create_guid()."', '".$asolRole."', '".($numTabsRow['maxId']+1)."', '".urldecode($_REQUEST['newtab'])."', '".($numTabsRow['maxtab']+1)."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$rolePriority."', ".$customTab.", '".$newTabHash."', '', ".$currentUserDomainId.")");
		else 
			$db->query("INSERT INTO roles_homepage (id, role_id, tab_id, tab_name, tab_order, user_owner, date_entered, date_modified, home_priority, custom_home, home_hash_stored, home_hash_published) VALUES ('".create_guid()."', '".$asolRole."', '".($numTabsRow['maxId']+1)."', '".urldecode($_REQUEST['newtab'])."', '".($numTabsRow['maxtab']+1)."', '".$currentUserId."', '".gmdate('Y-m_d H:i:s')."', '".gmdate('Y-m_d H:i:s')."', '".$rolePriority."', ".$customTab.", '".$newTabHash."', '')");
		
		SugarApplication::redirect("index.php?module=Home&action=index&changeHome=true&redirect=true&asolRole=".$asolRole."&tabId=".($numTabsRow['maxId']+1)."&asolRoleCopy=".$asolRoleCopy."&rolePriority=".$rolePriority."&hideTabButtons=".$asolHideButtons."&customHome=".$customTab);
	
	}
	
	
	static public function getManagementHomePageHtml($mod_strings) {
		
		global $db, $current_user, $theme, $app_strings;
	
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$returnedHtml = '';
		
		//*********************************//
		//***Is Domains Module Installed***//
		//*********************************//
		$domainsQuery = $db->query("SELECT DISTINCT id_name FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
		$manageDomains = ($domainsQuery->num_rows > 0);
				
		$currentUserDomain= null;
				
		if ($manageDomains) {
			if ($userCanManageHomePage)
				$currentUserDomain = (isset($_REQUEST['update_domain'])) ? $_REQUEST['update_domain'] : $current_user->asol_default_domain;
			else
				$currentUserDomain = $current_user->asol_domain_id;
		}
				
		if (($_REQUEST['module'] == 'Home') && ($_REQUEST['action'] == 'index')) {
		
			if ($userCanManageHomePage) {
				
				$tabId = (isset($_REQUEST['tabId'])) ? $_REQUEST['tabId'] : null;
	
				if (((!$manageDomains) || ((!empty($currentUserDomain)))) && ((!isset($_REQUEST['update_domain']) || ($_REQUEST['update_domain'] != "removeDomain")))) {
	
					//**********************************//
					//***Get Roles HomePage DropDowns***//
					//**********************************//
					$homePageRolesDropDowns = self::getHomePageRolesDropDowns($manageDomains);
					
					$opts = $homePageRolesDropDowns['opts'];
					$optsCopy = $homePageRolesDropDowns['optsCopy'];
					
					
					//***********************************//
					//***Get Roles HomePage Priorities***//
					//***********************************//
					$rolesPriorities = self::getRolesPriorities($manageDomains);
				
					
				
					$returnedHtml .= '
					<div style="position: absolute; visibility: hidden; z-index: 1000; left: 260px; top: 160px; background-image: none;" id="asolHoverDiv">
			
						<table cellspacing="0" cellpadding="1" border="0" width="220" class="olBgClass">
							<tbody>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr>
													<td width="100%" class="olCgClass">
														<div class="olCapFontClass">
															<div style="float: left;"><b>'.$mod_strings['LBL_ROLES_PRIORITIES'].'</b></div>
																<a onclick="javascript: document.getElementById(\'asolHoverDiv\').style.visibility=\'hidden\';" title="Close">
																	<span style="color: rgb(238, 238, 255); font-family: Verdana,Arial,Helvetica; font-size: 67%; text-decoration: underline;">
																		<div style="float: right;">
																			<img OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'" border="0" src="themes/Sugar5/images/close.gif" style="margin-left: 2px; margin-right: 2px;">
																		</div>
																	</span>
																</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr><td><b>'.$mod_strings['LBL_ROLE_NAME'].'</b></td><td><b>'.$mod_strings['LBL_ROLE_PRIORITY'].'</b></td></tr>
												';
										
											foreach($rolesPriorities as $rolesPriority){
											
												$returnedHtml .= "<tr><td>".$rolesPriority['name']."</td><td><input id='".$rolesPriority['id']."_priority' name='".$rolesPriority['id']."_priority' value='".$rolesPriority['priority']."'></td></tr>";
											
											}
							
					$returnedHtml .= '
											</tbody>
										</table>
														
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr>
												<td>
					';
												
												if (($_REQUEST['asolRole'] != 'default') && ($_REQUEST['asolRole'] != 'all'))
													$returnedHtml .= '<button onClick="var tabId = document.getElementById(\'tabId\').value; var tabName = document.getElementById(\'tabname\').value; var customHome = document.getElementById(\'customHome\').value; var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'roleSelect\').value; var rolePriority = document.getElementById(\''.$_REQUEST['asolRole'].'_priority\').value; var roleCopy = document.getElementById(\'roleCopy\').value; ';
												else
													$returnedHtml .= '<button onClick="var tabId = document.getElementById(\'tabId\').value; var tabName = document.getElementById(\'tabname\').value; var customHome = document.getElementById(\'customHome\').value; var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'roleSelect\').value; var roleCopy = document.getElementById(\'roleCopy\').value; ';
												
												if (($_REQUEST['asolRole'] != 'default') && ($_REQUEST['asolRole'] != 'all'))
													$returnedHtml .= 'document.location=\'index.php?module=Home&action=index&asolChangePriority=true&rolePriority=\'+rolePriority+\'&asolRoleCopy=\'+roleCopy+\'&asolRole=\'+role+\'&hideTabButtons=\'+hideTabButtons+\'&tabId=\'+tabId+\'&tabName=\'+tabName+\'&customHome=\'+customHome+\'';
												else
													$returnedHtml .= 'document.location=\'index.php?module=Home&action=index&asolChangePriority=true&rolePriority=0&asolRoleCopy=\'+roleCopy+\'&asolRole=\'+role+\'&hideTabButtons=\'+hideTabButtons+\'&tabId=\'+tabId+\'&tabName=\'+tabName+\'&customHome=\'+customHome+\'';
										
												$url_priorities = "&newPriorities=";
												
												foreach($rolesPriorities as $rolesPriority){ 
													$url_priorities .= $rolesPriority['id']."\${X}'+document.getElementById('".$rolesPriority['id']."_priority').value+'\${Y}";
												}
												
												$url_priorities = substr($url_priorities, 0, -6);
												
												$returnedHtml .= $url_priorities;
												
												$returnedHtml .= '" style="float:right;">'.$mod_strings["LBL_SAVE_TAB"].'</button>
												</td>
												</tr>
											</tbody>
										</table>
										
									</td>
								</tr>
							</tbody>
						</table>
			
					</div>'
					;
				
					$returnedHtml .= '
					<div class="headerList" id="shortcuts">
				
						<b style="white-space: nowrap;">'.$app_strings['LBL_LINK_ACTIONS'].':&nbsp;&nbsp;</b>
				
						';
						
						
						$returnedHtml .= $mod_strings['LBL_HOMEPAGE_ROLE'].':&nbsp;<select id="roleSelect" onChange="var customHome = getElementById(\'customHome\').value; var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; var role = this.value; document.location=\'index.php?module=Home&action=index&changeHome=true&redirect=true&asolRole=\'+role+\'&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$opts.'</select>&nbsp;&nbsp;
						
						'.$mod_strings['LBL_ROLE_PRIORITY'].':&nbsp;
						';
						
						if (($_REQUEST['asolRole'] != 'default') && ($_REQUEST['asolRole'] != 'all')) {
			
							if (isset($_REQUEST['rolePriority']))
								$returnedHtml .= '<input id="priority" value="'.$_REQUEST['rolePriority'].'" size="1" maxlength="3" disabled>';
							else if (isset($_REQUEST['asolRolePriority']))
								$returnedHtml .= '<input id="priority" value="'.$_REQUEST['asolRolePriority'].'" size="1" maxlength="3" disabled>';
							else
								$returnedHtml .= '<input id="priority" value="0" size="1" maxlength="3" disabled>';
						
						} else
							$returnedHtml .= '<input id="priority" value="-1" size="1" maxlength="3" disabled>';
						
						$returnedHtml .= '
						
						&nbsp;&nbsp<span style="white-space: nowrap;">
							<a OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'" onclick="javascript: document.getElementById(\'asolHoverDiv\').style.visibility=\'visible\';"><img height="14" border="0" align="absmiddle" width="14" alt="View Priorities" src="themes/'.$theme.'/images/icon_home.gif">&nbsp;<span>'.$mod_strings['LBL_VIEW_PRIORITIES'].'</span></a>
						</span>
						
						<span style="white-space: nowrap;">
							<a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopyFrom = document.getElementById(\'roleSelect\').value; var roleCopy = document.getElementById(\'roleCopy\').value; var tabName = document.getElementById(\'tabname\').value; if ((roleCopy != null) && (roleCopy != \'\')) document.location=\'index.php?module=Home&amp;action=index&amp;copy=true&amp;asolRoleCopy=\'+roleCopy+\'&amp;asolRole=\'+roleCopyFrom+\'&tabName=\'+tabName+\'&hideTabButtons=\'+hideTabButtons+\'&tabId='.$tabId.'&customHome=0\'"><img height="14" border="0" align="absmiddle" width="14" alt="Copy To" src="themes/'.$theme.'/images/icon_home.gif">&nbsp;<span>'.$mod_strings['LBL_COPY_TO'].'</span></a>:
						</span>
						
						<select id="roleCopy">'.$optsCopy.'</select>
						
						&nbsp;&nbsp<span style="white-space: nowrap;">
							<a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'roleSelect\').value; var roleCopy = document.getElementById(\'roleCopy\').value; var rolePriority = document.getElementById(\'priority\').value; var tabName = document.getElementById(\'tabname\').value; document.location=\'index.php?module=Home&action=index&asolPublishHome=true&asolRole=\'+role+\'&asolRoleCopy=\'+roleCopy+\'&rolePriority=\'+rolePriority+\'&tabName=\'+tabName+\'&hideTabButtons=\'+hideTabButtons+\'&tabId='.$tabId.'&customHome=0\'"><img height="14" border="0" align="absmiddle" width="14" alt="Publish Home" src="themes/'.$theme.'/images/icon_home.gif">&nbsp;<span>'.$mod_strings['LBL_PUBLISH_HOME'].'</span></a>
						</span>
			
						</div>';
					
				} else {
				
					$returnedHtml .= "<center>AlineaSol Publish HomePage: <span style='color:red'>".translate('LBL_NO_DOMAIN_SELECTED', 'asol_Domains')."</span></center>";
				
				}
						
			}	
			
		}
	
		$returnedHtml .= self::getPublishHomePageCss($manageDomains, (($currentUserDomain === 'removeDomain') || empty($currentUserDomain)));
		
		return $returnedHtml;
		
	}
	
	
	static private function getHomePageRolesDropDowns($manageDomains) {
						
		global $db, $mod_strings, $current_user;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$roles = array();
		$opts = "";
		$optsCopy = "";
		
		$asolRole = (isset($_REQUEST['asolRole'])) ? $_REQUEST['asolRole'] : null;
		$asolRoleCopy = (isset($_REQUEST['asolRoleCopy'])) ? $_REQUEST['asolRoleCopy'] : null;
		
		if (($manageDomains) && ((!$userCanManageHomePage) || (($userCanManageHomePage) && (!empty($current_user->asol_default_domain)))) )
			$queryRoles = $db->query("SELECT acl_roles.id, acl_roles.name FROM acl_roles LEFT JOIN asol_domains_aclroles ON acl_roles.id=asol_domains_aclroles.aclrole_id WHERE asol_domains_aclroles.asol_domain_id = '".$current_user->asol_default_domain."' ORDER BY name ASC");		
		else
			$queryRoles = $db->query("SELECT id, name FROM acl_roles ORDER BY name ASC");
			
		//Anhadimos dos 'roles' adicionales: Default y All
		$roles[] = array ('id' => "default", 'name' => $mod_strings['LBL_DEFAULT']);
		$roles[] = array ('id' => "all", 'name' => $mod_strings['LBL_ALL']);
		while($queryRow = $db->fetchByAssoc($queryRoles)){
			$roles[] = array (
				'id' => $queryRow['id'], 
				'name' => $queryRow['name']
			);
		}
		
			
		foreach ($roles as $role)
			$opts .= ($role["id"] == $asolRole) ? '<option value="'.$role["id"].'" selected>'.$role["name"].'</option>' : '<option value="'.$role["id"].'">'.$role["name"].'</option>';
	
		$optsCopy .= ("" == $asolRoleCopy) ? '<option value="" selected>..</option>' : '<option value="">..</option>';
	
		foreach ($roles as $role) {
			if ($role["id"] != $asolRole)
				$optsCopy .= ($role["id"] == $asolRoleCopy) ? '<option value="'.$role["id"].'" selected>'.$role["name"].'</option>' : '<option value="'.$role["id"].'">'.$role["name"].'</option>';
		}
		
		return array (
			'opts' => $opts,
			'optsCopy' => $optsCopy
		);
		
	}
	
	
	static private function getRolesPriorities($manageDomains) {
						
		global $db, $current_user;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		$rolesPriorities = array();
		
		if (isset($_REQUEST['newPriorities'])) {
			
			$priorities = explode("\${Y}", $_REQUEST['newPriorities']);
			foreach ($priorities as $priority){
				$prioritieValues = explode("\${X}", $priority);
				
				if (($manageDomains) && ((!$userCanManageHomePage) || (($userCanManageHomePage) && (!empty($current_user->asol_default_domain)))) )
					$queryPrioritiesRoles = $db->query("SELECT acl_roles.name, roles_homepage.role_id, roles_homepage.home_priority FROM acl_roles LEFT JOIN roles_homepage ON acl_roles.id=roles_homepage.role_id LEFT JOIN asol_domains_aclroles ON acl_roles.id=asol_domains_aclroles.aclrole_id WHERE acl_roles.id='".$prioritieValues[0]."' AND asol_domains_aclroles.asol_domain_id = '".$current_user->asol_default_domain."'");
				else
					$queryPrioritiesRoles = $db->query("SELECT acl_roles.name, roles_homepage.role_id, roles_homepage.home_priority FROM acl_roles LEFT JOIN roles_homepage ON acl_roles.id=roles_homepage.role_id WHERE acl_roles.id='".$prioritieValues[0]."'");
			
				$queryRow = $db->fetchByAssoc($queryPrioritiesRoles);
				
				$rolesPriorities[] = array (
					'name' => $queryRow['name'], 
					'priority' => $prioritieValues[1], 
					'id' => $prioritieValues[0]
				);
				
			}
			
		} else {
		
			if (($manageDomains) && ((!$userCanManageHomePage) || (($userCanManageHomePage) && (!empty($current_user->asol_default_domain)))) )
				$queryPrioritiesRoles = $db->query("SELECT DISTINCT acl_roles.name, roles_homepage.role_id, roles_homepage.home_priority FROM acl_roles LEFT JOIN roles_homepage ON acl_roles.id=roles_homepage.role_id LEFT JOIN asol_domains_aclroles ON acl_roles.id=asol_domains_aclroles.aclrole_id WHERE roles_homepage.user_owner='1' AND asol_domains_aclroles.asol_domain_id = '".$current_user->asol_default_domain."' ORDER BY acl_roles.name ASC");
			else
				$queryPrioritiesRoles = $db->query("SELECT DISTINCT acl_roles.name, roles_homepage.role_id, roles_homepage.home_priority FROM acl_roles LEFT JOIN roles_homepage ON acl_roles.id=roles_homepage.role_id WHERE roles_homepage.user_owner='1' ORDER BY acl_roles.name ASC");
			
			while($queryRow = $db->fetchByAssoc($queryPrioritiesRoles)) {
				$rolesPriorities[] = array (
					'name' => $queryRow['name'],
					'priority' => $queryRow['home_priority'],
					'id' => $queryRow['role_id']
				);						
			}
		}
		
		return $rolesPriorities;
		
	}
	
	
	
	static public function getManagementPageTabsHtml($mod_strings) {
		
		global $db, $current_user, $theme, $app_strings, $sugar_config;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$asolHideButtons = (isset($_REQUEST['hideTabButtons'])) ? $_REQUEST['hideTabButtons'] : "true";
		$asolCustomHome = (isset($_REQUEST['customHome'])) ? $_REQUEST['customHome'] : 0;
		$asolTabName = (isset($_REQUEST['tabName'])) ? $_REQUEST['tabName'] : "";
		$asolRolePriority = (isset($_REQUEST['rolePriority'])) ? $_REQUEST['rolePriority'] : 0;
		 
		$oneCustomTab = (isset($_REQUEST['oneCustomTab']) && $_REQUEST['oneCustomTab']);
		$oneCustomTab_js = (isset($_REQUEST['oneCustomTab']) && $_REQUEST['oneCustomTab']) ? "true" : "false";
		
		
		$lock_homepage = false;
		$asol_lock_homepage = false;
		$lock_homepage_js = 'false';
		$asol_lock_homepage_js = 'false';
			
		$sugar_config['lock_homepage'] = ($userCanManageHomePage) ? false : $sugar_config['lock_homepage']; 
		
		if (!empty($sugar_config['lock_homepage']) && $sugar_config['lock_homepage'] == true) {
			$lock_homepage = true;
			$asol_lock_homepage = true;
			$lock_homepage_js = 'true';
			$asol_lock_homepage_js = 'true';
		}
		
		if (($asolCustomHome == 0 ) && (!$userCanManageHomePage)) {
			$lock_homepage = true;
			$lock_homepage_js = 'true';
		}
		
		
			
			
		$returnedHtml = '';
		
		$returnedHtml .= '
		<tr>
			<td colspan="3">
		';
	
		
		$currentUserId = ($userCanManageHomePage) ? "1" : $current_user->id;
		
		//Is Domains Installed
		$domainsQuery = $db->query("SELECT DISTINCT id_name FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
		$manageDomains = ($domainsQuery->num_rows > 0);
		
		$currentUserDomain = null;
		$manageDomainsWhere = "";
		
		if ($manageDomains) {
	
			if ($userCanManageHomePage)
				$currentUserDomain = (isset($_REQUEST['update_domain'])) ? $_REQUEST['update_domain'] : $current_user->asol_default_domain;
			else
				$currentUserDomain = $current_user->asol_domain_id;
			
			$manageDomainsWhere =  " AND asol_domain_id='".$currentUserDomain."' ";
		
		}
			
				
	
				if (((!$manageDomains) || ((!empty($currentUserDomain)))) && ((!isset($_REQUEST['update_domain']) || ($_REQUEST['update_domain'] != "removeDomain")))) {
	
					if ($userCanManageHomePage)
						$queryCountTabs = $db->query("SELECT MAX(tab_order) as maxtab, COUNT(tab_id) as the_count FROM roles_homepage WHERE role_id='".$_REQUEST['asolRole']."' AND user_owner='".$currentUserId."'".$manageDomainsWhere);
					else
						$queryCountTabs = $db->query("SELECT MAX(tab_order) as maxtab, COUNT(tab_id) as the_count FROM roles_homepage WHERE user_owner='".$currentUserId."'".$manageDomainsWhere);
						
					$queryCountTabsRow = $db->fetchByAssoc($queryCountTabs);
	
					$tabId = (isset($_REQUEST["tabId"])) ? $_REQUEST["tabId"] : $queryCountTabsRow["maxtab"];
	
					$returnedHtml .= '<input type="hidden" name="userRole" id="userRole" value="'.$_REQUEST["asolRole"].'">';
					$returnedHtml .= '<input type="hidden" name="tabId" id="tabId" value="'.$tabId.'">';
	
					$returnedHtml .= '
									<input type="hidden" name="tabname" id="tabname" value="'.$_REQUEST['tabName'].'">
									<input type="hidden" name="hideTabButtons" id="hideTabButtons" value="'.$_REQUEST['hideTabButtons'].'">
									<input type="hidden" name="customHome" id="customHome" value="'.$asolCustomHome.'">
	
					<div id="homePageTabsContainer">
						<ul class="tablist" id="homePageTabs">';
					
	
					if ($queryCountTabsRow['the_count'] > 0) {
	
						if (isset($_REQUEST['newOrders'])) {
		
							if (!$userCanManageHomePage) {
		
								$count = 0;
			
								$queryTabsRoles = $db->query("SELECT tab_id, tab_name FROM roles_homepage WHERE user_owner='".$currentUserId."' AND custom_home=0".$manageDomainsWhere." ORDER BY tab_order ASC");
			
								while($queryTabsRow = $db->fetchByAssoc($queryTabsRoles)){
			
									$tabName = (isset($_REQUEST["tabName"])) ? $_REQUEST["tabName"] : $queryTabsRow["tab_name"];
					
									if ((($_REQUEST['tabId'] == $queryTabsRow["tab_id"]) && ($_REQUEST['customHome'] == '0')) || ( (empty($_REQUEST['tabId'])) && ($count == 0) && (!isset($_REQUEST['newtab'])) && ($_REQUEST['tabId'] != '-1')) ) {
				
										if (isset($_REQUEST["asolDeleteHome"]))
											continue;
				
										$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$tabName.'</a></li>';
				
									} else {
					
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$queryTabsRow["tab_name"].'</a></li>';
				
									}
				
									$count++;
								}
		
							}
	
	
	 						$orders = explode("\${Y}", $_REQUEST['newOrders']);
	
							$orderedTabs = Array();
	
							foreach ($orders as $order){
								$orderValues = explode("\${X}", $order);
								$index = (strlen($orderValues[1]) == 1) ? "0".$orderValues[1] : $orderValues[1];
								$orderedTabs[] = $index."_".$orderValues[0];
							}
	
							sort($orderedTabs);
	
							$userCustom = ($userCanManageHomePage) ? '0' : '1' ;
	
							foreach ($orderedTabs as $orderedTab) {
	
								$orderValues = explode("_", $orderedTab);
		
								$queryTabsRoles = $db->query("SELECT tab_id, tab_name FROM roles_homepage WHERE id='".$orderValues[1]."'".$manageDomainsWhere);
								$queryTabsRow = $db->fetchByAssoc($queryTabsRoles);
		
								if (($queryTabsRow['tab_id'] == $_REQUEST['tabId']) && ($_REQUEST['customHome'] == $userCustom)) {
		
									if ($userCanManageHomePage)
										$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$queryTabsRow["tab_name"].'</a></li>';
									else
										$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=1\'">'.$queryTabsRow["tab_name"].'</a></li>';
		
								} else {
		
									if ($userCanManageHomePage)
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$queryTabsRow["tab_name"].'</a></li>';
									else
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=1\'">'.$queryTabsRow["tab_name"].'</a></li>';
		
								}
	
							}
	
						} else {
	
							$count = 0;
	
							if ($userCanManageHomePage)
								$queryTabsRoles = $db->query("SELECT tab_id, tab_name FROM roles_homepage WHERE role_id='".$_REQUEST['asolRole']."' AND user_owner='".$currentUserId."'".$manageDomainsWhere." ORDER BY tab_order ASC");
							else
								$queryTabsRoles = $db->query("SELECT tab_id, tab_name FROM roles_homepage WHERE role_id='".$_REQUEST['asolRole']."' AND user_owner='".$currentUserId."' AND custom_home=0".$manageDomainsWhere." ORDER BY tab_order ASC");
								
							$tabId = (isset($_REQUEST['tabId'])) ? $_REQUEST['tabId'] : null;
								
							while($queryTabsRow = $db->fetchByAssoc($queryTabsRoles)) {
	
								$tabName = (isset($_REQUEST["tabName"])) ? $_REQUEST["tabName"] : $queryTabsRow["tab_name"];
								
								if ((($tabId == $queryTabsRow["tab_id"]) && ($_REQUEST['customHome'] == '0')) || ( (empty($tabId)) && ($count == 0) && (!isset($_REQUEST['newtab'])) && ($tabId != '-1'))) {
	
									if (isset($_REQUEST["asolDeleteHome"]))
										continue;
	
									if ($userCanManageHomePage)
										$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$tabName.'</a></li>';
									else if ($_REQUEST['customHome'] == '0')
										$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$tabName.'</a></li>';
	
								} else {
	
									if ($userCanManageHomePage)
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.$queryTabsRow["tab_id"].'&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$queryTabsRow["tab_name"].'</a></li>';
									else
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=0\'">'.$queryTabsRow["tab_name"].'</a></li>';
	
								}
	
								$count++;
							}
	
	
							//Agregar ahora los tabs custom de los usuarios non-admin s?lo si no est? bloqueado el homepage
							if ( (!$userCanManageHomePage) && (empty($sugar_config['lock_homepage']) || $sugar_config['lock_homepage'] != true) ) {
	
								$count = 0;
								
								$queryTabsRoles = $db->query("SELECT tab_id, tab_name FROM roles_homepage WHERE user_owner='".$currentUserId."' AND custom_home=1".$manageDomainsWhere." ORDER BY tab_order ASC");
	
								while($queryTabsRow = $db->fetchByAssoc($queryTabsRoles)){
	
									$tabName = (isset($_REQUEST["tabName"])) ? $_REQUEST["tabName"] : $queryTabsRow["tab_name"];
		
									if (($_REQUEST['tabId'] == $queryTabsRow["tab_id"]) && ($_REQUEST['customHome'] == '1')) {
		
										if (isset($_REQUEST["asolDeleteHome"]))
											continue;
		
		 								$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=1\'">'.$tabName.'</a></li>';
		
									} else {
		
										$returnedHtml .=  '<li><a href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&asolRole='.$_REQUEST['asolRole'].'&redirect=true&tabId='.$queryTabsRow["tab_id"].'&hideTabButtons=\'+hideTabButtons+\'&customHome=1\'">'.$queryTabsRow["tab_name"].'</a></li>';
		
									}
		
									$count++;
								}
	
							}
	
	
						}
	
						if (isset($_REQUEST['newtab']))
							$returnedHtml .=  '<li class="active"><a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; document.location=\'index.php?module=Home&action=index&asolRole='.$_REQUEST['asolRole'].'&changeHome=true&redirect=true&tabId='.($queryCountTabsRow["maxtab"]+1).'&hideTabButtons=\'+hideTabButtons">'.$_REQUEST["newtab"].'</a></li>';
	
					} else {
	
						$returnedHtml .=  '<li class="active">
						<a class="current" href="javascript: var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var roleCopy = document.getElementById(\'roleCopy\').value; document.location=\'index.php?module=Home&action=index&changeHome=true&redirect=true&asolRole='.$_REQUEST['asolRole'].'&tabId=1&asolRoleCopy=\'+roleCopy+\'&hideTabButtons=\'+hideTabButtons;" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_MAIN_TAB'].'</a>
						</li>';
	
					}
	
	
					//********************************//
					//****Get JavaScript Functions****//
					//********************************//
					$returnedHtml .= self::getPublishHomePageScriptFunction($asolRolePriority, $asolTabName, $asolCustomHome);
					
					
					//*******************************//
					//****Get Tab Control Buttons****//
					//*******************************//
					$returnedHtml .= self::getPublishHomePageControlTabButtons($asolHideButtons, $oneCustomTab, $oneCustomTab_js, $asol_lock_homepage, $asol_lock_homepage_js, $lock_homepage, $lock_homepage_js);
					
				
	
				$returnedHtml .= '
				
					</ul></div>
				
					<div style="position: absolute; visibility: hidden; z-index: 1000; left: 480px; top: 180px; background-image: none;" id="asolHoverDivOrder">
	
						<table cellspacing="0" cellpadding="1" border="0" width="280" class="olBgClass">
							<tbody>
								<tr>
									<td>
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr>
													<td width="100%" class="olCgClass">
														<div class="olCapFontClass">
															<div style="float: left;">
																<b>'.$mod_strings['LBL_MANAGE_TABS_TITLE'].'</b>
															</div>
															<a onclick="javascript: document.getElementById(\'asolHoverDivOrder\').style.visibility=\'hidden\';" title="Close">
																<span style="color: rgb(238, 238, 255); font-family: Verdana,Arial,Helvetica; font-size: 67%; text-decoration: underline;">
																	<div style="float: right;">
																		<img OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'" border="0" src="themes/Sugar5/images/close.gif" style="margin-left: 2px; margin-right: 2px;">
																	</div>
																</span>
															</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
	
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr>
													<td>
														<b>'.$mod_strings['LBL_TAB_NAME'].'</b>
													</td>
													<td>
														<b>'.$mod_strings['LBL_TAB_ORDER'].'</b>
													</td>
												</tr>
				';
		
										if ($userCanManageHomePage)
											$querytabsOrder = $db->query("SELECT id, tab_name, tab_order FROM roles_homepage WHERE role_id='".$_REQUEST['asolRole']."' AND user_owner='".$currentUserId."'".$manageDomainsWhere." ORDER BY tab_order ASC");
										else
											$querytabsOrder = $db->query("SELECT id, tab_name, tab_order, custom_home FROM roles_homepage WHERE user_owner='".$currentUserId."' AND custom_home=1".$manageDomainsWhere." ORDER BY tab_order ASC");
							
										$tabsOrder = Array();
							
										while($queryRow = $db->fetchByAssoc($querytabsOrder)) {
											$tabsOrder[] = array (
												'id' => $queryRow['id'],
												'name' => $queryRow['tab_name'],
												'order' => $queryRow['tab_order']
											);
										}
							
										foreach($tabsOrder as $tabOrder) {
											$returnedHtml .= "<tr>
													<td>
														<input type='hidden' id='".$tabOrder['id']."_name' name='".$tabOrder['id']."_name' value='".$tabOrder['name']."'>
														<input id='".$tabOrder['id']."_name_display' value='".$tabOrder['name']."'>
													</td>
													<td>
														<input id='".$tabOrder['id']."_order' name='".$tabOrder['id']."_order' value='".$tabOrder['order']."'>
													</td>
												</tr>";
										}
							
										$returnedHtml .= '
											</tbody>
										</table>
							
										<table cellspacing="0" cellpadding="1" border="0" width="100%" class="detail view">
											<tbody>
												<tr>
													<td>
							
													<script>
													function checkTabNames(){
										';
														foreach($tabsOrder as $tabOrder){
															$returnedHtml .= "document.getElementById('".$tabOrder['id']."_name').value = encodeURIComponent(document.getElementById('".$tabOrder['id']."_name_display').value);";
														}
										$returnedHtml .= '
													}
													</script>
							
										';
							
													if (($_REQUEST['asolRole'] != 'default') && ($_REQUEST['asolRole'] != 'all')) {
										
														if ($userCanManageHomePage)
															$returnedHtml .= '<button onClick="checkTabNames(); var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'roleSelect\').value; var rolePriority = getElementById(\'priority\').value; var roleCopy = document.getElementById(\'roleCopy\').value; var tabName = document.getElementById(\'tabname\').value; document.location=\'index.php?module=Home&action=index&asolManageTabs=true&rolePriority=\'+rolePriority+\'&asolRoleCopy=\'+roleCopy+\'&asolRole=\'+role+\'&tabName=\'+tabName+\'&tabId='.(isset($_REQUEST['tabId']) ? $_REQUEST['tabId'] : '').'&hideTabButtons=\'+hideTabButtons+\'&customHome='.$_REQUEST['customHome'];
														else
															$returnedHtml .= '<button onClick="checkTabNames(); var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'userRole\').value; var tabName = document.getElementById(\'tabname\').value; document.location=\'index.php?module=Home&action=index&asolManageTabs=true&asolRole=\'+role+\'&tabName=\'+tabName+\'&tabId='.(isset($_REQUEST['tabId']) ? $_REQUEST['tabId'] : '').'&hideTabButtons=\'+hideTabButtons+\'&customHome='.$_REQUEST['customHome'];
										
													} else {
														
														$returnedHtml .= '<button onClick="checkTabNames(); var hideTabButtons = document.getElementById(\'hideTabButtons\').value; var role = document.getElementById(\'userRole\').value; var tabName = document.getElementById(\'tabname\').value; document.location=\'index.php?module=Home&action=index&asolManageTabs=true&rolePriority=0&asolRole=\'+role+\'&tabName=\'+tabName+\'&tabId='.(isset($_REQUEST['tabId']) ? $_REQUEST['tabId'] : '').'&hideTabButtons=\'+hideTabButtons+\'&customHome='.$_REQUEST['customHome'];
										
													}
														
														$url_orders = "&newOrders=";
														foreach($tabsOrder as $tabOrder){
															$url_orders .= $tabOrder['id']."\${X}'+document.getElementById('".$tabOrder['id']."_order').value+'\${Y}";
														}
														$url_orders = substr($url_orders, 0, -6);
											
														$url_names = "+'&newNames=";
														
														foreach($tabsOrder as $tabOrder){
														
															$url_names .= $tabOrder['id']."\${X}'+document.getElementById('".$tabOrder['id']."_name').value+'\${Y}";
											
														}
														$url_names = substr($url_names, 0, -6);
											
														$returnedHtml .= $url_orders.$url_names;
											
														$returnedHtml .= '" style="float:right;">'.$mod_strings["LBL_SAVE_TAB"].'</button>
										
													</td>
												</tr>
											</tbody>
										</table>
	
									</td>
								</tr>
							</tbody>
						</table>
	
					</div>';
	
				} else {
	
					$returnedHtml .= '
					<style type="text/css">
						#pageContainer {
							display: none;
						}
					</style>
					';
	
				}
				
				$infoMessage = isset($_REQUEST['infoMessage']) ? $_REQUEST['infoMessage'] : "";
	
				$returnedHtml .= '
				<span style="color:red">'.$infoMessage.'</span>
	
			</td>
		</tr>';
				
		return $returnedHtml;
		
	}
	
	
	static private function getPublishHomePageScriptFunction($asolRolePriority, $asolTabName, $asolCustomHome) {
					
		$returnedHtml = "<script>
		
			function publishHomePageAddNewTab(isAdminUser, lockedPage, newTabName) {
				
				var hideTabButtons = document.getElementById('hideTabButtons').value;
				
				if (isAdminUser) {
					
					var role = document.getElementById('roleSelect').value;
					var roleCopy = document.getElementById('roleCopy').value;
					document.location='index.php?module=Home&action=index&asolRole='+role+'&asolRoleCopy='+roleCopy+'&rolePriority=".$asolRolePriority."&newtab='+newTabName+'&hideTabButtons='+hideTabButtons+'&customHome=0';
					
				} else if (!lockedPage) {
					
					var role = document.getElementById('userRole').value;
					document.location='index.php?module=Home&action=index&asolRole='+role+'&rolePriority=".$asolRolePriority."&newtab='+newTabName+'&hideTabButtons='+hideTabButtons+'&customHome=0';
					
				}
				
			}
			
			function publishHomePageCollapseButtons() {
	
				var visibility = document.getElementById('tabHeader').style.visibility;
				
				if (visibility != 'collapse') {
				
					document.getElementById('tabHeader').style.visibility = 'collapse';
					document.getElementById('tabMenuImg').innerHTML='&raquo;';
					document.getElementById('hideTabButtons').value='true';
				
				} else { 
				
					document.getElementById('tabHeader').style.visibility = 'visible';
					document.getElementById('tabMenuImg').innerHTML='&laquo;';
					document.getElementById('hideTabButtons').value='false';
					
				}
				
			}
			
			function publishHomePageSaveTab(isAdminUser, lockedPage) {
	
				var hideTabButtons = document.getElementById('hideTabButtons').value;
				var tabId = document.getElementById('tabId').value;
				
				if (isAdminUser) {
								
					var role = document.getElementById('roleSelect').value;
					var roleCopy = document.getElementById('roleCopy').value; 
					document.location='index.php?module=Home&action=index&asolSaveHome=true&rolePriority=".$asolRolePriority."&asolRole='+role+'&asolRoleCopy='+roleCopy+'&tabId='+tabId+'&tabName=".$asolTabName."&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
	
				} else if (!lockedPage) {
				
					var role = document.getElementById('userRole').value;
					document.location='index.php?module=Home&action=index&asolSaveHome=true&rolePriority=".$asolRolePriority."&asolRole='+role+'&tabId='+tabId+'&tabName=".$asolTabName."&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
					
				}
				
			}
			
			function publishHomePageDuplicateTab(isAdminUser, lockedPage) {
			
				var hideTabButtons = document.getElementById('hideTabButtons').value;
				var tabId = document.getElementById('tabId').value;
				
				if (isAdminUser) {
				
					var role = document.getElementById('roleSelect').value;
					var roleCopy = document.getElementById('roleCopy').value;
					document.location='index.php?module=Home&action=index&asolDuplicateHome=true&rolePriority=".$asolRolePriority."&asolRole='+role+'&asolRoleCopy='+roleCopy+'&tabId='+tabId+'&tabName=".$asolTabName."&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
					
				} else if (!lockedPage) {
				
					var role = document.getElementById('userRole').value;
					document.location='index.php?module=Home&action=index&asolDuplicateHome=true&rolePriority=".$asolRolePriority."&asolRole='+role+'&tabId='+tabId+'&tabName=".$asolTabName."&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
				
				}
			
			}
			
			function publishHomePageDeleteTab(isAdminUser, lockedPage, oneCustomTab, deleteTabAlert) {
			
				var hideTabButtons = document.getElementById('hideTabButtons').value;
				var tabId = document.getElementById('tabId').value; 
				
				if (isAdminUser) {
				
					var role = document.getElementById('roleSelect').value;
					var roleCopy = document.getElementById('roleCopy').value;
					
					if(confirm(deleteTabAlert))
						document.location='index.php?module=Home&action=index&asolDeleteHome=true&asolRole='+role+'&asolRoleCopy='+roleCopy+'&tabId='+tabId+'&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
					
				} else if ((!lockedPage) && (!oneCustomTab)) {
				
					var role = document.getElementById('userRole').value;
				
					if(confirm(deleteTabAlert))
						document.location='index.php?module=Home&action=index&asolDeleteHome=true&asolRole='+role+'&tabId='+tabId+'&hideTabButtons='+hideTabButtons+'&customHome=".$asolCustomHome."';
				
				}
			
			}
			
		</script>";
	
		return $returnedHtml;
		
	}
	
	
	static private function getPublishHomePageControlTabButtons($asolHideButtons, $oneCustomTab, $oneCustomTab_js, $asol_lock_homepage, $asol_lock_homepage_js, $lock_homepage, $lock_homepage_js) {
	
		global $current_user, $mod_strings;
		
		$userCanManageHomePage = self::userCanManageHomePage();
		
		$returnedHtml = '';
		
		if (($userCanManageHomePage) || (!$asol_lock_homepage)) {
			$returnedHtml .= '<li><a onClick="publishHomePageAddNewTab('.($userCanManageHomePage ? 'true' : 'false').', '.$asol_lock_homepage_js.', \''.$mod_strings['LBL_NEW_TAB_NAME'].'\');" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'"><span style=\'font-weight: bold; font-size: 150%\'>+</span></a></li>';
		}
			
		if (($userCanManageHomePage) || (!$lock_homepage)) {
			if ($asolHideButtons === 'true')
				$returnedHtml .= '<li><a onClick="publishHomePageCollapseButtons();" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'"><span style="font-weight: bold; font-size: 150%" id="tabMenuImg">&raquo;</span></a></li>';
			else
				$returnedHtml .= '<li><a onClick="publishHomePageCollapseButtons();" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'"><span id="tabMenuImg" style="font-weight: bold; font-size: 150%">&laquo;</span></a></li>';
		}
			
		$returnedHtml .= ($asolHideButtons === 'false') ? '<span id ="tabHeader" style="float:right; visibility:;">' : '<span id ="tabHeader" style="float:right; visibility:collapse;">';
	
		if (($userCanManageHomePage) || (!$lock_homepage))
			$returnedHtml .= '<li><a onClick="publishHomePageSaveTab('.($userCanManageHomePage ? 'true' : 'false').', '.$lock_homepage_js.');" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_SAVE_TAB'].'</a></li>';
	
		if (($userCanManageHomePage) || (!$lock_homepage))
			$returnedHtml .= '<li><a onClick="publishHomePageDuplicateTab('.($userCanManageHomePage ? 'true' : 'false').', '.$lock_homepage_js.');" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_DUPLICATE_TAB'].'</a></li>';
			
		if (($userCanManageHomePage) || ((!$lock_homepage) && (!$oneCustomTab)))
			$returnedHtml .= '<li><a onClick="publishHomePageDeleteTab('.($userCanManageHomePage ? 'true' : 'false').', '.$lock_homepage_js.', '.$oneCustomTab_js.', \''.$mod_strings['LBL_DELETE_TAB_ALERT'].'\');" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_DELETE_TAB'].'</a></li>';
		
		if (($userCanManageHomePage) || (!$lock_homepage)) {
			$returnedHtml .= '<li><a onClick="document.getElementById(\'asolHoverDivOrder\').style.visibility=\'visible\';" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_MANAGE_TABS'].'</a></li>';
			$returnedHtml .= '<li><a onClick="return SUGAR.mySugar.showDashletsDialog();" OnMouseOver="this.style.cursor=\'pointer\'" OnMouseOut="this.style.cursor=\'default\'">'.$mod_strings['LBL_ADD_ASOL_DASHLETS'].'</a></li>';
		}
	
		return $returnedHtml;
		
	}
	
	
	static private function getPublishHomePageCss($manageDomains, $noDomainSelected) {
		
		$returnedCss = "<style>
			#add_dashlets {
				display:none;
			}
			div#content {
				padding-top: 0px;
			}
			#homePageTabsContainer {
				padding-top: 10px;
			}";
		
		
		if ($manageDomains && $noDomainSelected) {
			$returnedCss .= "
				.dashletPanel {
					display: none;		
				}";
		}
		
		$returnedCss .= "
		</style>";
		
		return $returnedCss;
		
	}
	
	static private function userCanManageHomePage() {
		
		global $sugar_config, $current_user;
		
		$userCanManageHomePage = ($current_user->is_admin) ? true : false;
		$roleCanManageHomePage = false;
		$userRoles = $_SESSION['asolUserRoles'] = ((isset($_SESSION['asolUserRoles'])) && (!empty($_SESSION['asolUserRoles']))) ? $_SESSION['asolUserRoles'] : ACLRole::getUserRoles($current_user->id);
	
		if (isset($sugar_config['AlineaSolPublishHomePageManagementRoles'])) {
			
			foreach ($userRoles as $userRole) {

				if (in_array($userRole, $sugar_config['AlineaSolPublishHomePageManagementRoles'])) {
					$roleCanManageHomePage = true;
					break;
				}
			
			}
			
		}
		
		return ($userCanManageHomePage || $roleCanManageHomePage);
		
	}
	
	static private function getLandingHomePageRoleId() {
		
		global $db, $sugar_config, $current_user;
		
		if ($current_user->is_admin) {
			
			if (isset($sugar_config['AlineaSolPublishHomePageAdminLandingRole'])) {
				
				$landingHomePageRoleName = $sugar_config['AlineaSolPublishHomePageAdminLandingRole'];
				
				$landingHomePageRoleQuery = $db->query("SELECT id FROM acl_roles WHERE name='".$landingHomePageRoleName."' AND deleted=0 LIMIT 1");
				$landingHomePageRoleRow = $db->fetchByAssoc($landingHomePageRoleQuery);
			
				$landingHomePageRoleId = $landingHomePageRoleRow['id'];
			
			} else {
				
				$landingHomePageRoleId = 'default';
				
			}
			
		} else {
			
			$userRoles = $_SESSION['asolUserRoles'] = ((isset($_SESSION['asolUserRoles'])) && (!empty($_SESSION['asolUserRoles']))) ? $_SESSION['asolUserRoles'] : ACLRole::getUserRoles($current_user->id);
			$landingHomePageRoleName = $userRoles[0];
			
			$landingHomePageRoleQuery = $db->query("SELECT id FROM acl_roles WHERE name='".$landingHomePageRoleName."' AND deleted=0 LIMIT 1");
			$landingHomePageRoleRow = $db->fetchByAssoc($landingHomePageRoleQuery);
			
			$landingHomePageRoleId = $landingHomePageRoleRow['id'];
			
		}
		
		return $landingHomePageRoleId;
		
	}

}
	
?>