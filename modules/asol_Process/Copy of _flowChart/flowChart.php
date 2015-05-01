<?php

require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");
wfm_utils::wfm_log('asol', 'ENTRY', __FILE__);

require_once("modules/asol_Process/_flowChart/flowChartFunctions.php");

global $db;

wfm_utils::wfm_log('debug', 'ENTRY POINT $_REQUEST=['.var_export($_REQUEST, true).']', __FILE__, __METHOD__, __LINE__);

$export_array = Array();

// Extract process_ids from $_REQUEST
$process_ids_array = explode(',', $_REQUEST['uid']);

// SEARCH FOR PROCESSES
foreach($process_ids_array as $key_process_id => $value_process_id) {
	$process_query = $db->query ("
									SELECT *
									FROM asol_process
									WHERE id = '{$value_process_id}'
								");
	$process_row = $db->fetchByAssoc($process_query);

	$export_array['processes'][] = $process_row;
}
//wfm_utils::wfm_log('debug', "1 FINAL \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);

// SEARCH FOR EVENTS
if (!empty($export_array['processes'])) { // It is always only one process for the flowChart
	foreach ($export_array['processes'] as $key_process => $value_process) {

		$event_from_process__query = $db->query("
													SELECT asol_events.*
													FROM asol_proces_asol_events_c
													INNER JOIN asol_events ON (asol_proces_asol_events_c.asol_procea8ca_events_idb = asol_events.id)
													WHERE (asol_proces_asol_events_c.asol_proce6f14process_ida = '{$value_process['id']}') AND (asol_events.deleted = 0) AND (asol_proces_asol_events_c.deleted = 0)
													ORDER BY
														CASE asol_events.type
															WHEN 'initialize' THEN 1
														    WHEN 'start' THEN 2
														    WHEN 'intermediate' THEN 3
														    WHEN 'cancel' THEN 4
														    ELSE 5
														END,
														asol_events.name ASC
												");
		while ($event_from_process__row = $db->fetchByAssoc($event_from_process__query)) {
			$export_array['events'][$value_process['id']][] = $event_from_process__row;
		}
	}
}
//wfm_utils::wfm_log('debug', "2 FINAL \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);

// SEARCH FOR ACTIVITIES
if (!empty($export_array['events'])) {
	foreach ($export_array['events'] as $key_parent_process => $value_parent_process) {
		foreach ($value_parent_process as $key_event => $value_event) {

			$activity_from_event__query = $db->query("
														SELECT asol_activity.*
														FROM asol_eventssol_activity_c
														INNER JOIN asol_activity ON (asol_eventssol_activity_c.asol_event8042ctivity_idb = asol_activity.id)
														WHERE (asol_eventssol_activity_c.asol_event87f4_events_ida = '{$value_event['id']}') AND (asol_activity.deleted = 0) AND (asol_eventssol_activity_c.deleted = 0)
														ORDER BY asol_activity.name ASC
													");
			while ($activity_from_event__row = $db->fetchByAssoc($activity_from_event__query)) {
				$export_array['activities'][$value_event['id']][] = $activity_from_event__row;
			}

			if (is_array($export_array['activities'])) { // Avoid php-warning array_key_exists
				if (!array_key_exists($value_event['id'], $export_array['activities'])) {
					$export_array['activities'][$value_event['id']][] = "empty_token";
				}
			} else {
				$export_array['activities'][$value_event['id']][] = "empty_token";
			}
		}
	}
}

//wfm_utils::wfm_log('debug', "3 FINAL \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);

// SEARCH FOR NEXT_ACTIVITIES FROM ACTIVITIES(FROM EVENTS)

//---------------WHEN SEARCHING FOR NEXT_ACTIVITIES -> CALCULATE Y-COORDENATE FOR THE ACTIVITIES AND FOR EVENTS

// draw-information for Events
$draw_information_event = Array();
$top_Process = 130;
$left_Process = 50;
$height_Event = 1+7+90+7+1;
$width_Event = 1+7+90+7+1;
$separation_vertical_Event = 50;
// draw-information for Activities
$draw_information_activity = Array();
$top_Process = $top_Process;
$separation_horizontal_Event = 100;// for activity loop
$separation_horizontal_Activity = 100;// for next_activity loop
$left_Process = $left_Process + $width_Event + $separation_horizontal_Event;
$height_Activity = 1+7+90+7+1;
$border_Activity = 1; // this is set on the style by 'em' not by 'px', so it is relative
$padding_Activity = 7; // this is set on the style by 'em' not by 'px', so it is relative
$number_of_pixels_to_susbstrate_from_width_Activity = 13;
$with_Activity_depending_on_number_of_tasks_Default = 94;// default
$with_Activity_depending_on_number_of_tasks_Maximum = $with_Activity_depending_on_number_of_tasks_Default; // to get the nex_activity location
$separation_vertical_Activity = 50;

// search for next_activities
if (!empty($export_array['activities'])) {
	$activity_ids_event_duplicity = Array();

	foreach ($export_array['activities'] as $key_parent_event => $value_parent_event) {

		$draw_information_event[$key_parent_event] = $top_Process;

		if ($export_array['activities'][$key_parent_event][0] == "empty_token") {
			$top_Process = $top_Process + $height_Event + $separation_vertical_Event;
			continue;
		}

		$aux_only_event_duplicity_for_this_event = true;

		foreach ($value_parent_event as $key_activity => $value_activity) {

			//wfm_utils::wfm_log('debug', "\$activity_ids=[".print_r($activity_ids,true)."]", __FILE__, __METHOD__, __LINE__);
			if (!in_array($value_activity['id'], $activity_ids_event_duplicity)) {	// Event duplicity.

				// Calculate Y-coordenate for activity(from events)
				$draw_information_activity[$value_activity['id']]['y'] = $top_Process;

				$next_activity_ids_all_tree = getNextActivities($value_activity['id']);
				//wfm_utils::wfm_log('debug', "\$next_activity_ids_all_tree".print_r($next_activity_ids_all_tree,true), __FILE__, __METHOD__, __LINE__);

				foreach($next_activity_ids_all_tree as $key => $value) {

					$next_activity_query = $db->query ("
															SELECT *
															FROM asol_activity
															WHERE id = '{$value}'
														");
					$next_activity_row = $db->fetchByAssoc($next_activity_query);

					$parent_activity_query = $db->query("
															SELECT asol_activ898activity_ida   AS parent_activity_id
															FROM asol_activisol_activity_c
															WHERE asol_activ9e2dctivity_idb  = '{$next_activity_row['id']}' AND deleted = 0
														");
					$parent_activity_row = $db->fetchByAssoc($parent_activity_query);

					$export_array['next_activities'][$parent_activity_row['parent_activity_id']][] = $next_activity_row;

					// Calculate Y-coordenate for next_activity(from activity and from next_activity)
					$number_of_child = 0;
					$next_activity_for_number_query =  $db->query ("
																		SELECT asol_activ9e2dctivity_idb AS next_activity_id
																		FROM asol_activisol_activity_c
																		WHERE asol_activ898activity_ida = '{$parent_activity_row['parent_activity_id']}' AND deleted = 0
																	");
					while ($next_activity_for_number_row = $db->fetchByAssoc($next_activity_for_number_query)) {
						$number_of_child++;
						if ($next_activity_for_number_row['next_activity_id'] == $next_activity_row['id']) {
							break;
						}
					}

					if ($number_of_child > 1) { // if == 1 then $top_Process = $top_Process -> i.e. the first next_activity has the same $top as its parent
						$top_Process = $top_Process + $height_Activity + $separation_vertical_Activity;
					}

					$draw_information_activity[$next_activity_row['id']]['y'] = $top_Process;
				}

				// separation between the last next_activity of the current activity and the following activity
				$top_Process = $top_Process + $height_Activity + $separation_vertical_Activity;

				// event duplicity
				$activity_ids_event_duplicity[] = $value_activity['id'];
				$aux_only_event_duplicity_for_this_event = false;

			} else {
				wfm_utils::wfm_log('debug', "Event duplicity", __FILE__, __METHOD__, __LINE__);
			}
		}

		if ($aux_only_event_duplicity_for_this_event) { // Can be more than one activity pointed for several events for one event -> flowChart must only draw space for one activity
			$top_Process = $top_Process + $height_Event + $separation_vertical_Event;
		}
	}
}

//wfm_utils::wfm_log('debug', "4 FINAL \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);

// SEARCH FOR TASKS FROM ACTIVITIES( from [event, activity, next_activity] )
$event_duplicity = Array();

$activity_type = Array('activities', 'next_activities');
foreach ($activity_type as $key_activity_type => $value_activity_type) {

	if (!empty($export_array[$value_activity_type])) {
		foreach ($export_array[$value_activity_type] as $key_parent => $value_parent) {// parent -> [event, activity, next_activity]

			if ($export_array[$value_activity_type][$key_parent][0] == "empty_token") {
				continue;
			}

			foreach($value_parent as $key_activity => $value_activity) {

				if (in_array($value_activity['id'], $event_duplicity)) {
					continue;
				}
				$event_duplicity[] = $value_activity['id'];
					
				// asol_Task-structure
				// id 	name 	date_entered 	date_modified 	modified_user_id 	created_by 	description 	deleted 	assigned_user_id 	delay_type 	delay 	task_type 	task_order 	task_implementation
				$tasks_from_activity__array = Array();
				$tasks_from_activity__query = $db->query("
															SELECT asol_task.*
															FROM asol_activity_asol_task_c
															INNER JOIN asol_task ON (asol_activity_asol_task_c.asol_activf613ol_task_idb = asol_task.id AND asol_activity_asol_task_c.deleted = 0)
															WHERE asol_activity_asol_task_c.asol_activ5b86ctivity_ida = '{$value_activity['id']}' AND asol_activity_asol_task_c.deleted = 0
															ORDER BY asol_task.task_order ASC, asol_task.name ASC
														");
				while ($tasks_from_activity__row = $db->fetchByAssoc($tasks_from_activity__query)) {
					$tasks_from_activity__array[] = $tasks_from_activity__row;
				}

				$export_array['tasks'][$value_activity['id']] = $tasks_from_activity__array;
			}
		}
	}
}
wfm_utils::wfm_log('debug', "5 FINAL \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);


// DRAW PROCESS
if (!empty($export_array['processes'])) {
	$draw_Process = generate_Process_HTML($export_array['processes'][0]['id'], $export_array['processes'][0]['name'], $export_array['processes'][0]['alternative_database'],$export_array['processes'][0]['trigger_module'],  $export_array['processes'][0]['status'], $export_array['processes'][0]['description']);
}

// DRAW ALL EVENTS
//$top_Process = 120;
$left_Process = 50;
$height_Event = 1+7+90+7+1;
$width_Event = 1+7+90+7+1; // = 106
$separation_vertical_Event = 50;

$draw_Events = "";
if (array_key_exists('events', $export_array)) {
	foreach ($export_array['events'] as $key_parent_process => $value_parent_process) {
		foreach ($value_parent_process as $key_event => $value_event) {
			$draw_Events .= generate_Event_HTML($value_event['id'], $value_event['name'], $value_event['description'], $draw_information_event[$value_event['id']], $left_Process, $value_event['conditions'], $value_event['type'], $value_event['trigger_type'], $export_array['processes'][0]['alternative_database'], $value_event['trigger_event'], $value_event['scheduled_type'], $value_event['subprocess_type'], $export_array['processes'][0]['trigger_module']);
			//$top_Process = $top_Process + $height_Event + $separation_vertical_Event;
		}
	}
}

// DRAW ALL ACTIVITIES(AND NEXT_ACTIVITIES) AND THEIR TASKS
$event_duplicity = Array();
$aux_counter = 0;

$draw_Activities = "";
$connections = "";
$conditions = "";
$icon_activities = "";

$activity_type = Array('activities', 'next_activities');
foreach ($activity_type as $key_activity_type => $value_activity_type) {

	//$top_Process = 120;
	$separation_horizontal_Event = 100;// for activity loop
	$separation_horizontal_Activity = 100;// for next_activity loop
	$left_Process = $left_Process + $width_Event + $separation_horizontal_Event;
	$height_Activity = 1+7+90+7+1;
	$border_Activity = 1; // this is set on the style by 'em' not by 'px', so it is relative
	$padding_Activity = 7; // this is set on the style by 'em' not by 'px', so it is relative
	$number_of_pixels_to_susbstrate_from_width_Activity = 13;
	$with_Activity_depending_on_number_of_tasks_Default = 94;// default
	$with_Activity_depending_on_number_of_tasks_Maximum = $with_Activity_depending_on_number_of_tasks_Default; // to get the nex_activity location
	$separation_vertical_Activity = 50;

	$number_of_connection = 0;

	if (array_key_exists($value_activity_type, $export_array)) {
		foreach ($export_array[$value_activity_type] as $key_parent => $value_parent) {// parent -> [event, activity, next_activity]

			if ($export_array[$value_activity_type][$key_parent][0] == "empty_token") {
				continue;
			}

			foreach ($value_parent as $key_activity => $value_activity) {

				if (in_array($value_activity['id'], $event_duplicity)) {
					wfm_utils::wfm_log('debug', "Event duplicity", __FILE__, __METHOD__, __LINE__);
					$connections .= drawConnection($key_parent, $value_activity['id'], $number_of_connection);
					continue;
				} else  {
					$connections .= drawConnection($key_parent, $value_activity['id'], $number_of_connection);
				}

				$event_duplicity[] = $value_activity['id'];
				wfm_utils::wfm_log('debug', "\$event_duplicity=[".print_r($event_duplicity,true)."]", __FILE__, __METHOD__, __LINE__);
				wfm_utils::wfm_log('debug', "\$aux_counter=[".print_r($aux_counter++,true)."]", __FILE__, __METHOD__, __LINE__);


				$top_Tasks_of_this_activity = 40;
				$left_Tasks_of_this_activity = 5;
				$height_Tasks_of_this_activity = 1+6+32+6+1;
				$width_Tasks_of_this_activity = 1+6+32+6+1; // = 46
				$separation_Tasks_of_this_activity = 5;

				$with_Activity_depending_on_number_of_tasks = $with_Activity_depending_on_number_of_tasks_Default;

				$draw_Tasks_of_this_activity = "";
				$counter_Tasks_of_this_activity = 0;

				// Draw tasks for this activity
				if (array_key_exists('tasks', $export_array)) {
					foreach ($export_array['tasks'] as $key_parent_activity => $value_parent_activity) {
						if ($key_parent_activity == $value_activity['id']) {

							foreach ($value_parent_activity as $key_task => $value_task) {
								$draw_Tasks_of_this_activity .= generate_Task_HTML($value_task['id'], $value_task['name'], $value_task['description'], $value_task['task_type'], $top_Tasks_of_this_activity, $left_Tasks_of_this_activity, $value_task['delay_type'], $value_task['delay'], $value_task['task_order'], $value_task['task_implementation']);
								$counter_Tasks_of_this_activity++;

								$left_Tasks_of_this_activity = $left_Tasks_of_this_activity + $width_Tasks_of_this_activity + $separation_Tasks_of_this_activity;
								$aux_width = $left_Tasks_of_this_activity - $number_of_pixels_to_susbstrate_from_width_Activity;// minimun-activity-width
								$with_Activity_depending_on_number_of_tasks = ($aux_width > $with_Activity_depending_on_number_of_tasks_Default) ? $aux_width : $with_Activity_depending_on_number_of_tasks_Default;
							}
						}
					}
				}

				// Calculate X-coordinate and Width-property for this activity(or next_activity)
				if ($value_activity_type == 'activities') {
					$draw_information_activity[$value_activity['id']]['x'] = $left_Process;
				} else  {
					$draw_information_activity[$value_activity['id']]['x'] = $draw_information_activity[$key_parent]['x'] + $draw_information_activity[$key_parent]['w'] + $separation_horizontal_Activity;
				}
				$draw_information_activity[$value_activity['id']]['w'] = $with_Activity_depending_on_number_of_tasks;

				// Draw activity(or next_activity) and connections. Information about delays and conditions inside the activity.
				$draw_Activities .= generate_Activity_HTML($value_activity['id'], $value_activity['name'], $value_activity['description'], $draw_information_activity[$value_activity['id']]['y'], $draw_information_activity[$value_activity['id']]['x'], $with_Activity_depending_on_number_of_tasks, $draw_Tasks_of_this_activity, $counter_Tasks_of_this_activity, $value_activity['conditions'], $value_activity['delay'], $export_array['processes'][0]['trigger_module']);
					

				$number_of_connection++;
				//$top_Process = $top_Process + $height_Activity + $separation_vertical_Activity;
			}
		}
	}
}

//wfm_utils::wfm_log('debug', "7 TEST DRAW \$export_array=[".print_r($export_array,true)."]", __FILE__, __METHOD__, __LINE__);
//wfm_utils::wfm_log('debug', "7 TEST DRAW \$draw_information_event=[".print_r($draw_information_event,true)."]", __FILE__, __METHOD__, __LINE__);
//wfm_utils::wfm_log('debug', "7 TEST DRAW \$draw_information_activity=[".print_r($draw_information_activity,true)."]", __FILE__, __METHOD__, __LINE__);

// CONTROL-PANEL
$control_panel = '
					<ul class="control_panel">
						<li class="control_panel_action">
							<img id="flowchart_info" class="control_panel_icon nice persistent" src="modules/asol_Process/___common_WFM/images/flowchart_info.png" alt="'.translate('LBL_ASOL_INFO_TITLE', 'asol_Process').'" title="'.translate('LBL_ASOL_INFO_TITLE', 'asol_Process').'" />
						</li>
						<li class="control_panel_action">
							<img class="control_panel_icon" id="refresh" src="modules/asol_Process/___common_WFM/images/flowchart_refresh.png" alt="'.translate('LBL_ASOL_REFRESH', 'asol_Process').'" title="'.translate('LBL_ASOL_REFRESH', 'asol_Process').'" onclick="loadFlowChart(true);" />
						</li>
						<li class="control_panel_action">
							<img class="control_panel_icon" src="modules/asol_Process/___common_WFM/images/overflow_ellipsis.png" alt="'.translate('LBL_ASOL_TEXT_OVERFLOW_ELLIPSIS', 'asol_Process').'" title="'.translate('LBL_ASOL_TEXT_OVERFLOW_ELLIPSIS', 'asol_Process').'" onclick="toggleEllipsis();" />
						</li>
					</ul>
				';

?>

<!-- GENERATE HTTP RESPONSE -->

<meta http-equiv="X-UA-Compatible" content="IE=9" /> <!-- needed for border-radius IE -->

<html>

	<head>
	
		<title>WF</title>
		
		<script>
			function generateConnections() {
				<?php echo $connections ?>
				<?php echo $conditions ?>
				<?php echo $delays ?>
				<?php //echo $icon_activities ?>
				
			}
		</script>
		
		<script	src="modules/asol_Process/___common_WFM/js/jquery.jsPlumb.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>"	type="text/javascript"></script>
		
		<link href="modules/asol_Process/___common_WFM/plugins_js_css_images/qTip2/jquery.qtip.min.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet">
		<script	src="modules/asol_Process/___common_WFM/plugins_js_css_images/qTip2/jquery.qtip.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>
		
		<link href="modules/asol_Process/_flowChart/flowChart.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet">
		<script	src="modules/asol_Process/_flowChart/flowChart.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>
		
	</head>
	
	<body>
	
		<?php echo $control_panel; ?>
		<?php echo $draw_Process; ?>
		<?php echo $draw_Events; ?>
		<?php echo $draw_Activities; ?>
		
		<a id='scrollToTop' href="#" class="scrollToTop"></a>
		
	</body>

</html>

<?php
wfm_utils::wfm_log('debug', 'EXIT', __FILE__);

exit;
?>