<?php

$module = 'asol_ProcessInstances';

$viewdefs[$module]['base']['menu']['header'] = array();

$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_ProcessInstances",
	'label' => 'LBL_ASOL_VIEW_ASOL_PROCESSINSTANCES',
	'acl_action' => 'list',
	'acl_module' => 'asol_ProcessInstances',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_WorkingNodes",
	'label' => 'LBL_ASOL_VIEW_ASOL_WORKINGNODES',
	'acl_action' => 'list',
	'acl_module' => 'asol_WorkingNodes',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_OnHold",
	'label' => 'LBL_ASOL_VIEW_ASOL_ONHOLD',
	'acl_action' => 'list',
	'acl_module' => 'asol_OnHold',
	'icon' => 'icon-reorder',
);
$viewdefs[$module]['base']['menu']['header'][] = array(
	'route' => "#asol_Process",
	'label' => 'LBL_ASOL_ALINEASOL_WFM',
	'acl_action' => 'list',
	'acl_module' => 'asol_Process',
	'icon' => 'icon-reorder',
);
