<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");
wfm_utils::wfm_log('debug', "ENTRY", __FILE__);

require_once("include/SugarEmailAddress/SugarEmailAddress.php");

class test {

	function test(&$bean, $event, $arguments='login_failed') {
		wfm_utils::wfm_log('flow_debug', "ENTRY", __FILE__, __METHOD__, __LINE__);

		wfm_utils::wfm_log('flow_debug', '***********LOGIC_HOOK**************', __FILE__, __METHOD__, __LINE__);
		
		wfm_utils::wfm_log('flow_debug', "\$event=[{$event}], \$bean->module_dir=[{$bean->module_dir}], \$bean->name=[{$bean->name}], \$bean->id=[{$bean->id}]", __FILE__, __METHOD__, __LINE__);
		wfm_utils::wfm_log('debug', '$_REQUEST=['.var_export($_REQUEST, true).']', __FILE__, __METHOD__, __LINE__);
		wfm_utils::wfm_log('debug', '$bean=['.print_r($bean, true).']', __FILE__, __METHOD__, __LINE__);

		global $current_user, $sugar_config, $db;
		
		wfm_utils::wfm_log('asol_debug', '$current_user->user_name=['.var_export($current_user->user_name, true).']', __FILE__, __METHOD__, __LINE__);
		wfm_utils::wfm_log('asol_debug', '$current_user->asol_default_domain=['.var_export($current_user->asol_default_domain, true).']', __FILE__, __METHOD__, __LINE__);

		wfm_utils::wfm_log('flow_debug', "\$event=[{$event}], \$bean->module_dir=[{$bean->module_dir}], \$bean->name=[{$bean->name}], \$bean->id=[{$bean->id}]", __FILE__, __METHOD__, __LINE__);
		wfm_utils::wfm_log('flow_debug', "EXIT", __FILE__, __METHOD__, __LINE__);
	}
}

?>