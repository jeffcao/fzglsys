<?php

$admin_option_defs=array();
$admin_option_defs['Administration']['asol_publishhomepage_export']= array('asolAdministration',translate('LBL_ASOL_EXPORT_HOME_PAGES', 'Home'),translate('LBL_ASOL_EXPORT_HOME_PAGES_DESC', 'Home'),'./index.php?entryPoint=getExportedHomepagesSQL');
$admin_group_header[]= array(translate('LBL_ASOL_PUBLISH_HOME_PAGE_TITLE', 'Home'),'',false,$admin_option_defs, translate('LBL_ASOL_PUBLISH_HOME_PAGE_PANEL_DESC', 'Home'));

?>