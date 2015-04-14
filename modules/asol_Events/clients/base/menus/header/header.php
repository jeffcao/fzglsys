<?php

$module = 'asol_Events';

require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");

$viewdefs[$module]['base']['menu']['header'] = array();

$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Process",
	'label' => 'LBL_ASOL_VIEW_ASOL_PROCESSES',
	'acl_action' => 'list',
	'acl_module' => 'asol_Process',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Process/create",
	'label' => 'LBL_ASOL_CREATE_ASOL_PROCESS',
	'acl_action' => 'create',
	'acl_module' => 'asol_Process',
	'icon' => 'icon-plus',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Events",
	'label' => 'LBL_ASOL_VIEW_ASOL_EVENTS',
	'acl_action' => 'list',
	'acl_module' => 'asol_Events',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Activity",
	'label' => 'LBL_ASOL_VIEW_ASOL_ACTIVITIES',
	'acl_action' => 'list',
	'acl_module' => 'asol_Activity',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Task",
	'label' => 'LBL_ASOL_VIEW_ASOL_TASKS',
	'acl_action' => 'list',
	'acl_module' => 'asol_Task',
	'icon' => 'icon-reorder',
);

if (ACLController::checkAccess('EmailTemplates', 'list', true)) {
	$viewdefs[$module]['base']['menu']['header'][] = array(
		'route' => "#EmailTemplates",
		'label' => translate('LNK_EMAIL_TEMPLATE_LIST', 'EmailTemplates'),
		'acl_action' => 'list',
		'acl_module' => 'EmailTemplates',
		'icon' => 'icon-reorder',
	);
}

if (wfm_notification_emails_utils::isNotificationEmailsInstalled()) {
	$viewdefs[$module]['base']['menu']['header'][] = array(
		'route' => "#asol_NotificationEmails",
		'label' => translate('LNK_LIST', 'asol_NotificationEmails'),
		'acl_action' => 'list',
		'acl_module' => 'asol_NotificationEmails',
		'icon' => 'icon-reorder',
	);
}

$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_WorkingNodes",
	'label' => 'LBL_ASOL_ALINEASOL_WFM_MONITOR',
	'acl_action' => 'list',
	'acl_module' => 'asol_WorkingNodes',
	'icon' => 'icon-reorder',
);

// Login Audit
$extraParams = Array(
	'module_menu' => $viewdefs[$module]['base']['menu']['header'],
);
$addLoginAuditToModuleMenu = wfm_reports_utils::managePremiumFeature("addLoginAuditToModuleMenuHeader2", "wfm_utils_premium.php", "addLoginAuditToModuleMenuHeader2", $extraParams);
if ($addLoginAuditToModuleMenu !== false) {
	$viewdefs[$module]['base']['menu']['header'] = $addLoginAuditToModuleMenu;
}
    
