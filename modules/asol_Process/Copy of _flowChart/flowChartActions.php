<?php

require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");
require_once("modules/asol_Process/_flowChart/flowChartActionsFunctions.php");

wfm_utils::wfm_log('flow_debug', '$_REQUEST=['.var_export($_REQUEST, true).']', __FILE__, __METHOD__, __LINE__);

global $current_user;

wfm_utils::wfm_log('flow_debug', '$current_user->user_name=['.var_export($current_user->user_name, true).']', __FILE__, __METHOD__, __LINE__);

$action = $_REQUEST['action'];
$draggedNodeType = $_REQUEST['draggedNodeType'];
$draggedNodeId = $_REQUEST['draggedNodeId'];
$targetNodeModule = $_REQUEST['targetNodeModule'];
$targetNodeId = $_REQUEST['targetNodeId'];

switch ($action) {
	case 'createObjectAndRelationship':

		switch ($draggedNodeType) {

			case 'events':

				switch ($targetNodeModule) {
					case 'process':

						// Save object.
						$event = BeanFactory::newBean('asol_Events');
						fillFields($event, $draggedNodeId);
						$eventId = $event->save();

						// Save relationship.
						$process = BeanFactory::getBean('asol_Process', $targetNodeId);
						$link = 'asol_process_asol_events';
						$process->load_relationship($link);
						$process->$link->add($eventId);
						$process->save();
						
						$ok = true;

						break;
					default:
						$ok = false;
						break;
				}

				break;

			case 'activities':

				switch ($targetNodeModule) {
					case 'activity':

						// Save object.
						$activity = BeanFactory::newBean('asol_Activity');
						fillFields($activity, $draggedNodeId);
						$activity->asol_activ898activity_ida = $targetNodeId;
						$activityId = $activity->save();

//						// Save relationship.
//						$parentActivity = BeanFactory::getBean('asol_Activity', $targetNodeId);
//						$link = 'asol_activity_asol_activity';
//						$parentActivity->load_relationship($link);
//						$parentActivity->$link->add($activityId);
//						$parentActivity->save();
						
						$ok = true;

						break;
					case 'event':

						// Save object.
						$activity = BeanFactory::newBean('asol_Activity');
						fillFields($activity, $draggedNodeId);
						$activityId = $activity->save();

						// Save relationship.
						$event = BeanFactory::getBean('asol_Events', $targetNodeId);
						$link = 'asol_events_asol_activity';
						$event->load_relationship($link);
						$event->$link->add($activityId);
						$event->save();
						
						$ok = true;

						break;
					default:
						$ok = false;
						break;
				}

				break;

			case 'tasks':

				switch ($targetNodeModule) {
					case 'activity':

						// Save object.
						$task = BeanFactory::newBean('asol_Task');
						fillFields($task, $draggedNodeId);
						$taskId = $task->save();

						// Save relationship.
						$activity = BeanFactory::getBean('asol_Activity', $targetNodeId);
						$link = 'asol_activity_asol_task';
						$activity->load_relationship($link);
						$activity->$link->add($taskId);
						$activity->save();
						
						$ok = true;

						break;
					default:
						$ok = false;
						break;
				}

				break;

			default:
				$ok = false;
				break;
		}

		// Send response to client
		$response = Array(
			'ok' => $ok,
		);
		echo json_encode($response);

		break;
}