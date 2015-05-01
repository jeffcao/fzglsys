<?php

/**
 *
 * Get all next_activities(children, grandchildren...) for an activity
 * @param $activity_id
 * @param $next_activities -> You need to call this function like this: "getNextActivities($activity_id);" without the second parameter, because this is just for implementing recursiveness(there is a call to the function inside the function itself)
 */
function getNextActivities($activity_id, & $next_activities=array()){ // recursive

	//wfm_utils::wfm_log('debug', "Executing getNextActivities function", __FILE__, __METHOD__, __LINE__);

	global $db;
	$next_activities_query = $db->query("
											SELECT asol_activ9e2dctivity_idb  AS next_activity_id
											FROM asol_activisol_activity_c
											WHERE asol_activ898activity_ida  = '{$activity_id}' AND deleted = 0
										");

	while($next_activities_row = $db->fetchByAssoc($next_activities_query)) {
		$next_activities[] = $next_activities_row['next_activity_id'];

		getNextActivities($next_activities_row['next_activity_id'], $next_activities);
	}

	return $next_activities;
}

//////////////////////////////////
//*************DRAW*************//
//////////////////////////////////

// JSPLUMB-CALL-FUNCTIONS

function drawConnection ($source, $target, $number_of_connection) {
	return 'jsPlumb.connect({
								source:"'.$source.'", target:"'.$target.'", 
							});
	';
}

function drawCondition($id) {
	return '
			var targetEndpoint = { 
									endpoint:["Image", { src:"modules/asol_Process/_flowChart/images/condition_icon_16.png" } ],
									anchor:"LeftMiddle", 
								 };
			jsPlumb.addEndpoint( "'.$id.'", targetEndpoint );
	';
}

function drawDelay($id) {
	return '
			var targetEndpoint = { 
									endpoint:["Image", { src:"modules/asol_Process/_flowChart/images/delay_icon_24.png" } ],
									anchor:"TopCenter", 
								 };
			var delay = jsPlumb.addEndpoint( "'.$id.'", targetEndpoint );
			
			delay.bind("mouseenter", function(delay) {
				console.log("you clicked on ", delay);
				console.log("you clicked on id ", delay.id);
				console.log("you clicked on id ", delay.elementId);
			});
			
	';
}

//-------------------DRAW NODE FUNCTIONS-----------------------//

//window.opener.location=\'index.php?module=asol_Process&action=DetailView&record='.$id.'\';
function generate_Process_HTML($id, $name, $alternative_database, $trigger_module, $status, $description) {

	return '
		<div class="process_name">
			<table>
				<tr>
					<td>
						<img src="modules/asol_Process/_flowChart/images/process_'.$status.'_32.png" style="margin-bottom: -5px;" />
					</td>
					<td>
						<a class="jstree-drop process" module="asol_Process" link_id="'.$id.'" onclick="" qtip_info="'.generate_process_info_HTML($alternative_database, $trigger_module, $status, $description).'">'.$name.'</a>
					</td>
				</tr>
			</table>
		</div>
	';
}

function generate_Event_HTML($id, $name, $description, $top, $left, $event_conditions, $type, $trigger_type, $alternative_database, $trigger_event, $scheduled_type, $subprocess_type, $module) {

	global $app_list_strings;

	$draw_Condition = "";
	if (!($event_conditions == "")) {
		$conditions_to_print = generate_conditions_HTML($event_conditions, $module);
		//wfm_utils::wfm_log('debug', "\$conditions_to_print=[".print_r($conditions_to_print,true)."]", __FILE__, __METHOD__, __LINE__);

		$draw_Condition .= '
							<span class="condition_icon_for_events">
								<img qtip_info="'.$conditions_to_print.'" src="modules/asol_Process/_flowChart/images/condition_icon_24.png">
							</span>
						';
	}

	$event_info = generate_event_info_HTML($type, $trigger_type, $alternative_database, $trigger_event, $scheduled_type, $subprocess_type);

	//window.opener.location=\'index.php?module=asol_Events&action=DetailView&record='.$id.'\';
	switch ($trigger_type) {
		case 'logic_hook':
			switch ($trigger_event) {
				case 'login_failed':
				case 'after_login':
				case 'before_logout':
					$src = "modules/asol_Process/_flowChart/images/event_{$trigger_type}_{$trigger_event}_90.png";
					$src2 = "";
					$draw_trigger_event = "";
					break;
				case 'on_create':
				case 'on_modify':
				case 'on_modify__before_save':
				case 'on_delete':
					$src = "modules/asol_Process/_flowChart/images/event_{$trigger_type}_{$type}_90.png";
					$src2= "modules/asol_Process/_flowChart/images/{$trigger_event}.gif";
					$draw_trigger_event = "<span class='trigger_event'><img alt='trigger_event' title='{$app_list_strings['wfm_trigger_event_list'][$trigger_event]}' src='{$src2}'></span>";
					break;
			}

			break;
		case 'scheduled':
			$src = "modules/asol_Process/_flowChart/images/event_{$trigger_type}_{$scheduled_type}_90.png";
			break;
		case 'subprocess':
			$src = "modules/asol_Process/_flowChart/images/event_{$trigger_type}_90.png";
			break;

	}

	return '
		<div class="event" style="top:'.$top.'px; left:'.$left.'px;">
			<div class="event_symbol jstree-drop" id="'.$id.'" style="width: 90px; height: 90px">
				<img alt="Event" qtip_info="'.$event_info.'" src="'.$src.'">
				'.$draw_trigger_event.'
				' . $draw_Condition . ' 
			</div>
			<div class="">
				<span class="event_name aux_name_overflow overflow_ellipsis_enabled">
					<a module="asol_Events" link_id="'.$id.'" onclick="" title="'.generate_name_and_description_HTML($name, $description).'">'.$name.'</a>
				</span>
			</div>
		</div>
	';
}

function generate_Activity_HTML($id, $name, $description, $top, $left, $width, $draw_Tasks_of_this_activity, $counter_Tasks_of_this_activity, $activity_conditions, $delay, $module) {

	$draw_Delay = "";
	if (!( ($delay == 'minutes - 0') || ($delay == 'hours - 0') || ($delay == 'days - 0') || ($delay == 'weeks - 0') || ($delay == 'months - 0') )) {
		$draw_Delay .= '
						<span class="delay_icon" style="left: '.(((1+7+$width+7+1)/2)-24/2).'px;">
							<img alt="'.generate_delay($delay).'" src="modules/asol_Process/_flowChart/images/delay_icon_24.png">
						</span>
					';
	}

	$draw_Condition = "";
	if (!($activity_conditions == "")) {
		$conditions_to_print = generate_conditions_HTML($activity_conditions, $module);
		$draw_Condition .= '
							<span class="condition_icon">
								<img qtip_info="'.$conditions_to_print.'" src="modules/asol_Process/_flowChart/images/condition_icon_16.png">
							</span>
						';
	}

	// window.opener.location=\'index.php?module=asol_Activity&action=DetailView&record='.$id.'\';
	return '
		<div class="activity_symbol jstree-drop"  id="'.$id.'" style="top:'.$top.'px; left:'.$left.'px; width:'.$width.'px;">
			<div>
				' . $draw_Delay . ' 
				' . $draw_Condition . ' 
				<span class="activity_name aux_name_overflow overflow_ellipsis_enabled" style="width:'.($width+6).'px;">
					<a module="asol_Activity" link_id="'.$id.'" onclick="" title="'.generate_name_and_description_HTML($name, $description).'">'.$name.'</a>
				</span>
			</div>
			<div class="activity_container_of_tasks">
			' . $draw_Tasks_of_this_activity . ' 
			</div>
		</div>
	';
}

function generate_Task_HTML($id, $name, $description, $task_type, $top, $left, $delay_type, $delay, $order, $task_implementation) {

	global $app_list_strings;

	$draw_Delay = "";
	if ($delay_type != 'no_delay') {
		$draw_Delay .= '
							<span class="delay_icon_for_task">
								<img alt="'.generate_delay($delay).'" src="modules/asol_Process/_flowChart/images/delay_icon_16.png">
							</span>
						';
	}

	$draw_Call_process_open_subprocess = "";
	if ($task_type == 'call_process') {
			
		$task_implementation_array = explode('${pipe}', $task_implementation);
		$id_process = $task_implementation_array[0];
		$name_process = $task_implementation_array[1];
		$id_event = $task_implementation_array[2];
		$name_event = $task_implementation_array[3];
			
		$subprocess_info .= '<tr>';
		$subprocess_info .= "<td><b>&nbsp; ".'SubProcess'." &nbsp;</b></td>";
		$subprocess_info .= "<td>&nbsp; ".$name_process." &nbsp;</td>";
		$subprocess_info .= '</tr>';
		$subprocess_info .= '<tr>';
		$subprocess_info .= "<td><b>&nbsp; ".'SubEvent'." &nbsp;</b></td>";
		$subprocess_info .= "<td>&nbsp; ".$name_event." &nbsp;</td>";
		$subprocess_info .= '</tr>';
			
		$draw_Call_process_open_subprocess .= '
													<span class="task_call_process_open_subprocess_icon">
														<img qtip_info="'.$subprocess_info.'" src="modules/asol_Process/_flowChart/images/task_call_process_open_subprocess_16.png" onclick="window.opener.location=\'index.php?module=asol_Events&action=DetailView&record='.$id_event.'\';" >
													</span>
												';
	}

	// window.opener.location=\'index.php?module=asol_Task&action=DetailView&record='.$id.'\';
	return '
		<div class="task" style="top:'.$top.'px; left:'.$left.'px;">
			<div class="task_name overflow_ellipsis_enabled">
				<a module="asol_Task" link_id="'.$id.'" onclick="" title="'.generate_info_for_Task_HTML($name, $description, $delay_type, $order).'">'.$name.'</a>
			</div>
			<div class="task_symbol" id="'.$id.'">
				<img alt="Task" src="modules/asol_Process/_flowChart/images/task_'.$task_type.'_32.png" title="'.$app_list_strings['wfm_task_type_list'][$task_type].'">
				' . $draw_Delay . '
				' . $draw_Call_process_open_subprocess . ' 
			</div>
		</div>	
	';
}

//-------------------AUX FUNCTIONS FOR DRAW NODE FUNCTIONS-----------------------//

function generate_delay($delay) {

	$delay_array = explode(' - ', $delay);

	switch ($delay_array[0]) {
		case 'minutes':
			$delay_label = translate('LBL_ASOL_MINUTES', 'asol_Activity');
			break;
		case 'hours':
			$delay_label = translate('LBL_ASOL_HOURS', 'asol_Activity');
			break;
		case 'days':
			$delay_label = translate('LBL_ASOL_DAYS', 'asol_Activity');
			break;
		case 'weeks':
			$delay_label = translate('LBL_ASOL_WEEKS', 'asol_Activity');
			break;
		case 'months':
			$delay_label = translate('LBL_ASOL_MONTHS', 'asol_Activity');
			break;
	}

	$delay_label = $delay_array[1]." ".$delay_label;

	return $delay_label;
}

function generate_name_and_description_HTML($name, $description) {

	// generate HTML
	$info = "";
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_NAME', 'asol_Process')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$name." &nbsp;</td>";
	$info .= '</tr>';
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_DESCRIPTION', 'asol_Process')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$description." &nbsp;</td>";
	$info .= '</tr>';

	return $info;
}

function generate_info_for_Task_HTML($name, $description, $delay_type, $order) {

	global $app_list_strings;

	// generate HTML
	$info = "";
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_NAME', 'asol_Task')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$name." &nbsp;</td>";
	$info .= '</tr>';
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_DESCRIPTION', 'asol_Task')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$description." &nbsp;</td>";
	$info .= '</tr>';
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_DELAY_TYPE', 'asol_Task')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$app_list_strings['wfm_task_delay_type_list'][$delay_type]." &nbsp;</td>";
	$info .= '</tr>';
	$info .= '<tr>';
	$info .= "<td><b>&nbsp; ".translate('LBL_TASK_ORDER', 'asol_Task')." &nbsp;</b></td>";
	$info .= "<td>&nbsp; ".$order." &nbsp;</td>";
	$info .= '</tr>';

	return $info;
}


function generate_process_info_HTML($alternative_database, $trigger_module, $status, $description) {
	wfm_utils::wfm_log('debug', 'get_defined_vars=['.var_export(get_defined_vars(), true).']', __FILE__, __METHOD__, __LINE__);

	global $app_list_strings;

	$trigger_module = ($alternative_database == '-1') ? $app_list_strings['moduleList'][$trigger_module] : $trigger_module;

	// generate HTML
	$process_info = "";
	$process_info .= '<tr>';
	$process_info .= "<td><b>&nbsp; ".translate('LBL_ASOL_TRIGGER_MODULE', 'asol_Process')." &nbsp;</b></td>";
	$process_info .= "<td>&nbsp; ".$trigger_module." &nbsp;</td>";
	$process_info .= '</tr>';
	$process_info .= '<tr>';
	$process_info .= "<td><b>&nbsp; ".translate('LBL_STATUS', 'asol_Process')." &nbsp;</b></td>";
	$process_info .= "<td>&nbsp; ".$app_list_strings['wfm_process_status_list'][$status]." &nbsp;</td>";
	$process_info .= '</tr>';
	$process_info .= '<tr>';
	$process_info .= "<td><b>&nbsp; ".translate('LBL_DESCRIPTION', 'asol_Process')." &nbsp;</b></td>";
	$process_info .= "<td>&nbsp; ".$description." &nbsp;</td>";
	$process_info .= '</tr>';

	return $process_info;
}

function generate_event_info_HTML($type, $trigger_type, $alternative_database, $trigger_event, $scheduled_type, $subprocess_type) {
	wfm_utils::wfm_log('debug', 'get_defined_vars=['.var_export(get_defined_vars(), true).']', __FILE__, __METHOD__, __LINE__);

	global $app_list_strings;

	if ($alternative_database == '-1') {
		$trigger_event = (!empty($app_list_strings['wfm_trigger_event_list'][$trigger_event])) ? $app_list_strings['wfm_trigger_event_list'][$trigger_event] : $app_list_strings['wfm_trigger_event_list_only_users'][$trigger_event];
	} else {
		$trigger_event = $trigger_event;
	}

	// generate HTML
	$event_info = "";
	$event_info .= '<tr>';
	$event_info .= "<td><b>&nbsp; ".translate('LBL_TRIGGER_TYPE', 'asol_Events')." &nbsp;</b></td>";
	$event_info .= "<td>&nbsp; ".$app_list_strings['wfm_trigger_type_list'][$trigger_type]." &nbsp;</td>";
	$event_info .= '</tr>';
	$event_info .= '<tr>';
	$event_info .= "<td><b>&nbsp; ".translate('LBL_ASOL_TRIGGER_EVENT', 'asol_Events')." &nbsp;</b></td>";
	$event_info .= "<td>&nbsp; ".$trigger_event." &nbsp;</td>";
	$event_info .= '</tr>';
	$event_info .= '<tr>';
	$event_info .= "<td><b>&nbsp; ".translate('LBL_TYPE', 'asol_Events')." &nbsp;</b></td>";
	$event_info .= "<td>&nbsp; ".$app_list_strings['wfm_events_type_list'][$type]." &nbsp;</td>";
	$event_info .= '</tr>';
	$event_info .= '<tr>';
	$event_info .= "<td><b>&nbsp; ".translate('LBL_SCHEDULED_TYPE', 'asol_Events')." &nbsp;</b></td>";
	$event_info .= "<td>&nbsp; ".$app_list_strings['wfm_scheduled_type_list'][$scheduled_type]." &nbsp;</td>";
	$event_info .= '</tr>';
	$event_info .= '<tr>';
	$event_info .= "<td><b>&nbsp; ".translate('LBL_SUBPROCESS_TYPE', 'asol_Events')." &nbsp;</b></td>";
	$event_info .= "<td>&nbsp; ".$app_list_strings['wfm_subprocess_type_list'][$subprocess_type]." &nbsp;</td>";
	$event_info .= '</tr>';

	return $event_info;
}

function generate_conditions_TableBegin_HTML() {

	return '
		<table id=\'conditions_Table\' class=\'gradient-style\'>
			<thead>
				<tr>
			
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_LOGICAL_OPERATORS', 'asol_Events').'
						</div>
					</th>
				
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_DATABASE_FIELD', 'asol_Events').'
						</div>
					</th>
					
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_OLD_BEAN_NEW_BEAN_CHANGED', 'asol_Events').'
						</div>
					</th>
					
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_IS_CHANGED', 'asol_Events').'
						</div>
					</th>
			
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_OPERATOR', 'asol_Events').'
						</div>
					</th>
			
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_FIRST_PARAMETER', 'asol_Events').'
						</div>
					</th>
			
					<th  scope=\'col\'>
						<div align=\'left\' width=\'100%\' style=\'white-space: nowrap;\'>
						'.translate('LBL_ASOL_SECOND_PARAMETER', 'asol_Events').'
						</div>
					</th>
			
				</tr>
			</thead>
			<tbody>
	';
}

function generate_conditions_TableEnd_HTML() {

	return '
			</tbody>
		</table>
	';
}

function generate_conditions_HTML($conditions_string, $module) {

	$conditions_to_print = "";
	$conditions_to_print .= generate_conditions_TableBegin_HTML();

	$conditions = explode("\${pipe}",$conditions_string);
	//wfm_utils::wfm_log('debug', "\$conditions=[".print_r($conditions,true)."]", __FILE__, __METHOD__, __LINE__);

	foreach ($conditions as $key => $value) {
			
		$values = explode("\${dp}",$conditions[$key]);
		// BEGIN - values array
		$fieldName = $values[0];
		$fieldName_array = explode("\${comma}", $fieldName);
		$OldBean_NewBean_Changed = $values[1];
		$OldBean_NewBean_Changed = stripcslashes($OldBean_NewBean_Changed);
		$isChanged = $values[2];
		$operator = $values[3];
		$Param1 = $values[4];
		$Param2 = $values[5]; $Param2 = str_replace('\_', '_', $Param2);
		$fieldType = $values[6];
		$key = $values[7];
		$isRelated = $values[8];
		$fieldIndex = $values[9];// index of module_fields, not rowIndex
		//$options_string = $values[10];
		//$options = $values[10].split("|");
		//$options_db_string = $values[11];
		//$options_db = $values[11].split("|");
		$enum_operator = $values[10];
		$enum_reference = $values[11];
		$logical_parameters = $values[12];
		// END - values array
			
		$condition_HTML = "";
		$condition_HTML .= "<tr>";
		$condition_HTML .= "<td>&nbsp; ".generate_Logical_Parameters($logical_parameters)." &nbsp;</td>";
		$condition_HTML .= "<td><b>&nbsp; ".generate_Name_of_the_Field($key, $fieldName_array, $module)." &nbsp;</b></td>";
		$condition_HTML .= "<td>&nbsp; ".(($isRelated == 'false') ? generate_OldBean_NewBean_Changed($OldBean_NewBean_Changed) : "")." &nbsp;</td>";
		$condition_HTML .= "<td>&nbsp; ".(($OldBean_NewBean_Changed == 'changed') ? generate_IsChanged($isChanged) : "") ." &nbsp;</td>";
		$condition_HTML .= "<td>&nbsp; ".(($OldBean_NewBean_Changed != 'changed') ? generate_Operator($operator) : "") ." &nbsp;</td>";
		$condition_HTML .= "<td>&nbsp; ".(($OldBean_NewBean_Changed != 'changed') ? generate_Param1($Param1, $enum_reference, $fieldType, $operator) : "") ." &nbsp;</td>";
		$condition_HTML .= "<td>&nbsp; ".(($OldBean_NewBean_Changed != 'changed') ? $Param2 : "") ." &nbsp;</td>";
		$condition_HTML .= "</tr>";

		$conditions_to_print .= $condition_HTML;
	}

	$conditions_to_print .= generate_conditions_TableEnd_HTML();

	return $conditions_to_print;
}

//-------------------LANGUAGE AUX FUNCTIONS FOR DRAW NODE FUNCTIONS-----------------------//

function generate_Logical_Parameters($logical_parameters) {

	//wfm_utils::wfm_log('debug', "\$logical_parameters=[".print_r($logical_parameters,true)."]", __FILE__, __METHOD__, __LINE__);

	$lbl_and = translate("LBL_ASOL_AND", 'asol_Events');
	$lbl_or = translate("LBL_ASOL_OR", 'asol_Events');

	$selectedValues = explode(':', $logical_parameters);
	$parenthesis = $selectedValues[0];
	$logicalOperator = $selectedValues[1];

	switch ($logicalOperator) {
		case 'AND':
			$operator_label = $lbl_and;;
			break;
		case 'OR':
			$operator_label = $lbl_or;
			break;
	}

	$parenthesis_array = Array(
		'0' => '',
		'1' => '(',
		'2' => '((',
		'3' => '(((',
		'-1' => '..)',
		'-2' => '..))',
		'-3' => '..)))',
	);

	$label = $parenthesis_array[$parenthesis].'&nbsp;&nbsp;&nbsp;&nbsp;'.$operator_label;

	return $label;
}

function generate_Name_of_the_Field($key, $fieldName_array, $trigger_module) {

	global $app_list_strings, $sugar_config;

	// Whether translate or not variable for all this php-file
	$translateFieldLabels = ((!isset($sugar_config['WFM_TranslateLabels'])) || ($sugar_config['WFM_TranslateLabels'])) ? true : false;

	//wfm_utils::wfm_log('debug', "\$fieldName_array=[".print_r($fieldName_array,true)."]", __FILE__, __METHOD__, __LINE__);

	$value = $fieldName_array[0];
	$label_key = $fieldName_array[1];
	$label = $fieldName_array[2];

	$value_array = explode('.',$value);
	$label_key_array = explode('.',$label_key);

	if (count($value_array) == 2) { // not a regular_field

		if (strpos($value_array[0], '_cstm') !== false) { // custom_field

			if (count($label_key_array) == 2) { // custom_field(from related_field)
				$module = $label_key_array[0];
				$lbl_module = $app_list_strings['moduleList'][$module];
				if (empty($lbl_module)) {
					$lbl_module = $module;
				}

				$field = $value_array[1];
				$lbl_field = translate($label_key_array[1], $module);
				if (empty($lbl_field)) {
					$lbl_field = $field;
				}

				if ($translateFieldLabels) {
					$inner_html = $lbl_module.'_cstm.'.$lbl_field;
				} else {
					$inner_html = $value;
				}
			} else { // custom_field(from regular_field)
				$module = $trigger_module;
				$lbl_module = $app_list_strings['moduleList'][$module];
				if (empty($lbl_module)) {
					$lbl_module = $module;
				}

				$field = $value_array[1];
				$lbl_field = translate($label_key, $module);
				if (empty($lbl_field)) {
					$lbl_field = $field;
				}

				if ($translateFieldLabels) {
					$inner_html = $lbl_module.'_cstm.'.$lbl_field;
				} else {
					$inner_html = $value;
				}
			}
		} else { // related_field

			$relatedModule = $label_key_array[0];
			$lbl_relatedModule = $app_list_strings['moduleList'][$relatedModule];
			if (empty($lbl_relatedModule)) {
				$lbl_relatedModule = $relatedModule;
			}

			$fieldRelatedModule = $value_array[1];
			$lbl_fieldRelatedModule = translate($label_key_array[1], $relatedModule);
			if (empty($lbl_fieldRelatedModule)) {
				$lbl_fieldRelatedModule = $fieldRelatedModule;
			}

			if ($translateFieldLabels) {
				$inner_html = $lbl_relatedModule.'.'.$lbl_fieldRelatedModule;
			} else {
				$inner_html = $value;
			}
		}
	} else  { // regular_field

		$module = $trigger_module;

		$field = $value;
		$lbl_field = translate($label_key, $module);
		if (empty($lbl_field)) {
			$lbl_field = $field;
		}

		if ($translateFieldLabels) {
			$inner_html = $lbl_field;
		} else {
			$inner_html = $value;
		}
	}

	$label = trim($inner_html);
	$label = (substr($label, -1) == ':') ? substr($label, 0, -1) : $label;// remove colon

	$label = ($key != '') ? "{$label} ({$key})" : $label;// related_fields

	return $label;
}

function generate_OldBean_NewBean_Changed($OldBean_NewBean_Changed) {

	$lbl_asol_old_bean = translate("LBL_ASOL_OLD_BEAN", 'asol_Events');
	$lbl_asol_new_bean = translate("LBL_ASOL_NEW_BEAN", 'asol_Events');
	$lbl_asol_changed = translate("LBL_ASOL_CHANGED", 'asol_Events');

	switch ($OldBean_NewBean_Changed) {
		case 'old_bean':
			$label = $lbl_asol_old_bean;
			break;
		case 'new_bean':
			$label = $lbl_asol_new_bean;
			break;
		case 'changed':
			$label = $lbl_asol_changed;
			break;
		default:
			$label = "";
			break;
	}

	return $label;
}

function generate_IsChanged($isChanged) {

	$lbl_asol_true = translate("LBL_ASOL_TRUE", 'asol_Events');
	$lbl_asol_false = translate("LBL_ASOL_FALSE", 'asol_Events');

	switch ($isChanged) {
		case 'true':
			$label = $lbl_asol_true;
			break;
		case 'false':
			$label = $lbl_asol_false;
			break;
		default:
			$label = "";
			break;
	}

	return $label;
}

function generate_Operator($operator) {

	//enum
	$lbl_event_equals = translate("LBL_EVENT_EQUALS", 'asol_Events');
	$lbl_event_not_equals = translate("LBL_EVENT_NOT_EQUALS", 'asol_Events');
	$lbl_event_one_of = translate("LBL_EVENT_ONE_OF", 'asol_Events');
	$lbl_event_not_one_of = translate("LBL_EVENT_NOT_ONE_OF", 'asol_Events');
	//int
	$lbl_event_less_than = translate("LBL_EVENT_LESS_THAN", 'asol_Events');
	$lbl_event_more_than = translate("LBL_EVENT_MORE_THAN", 'asol_Events');
	//datetime
	$lbl_event_before_date = translate("LBL_EVENT_BEFORE_DATE", 'asol_Events');
	$lbl_event_after_date = translate("LBL_EVENT_AFTER_DATE", 'asol_Events');
	$lbl_event_between = translate("LBL_EVENT_BETWEEN", 'asol_Events');
	$lbl_event_not_between = translate("LBL_EVENT_NOT_BETWEEN", 'asol_Events');
	$lbl_event_last = translate("LBL_EVENT_LAST", 'asol_Events');
	$lbl_event_not_last = translate("LBL_EVENT_NOT_LAST", 'asol_Events');
	$lbl_event_this = translate("LBL_EVENT_THIS", 'asol_Events');
	$lbl_event_not_this = translate("LBL_EVENT_NOT_THIS", 'asol_Events');
	$lbl_event_next = translate("LBL_EVENT_NEXT", 'asol_Events');
	$lbl_event_not_next = translate("LBL_EVENT_NOT_NEXT", 'asol_Events');
	//default
	$lbl_event_like = translate("LBL_EVENT_LIKE", 'asol_Events');
	$lbl_event_not_like = translate("LBL_EVENT_NOT_LIKE", 'asol_Events');

	switch ($operator) {
		//enum
		case 'equals':
			$label = $lbl_event_equals;
			break;
		case 'not equals':
			$label = $lbl_event_not_equals;
			break;
		case 'one of':
			$label = $lbl_event_one_of;
			break;
		case 'not one of':
			$label = $lbl_event_not_one_of;
			break;
			//int
		case 'less than':
			$label = $lbl_event_less_than;
			break;
		case 'more than':
			$label = $lbl_event_more_than;
			break;
			//datetime
		case 'before date':
			$label = $lbl_event_before_date;
			break;
		case 'after date':
			$label = $lbl_event_after_date;
			break;
		case 'between':
			$label = $lbl_event_between;
			break;
		case 'not between':
			$label = $lbl_event_not_between;
			break;
		case 'last':
			$label = $lbl_event_last;
			break;
		case 'not last':
			$label = $lbl_event_not_last;
			break;
		case 'this':
			$label = $lbl_event_this;
			break;
		case 'not this':
			$label = $lbl_event_not_this;
			break;
		case 'next':
			$label = $lbl_event_next;
			break;
		case 'not next':
			$label = $lbl_event_not_next;
			break;
			//default
		case 'like':
			$label = $lbl_event_like;
			break;
		case 'not like':
			$label = $lbl_event_not_like;
			break;
		default:
			$label = "";
			break;
	}

	return $label;
}

function generate_Param1($Param1, $enum_reference, $fieldType, $operator) {

	global $app_list_strings;

	wfm_utils::wfm_log('debug', "\$Param1=[".print_r($Param1,true)."]", __FILE__, __METHOD__, __LINE__);

	$label = "";

	switch ($fieldType) {
		case 'enum':
			$Param1_array = explode("\${dollar}", $Param1);
			foreach ($Param1_array as $key => $value) {
				$label .=  $app_list_strings[$enum_reference][$value] . "<br>"."&nbsp;&nbsp;";
			}
			$label = substr($label, 0, (-4-6-6));
			break;

		case "int":
		case "double":
		case "currency":
		case "decimal":
			$label = $Param1;
			break;

		case "datetime":
		case "date":

			switch ($operator) {
				case "last":
				case "this":
				case "next":
				case "not last":
				case "not this":
				case "not next":
					$lbl_event_day = translate("LBL_EVENT_DAY", 'asol_Events');
					$lbl_event_week = translate("LBL_EVENT_WEEK", 'asol_Events');
					$lbl_event_month = translate("LBL_EVENT_MONTH", 'asol_Events');
					$lbl_event_nquarter = translate("LBL_EVENT_NQUARTER", 'asol_Events');
					$lbl_event_fquarter = translate("LBL_EVENT_FQUARTER", 'asol_Events');
					$lbl_event_nyear = translate("LBL_EVENT_NYEAR", 'asol_Events');
					$lbl_event_fyear = translate("LBL_EVENT_FYEAR", 'asol_Events');

					switch ($Param1) {
						case 'day':
							$label = $lbl_event_day;
							break;
						case 'week':
							$label = $lbl_event_week;
							break;
						case 'month':
							$label = $lbl_event_month;
							break;
						case 'Nquarter':
							$label = $lbl_event_nquarter;
							break;
						case 'Fquarter':
							$label = $lbl_event_fquarter;
							break;
						case 'Nyear':
							$label = $lbl_event_nyear;
							break;
						case 'Fyear':
							$label = $lbl_event_fyear;
							break;
					}
					break;

				default: // [between, not between]
					$label = $Param1;
					break;
			}

			break;

		case "tinyint(1)":
			$lbl_event_true = translate("LBL_EVENT_TRUE", 'asol_Events');
			$lbl_event_false = translate("LBL_EVENT_FALSE", 'asol_Events');

			switch ($Param1) {
				case 'true':
					$label = $lbl_event_true;
					break;
				case 'false':
					$label = $lbl_event_false;
					break;
				default:
					$label = "";
					break;
			}

			break;

		default:
			$label = $Param1;
			break;
	}

	$label = str_replace('\_', '_', $label);
	return $label;
}

//////////////////////////////////////////////////////////////////////////////////////////
//**************************************DRAW********************************************//
//////////////////////////////////////////////////////////////////////////////////////////
