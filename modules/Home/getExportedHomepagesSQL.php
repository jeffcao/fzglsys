<?php

global $db;

$DomainsQuery = $db->query("SELECT DISTINCT count(id_name) as count FROM upgrade_history WHERE id_name='AlineaSolDomains' AND status='installed'");
$DomainsRow = $db->fetchByAssoc($DomainsQuery);
$isDomainsInstalled = ($DomainsRow['count'] > 0);


$exportedSQL = "INSERT INTO `roles_homepage` (`id`, `role_id`, `tab_id`, `tab_name`, `tab_order`, `user_owner`, `date_entered`, `date_modified`, `home_priority`, `custom_home`, `home_hash_stored`, `home_hash_published`";
if ($isDomainsInstalled)
	$exportedSQL .= ", `asol_domain_id`";
$exportedSQL .= ") VALUES\n\n";

$rolesHomepageSql = "SELECT * FROM roles_homepage WHERE user_owner='1' ORDER BY asol_domain_id ASC, role_id ASC, tab_id ASC";
$rolesHomepageRs = $db->query($rolesHomepageSql);

$currentDomain = null;
while ($rolesHomepageRow = $db->fetchByAssoc($rolesHomepageRs)) {
	
	if ((!empty($currentDomain)) && ($currentDomain != $rolesHomepageRow['asol_domain_id']) && ($isDomainsInstalled))
		$exportedSQL .= "\n\n";
	
	$exportedSQL .= "\n('".$rolesHomepageRow['id']."', '".$rolesHomepageRow['role_id']."', ".$rolesHomepageRow['tab_id'].", '".$rolesHomepageRow['tab_name']."', ".$rolesHomepageRow['tab_order'].", '".$rolesHomepageRow['user_owner']."', '".$rolesHomepageRow['date_entered']."', '".$rolesHomepageRow['date_modified']."', ".$rolesHomepageRow['home_priority'].", ".$rolesHomepageRow['custom_home'].", '".$rolesHomepageRow['home_hash_stored']."', '".$rolesHomepageRow['home_hash_published']."'";
	
	if ($isDomainsInstalled)
		$exportedSQL .= ", '".$rolesHomepageRow['asol_domain_id']."'";
	
	$exportedSQL .= "),";
	
	if ($isDomainsInstalled)
		$currentDomain = $rolesHomepageRow['asol_domain_id'];

}



$filecontent = substr($exportedSQL, 0, -1).";";
$downloadfile = "AlineaSol_ExportedHomePages_".date("Ymd")."T".date("His").".sql";

header("Content-disposition: attachment; filename=$downloadfile");
header("Content-Type: application/force-download");
header("Content-Transfer-Encoding: binary");
header("Content-Length: ".strlen($filecontent));
header("Pragma: no-cache");
header("Expires: 0");

echo $filecontent;

?>