<?php

function fillFields($bean, $draggedNodeId) {

	$bean->name = 'TempName ' . date('\DYmd\THis');

	switch ($draggedNodeId) {
		case 'event_logic_hook_after_login':
			$bean->trigger_type = 'logic_hook';
			$bean->trigger_event = 'after_login';
			break;
		case 'event_logic_hook_before_logout':
			$bean->trigger_type = 'logic_hook';
			$bean->trigger_event = 'before_logout';
			break;
		case 'event_logic_hook_login_failed':
			$bean->trigger_type = 'logic_hook';
			$bean->trigger_event = 'login_failed';
			break;
		case 'event_scheduled_parallel':
			$bean->trigger_type = 'scheduled';
			$bean->scheduled_type = 'parallel';
			break;
		case 'event_scheduled_sequential':
			$bean->trigger_type = 'scheduled';
			$bean->scheduled_type = 'sequential';
			break;
		case 'event_subprocess':
			$bean->trigger_type = 'subprocess';
			break;
		case 'event_logic_hook_initialize':
			$bean->trigger_type = 'logic_hook';
			$bean->type = 'initialize';
			break;
		case 'event_logic_hook_start':
			$bean->trigger_type = 'logic_hook';
			$bean->type = 'start';
			break;
		case 'event_logic_hook_intermediate':
			$bean->trigger_type = 'logic_hook';
			$bean->type = 'intermediate';
			break;
		case 'event_logic_hook_cancel':
			$bean->trigger_type = 'logic_hook';
			$bean->type = 'cancel';
			break;
		case 'activity':
			$bean->delay = 'minutes - 0';
			break;
		case 'task_send_email':
			$bean->task_type = 'send_email';
			break;
		case 'task_php_custom':
			$bean->task_type = 'php_custom';
			break;
		case 'task_continue':
			$bean->task_type = 'continue';
			break;
		case 'task_end':
			$bean->task_type = 'end';
			break;
		case 'task_create_object':
			$bean->task_type = 'create_object';
			break;
		case 'task_modify_object':
			$bean->task_type = 'modify_object';
			break;
		case 'task_call_process':
			$bean->task_type = 'call_process';
			break;
		case 'task_add_custom_variables':
			$bean->task_type = 'add_custom_variables';
			break;
	}
}