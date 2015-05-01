<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

wfm_utils::wfm_log('asol_debug', 'ENTRY', __FILE__);

$bean_module = $trigger_module;
wfm_utils::wfm_log('asol_debug', '$bean_module=['.var_export($bean_module, true).']', __FILE__, __METHOD__, __LINE__);

$multiple = 'multiple';
$show_idRelationships = true;

require_once('modules/asol_Process/___common_WFM/php/module_fields.fields_relatedFields.common.php');

wfm_utils::wfm_log('asol_debug', 'EXIT', __FILE__);

?>