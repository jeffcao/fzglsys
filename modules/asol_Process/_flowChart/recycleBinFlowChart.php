<?php

require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");
wfm_utils::wfm_log('asol', 'ENTRY', __FILE__);

require_once("modules/asol_Process/_flowChart/flowChartFunctions.php");

global $db;

wfm_utils::wfm_log('debug', 'ENTRY POINT $_REQUEST=['.var_export($_REQUEST, true).']', __FILE__, __METHOD__, __LINE__);

$processId = $_REQUEST['processId'];

$process = BeanFactory::getBean('asol_Process', $processId);
$link = 'asol_process_asol_task';
$tasks = $process->get_linked_beans($link, 'asol_Task', 'asol_task.task_type');


$drawTasks = '';
$left = 0;
$top = 0;
$taskHeight = 0+1+0+51+2+1+0;
$taskVerticalSeparation = 20;

foreach ($tasks as $keyTask => $task) {
	$drawTasks .= generate_Task_HTML($task->id, $task->name, $task->description, $task->task_type, $top, null, $left, $task->delay_type, $task->delay, $task->order, $task->task_implementation);
	$top += $taskHeight + $taskVerticalSeparation;
}

?>

<!-- GENERATE HTTP RESPONSE -->

<meta
	http-equiv="X-UA-Compatible" content="IE=9" />
<!-- needed for border-radius IE -->

<html>

<head>

<script	src="modules/asol_Process/___common_WFM/js/jquery.jsPlumb.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>"	type="text/javascript"></script>

<link href="modules/asol_Process/___common_WFM/plugins_js_css_images/qTip2/jquery.qtip.min.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet">
<script	src="modules/asol_Process/___common_WFM/plugins_js_css_images/qTip2/jquery.qtip.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>

<link href="modules/asol_Process/_flowChart/flowChart.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet">
<script	src="modules/asol_Process/_flowChart/flowChart.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>

</head>

<body>

<?php echo $drawTasks; ?>

	<a id='scrollToTop' href="#" class="scrollToTop"></a>

</body>

</html>

<?php
wfm_utils::wfm_log('debug', 'EXIT', __FILE__);

exit;
?>