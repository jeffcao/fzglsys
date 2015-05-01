<?php 

global $sugar_config, $app_list_strings;

$site_url = (isset($sugar_config['WFM_site_url'])) ? $sugar_config['WFM_site_url'] : $sugar_config['site_url'];
$site_url = str_replace(array('https:', 'http:'), array('', ''), $site_url);// Avoid Blocked loading mixed active content

?>

<!DOCTYPE html>
<HTML>
	<HEAD>
		<META http-equiv="Content-Type" content="text/html; charset=utf-8">
	
		<TITLE>WorkFlow Editor</TITLE>
	
		<?php 
		if (!is_file(sugar_cached("include/javascript/sugar_grp1.js")) || !is_file(sugar_cached("include/javascript/sugar_grp1_yui.js")) || !is_file(sugar_cached("include/javascript/sugar_grp1_jquery.js"))) {
			$_REQUEST['root_directory'] = ".";
			require_once("jssource/minify_utils.php");
			ConcatenateFiles(".");
		}
		echo getVersionedScript('cache/include/javascript/sugar_grp1_jquery.js');
		echo getVersionedScript('cache/include/javascript/sugar_grp1_yui.js');
		echo getVersionedScript('cache/include/javascript/sugar_grp1.js');
		?>
		
		<!-- ******************************** BEGIN CSS ************************************* -->
	
			<!-- BEGIN CSS General -->
		
				<link rel="stylesheet" type="text/css" href="modules/asol_Process/___common_WFM/plugins_js_css_images/jquery.ui/css/jquery.ui.min.css?version=<?php wfm_utils::echoVersionWFM(); ?>">
				
			<!-- END CSS General -->
			
			<!-- BEGIN CSS flowChart -->
				
				<style type="text/css">
					/*
					.event, .activity_symbol, .task {
					    position: relative;
					}
					*/
				</style>
			
			<!-- END CSS flowChart -->
		
			<!-- BEGIN CSS jQuery Layout -->
			
				<link rel="stylesheet" type="text/css" href="modules/asol_Process/___common_WFM/plugins_js_css_images/layout/layout-default.css?version=<?php wfm_utils::echoVersionWFM(); ?>">
				
				<STYLE type="text/css">
			
					/* remove padding from the IFRAME-pane */ 
					.ui-layout-pane-center {
						padding: 	0;
					}
					/* masks are normally transparent - make them visible (must 'override' default) */
					.ui-layout-mask {
						background:	#C00;
						opacity:	.20;
						filter:		alpha(opacity=20); /* IE */
					}
				
					/* remove padding and scrolling from elements that contain an Accordion OR a content-div */
					.ui-layout-center ,	/* has content-div */
					.ui-layout-west ,	/* has Accordion */
					.ui-layout-east ,	/* has content-div ... */
					.ui-layout-east .ui-layout-content { /* content-div has Accordion */
						padding: 0;
						overflow: hidden;
					}
					.ui-layout-center P.ui-layout-content {
						line-height:	1.4em;
						margin:			0; /* remove top/bottom margins from <P> used as content-div */
					}
					h3, h4 { /* Headers & Footer in Center & East panes */
						font-size:		1.1em;
						background:		#EEF;
						border:			1px solid #BBB;
						border-width:	0 0 1px;
						padding:		7px 10px;
						margin:			0;
					}
					.ui-layout-east h4 { /* Footer in East-pane */
						font-size:		0.9em;
						font-weight:	normal;
						border-width:	1px 0 0;
					}
				
				
					/**
					 *	This CSS below is only for cosmetic and demo purposes
					 *	Nothing here affects the appearance of the layout
					 */
				
					body {
						background:		#DFD;
						font-family:	Arial, sans-serif;
						*font-size:		0.85em;
					}
					p {
						margin:			1em 0;
					}
			
				</STYLE>
			
			<!-- END CSS jQuery Layout -->
			
			<!-- BEGIN CSS jsTree -->
			
				<link rel="stylesheet" type="text/css" href="modules/asol_Process/___common_WFM/plugins_js_css_images/jstree/themes/default/style.css?version=<?php wfm_utils::echoVersionWFM(); ?>">
			
			<!-- END CSS jsTree -->
		
		<!-- ******************************** END CSS ************************************* -->
	
		<!-- ******************************** BEGIN JS ************************************* -->
	
			<!-- BEGIN CONFIGURATION -->
				<script type="text/javascript">
					var site_url = '<?php echo $site_url; ?>';
					var entryPoint = 'wfm_flowChartActions';
					var uid = '<?php echo $_REQUEST['uid']; ?>';
				
				</script>
			<!-- END CONFIGURATION -->
			
			
			<!-- BEGIN JS General -->
			
				<script	src="modules/asol_Process/___common_WFM/js/jquery.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>"	type="text/javascript"></script>
				<script src="modules/asol_Process/___common_WFM/plugins_js_css_images/jquery.ui/js/jquery.ui.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript" ></script>
				<script	src="modules/asol_Process/___common_WFM/plugins_js_css_images/jquery.blockUI/jquery.blockUI.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>
				
				<script src="modules/asol_Process/_flowChart/layout.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript" ></script>
				
				<?php echo wfm_utils::_getModLanguageJS('asol_Process'); ?>
				
				<script>
	
					$(document).ready(function() {
						loadFlowChart(true);
					});
		        
		        </script>
				
			<!-- END JS General -->
					
			<!-- BEGIN JS jQuery Layout -->
		
				<script type="text/javascript" src="modules/asol_Process/___common_WFM/plugins_js_css_images/layout/jquery.layout-1.4.1.js?version=<?php wfm_utils::echoVersionWFM(); ?>"></script>
				<script type="text/javascript" src="modules/asol_Process/___common_WFM/plugins_js_css_images/layout/plugins/jquery.layout.resizePaneAccordions-1.2.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>"></script>
			
				<SCRIPT type="text/javascript">
			
					var topLayout;
				
					$(document).ready(function() {
				
						myLayout = $('body').layout({
							center : {
								onresize : function () {
									scrollToTopArrowVisibility();
								}
							},
							north : {
								slideTrigger_open: "mouseover"
							},
							south : {
								size : 400,
								slideTrigger_open: "mouseover",
								initClosed: true
							},
							west : {
								size : 300,
								slideTrigger_open: "mouseover"
							},
							east : {
								size : 200,
								onresize : $.layout.callbacks.resizePaneAccordions,	// RESIZE Accordion widget when panes resize
								slideTrigger_open: "mouseover"
							}
						});
				
						// ACCORDION - in the East pane
						$("#accordion").accordion({
							heightStyle : "fill"
						});
				
					});
			
				</SCRIPT>
			
			<!-- END JS jQuery Layout -->
			
			<!-- BEGIN JS jsTree -->
			
				<script type="text/javascript" src="modules/asol_Process/___common_WFM/plugins_js_css_images/jstree/jquery.jstree.js?version=<?php wfm_utils::echoVersionWFM(); ?>"></script>
				
				<script type="text/javascript">
					$(function () {

						var to = false;
						$('#jstree_search').keyup(function () {
							if(to) { clearTimeout(to); }
							to = setTimeout(function () {
								$("#jstree_tree").jstree("search", $('#jstree_search').val());
							}, 250);
						});

						$('#jstree_tree').jstree({
							"plugins" : [ "search", "themes", "html_data", "dnd", "types", "crrm" ],
							"themes" : {
								"theme" : "default",
								"dots" : true,
								"icons" : true
							},
							"dnd" : {
								"drop_check" : function(data) {
									return drop_check(data);
								},
								"drop_finish" : function(data) {
									drop_finish(data);
								}
							},
							"crrm" : {
								"move" : {
									"check_move" : function(m) {
										return false;
									}
								}
							},
							"types" : {
								"types" : {
									"asol_Events" : {
										"start_drag" : false,
										"icon" : {
											"image" : "custom/themes/default/images/icon_asol_Events_32.gif",
											"size" : "100% auto"
										}
									},
									"asol_Activity" : {
										"start_drag" : false,
										"icon" : {
											"image" : "custom/themes/default/images/icon_asol_Activity_32.gif",
											"size" : "100% auto"
										}
									},
									"asol_Task" : {
										"start_drag" : false,
										"icon" : {
											"image" : "custom/themes/default/images/icon_asol_Task_32.gif",
											"size" : "100% auto"
										}
									},
									
									"asol_Events_" : {
										"icon" : {
											"image" : "custom/themes/default/images/Createasol_Events.gif",
											"size" : "100% auto"
										}
									},
									
									"asol_Activity_1" : {
										"icon" : {
											"image" : "custom/themes/default/images/Createasol_Activity.gif",
											"size" : "100% auto"
										}
									},
									
									"asol_Task_send_email" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_send_email_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_php_custom" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_php_custom_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_continue" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_continue_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_end" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_end_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_create_object" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_create_object_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_modify_object" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_modify_object_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_modify_object" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_modify_object_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_call_process" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_call_process_32.png",
											"size" : "100% auto"
										}
									},
									"asol_Task_add_custom_variables" : {
										"icon" : {
											"image" : "modules/asol_Process/_flowChart/images/task_add_custom_variables_32.png",
											"size" : "100% auto"
										}
									}
								}
							}
						});
						
					});
				</script>
			
			<!-- END JS jsTree -->
		
		<!-- ******************************** END JAVASCRIPT ************************************* -->
	
	</HEAD>
<BODY>

	<DIV class="ui-layout-center" id="ui-layout-center" style="overflow: auto"></DIV>
	
	<DIV class="ui-layout-west">
		<h3 class="ui-widget-header">New Entities</h3>
	
		<div class="ui-layout-content">
			
			<input type="text" placeholder="Search" id="jstree_search" style="box-shadow:inset 0 0 4px #eee; width:120px; margin:0; padding:6px 12px; border-radius:4px; border:1px solid silver; font-size:1.1em;" value="">
			
			<div id="jstree_tree">
				<ul>
					<li module="asol_Events" rel="asol_Events" >
						<a href="#"><?php echo $app_list_strings['moduleList']['asol_Events']; ?></a>
						<ul>
							<li trigger_type="logic_hook" trigger_event="on_create" scheduled_type="" subprocess_type="" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['logic_hook']}
										{$app_list_strings['wfm_trigger_event_list']['on_create']}
									"; ?>
								</a>
							</li>
							<li trigger_type="logic_hook" trigger_event="on_modify" scheduled_type="" subprocess_type="" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['logic_hook']}
										{$app_list_strings['wfm_trigger_event_list']['on_modify']}
									"; ?>
								</a>
							</li>
							<li trigger_type="logic_hook" trigger_event="on_delete" scheduled_type="" subprocess_type="" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['logic_hook']}
										{$app_list_strings['wfm_trigger_event_list']['on_delete']}
									"; ?>
								</a>
							</li>
							<li trigger_type="scheduled" trigger_event="" scheduled_type="sequential" subprocess_type="" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['scheduled']}
										{$app_list_strings['wfm_scheduled_type_list']['sequential']}
									"; ?>
								</a>
							</li>
							<li trigger_type="scheduled" trigger_event="" scheduled_type="parallel" subprocess_type="" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['scheduled']}
										{$app_list_strings['wfm_scheduled_type_list']['parallel']}
									"; ?>
								</a>
							</li>
							<li trigger_type="subprocess" trigger_event="" scheduled_type="" subprocess_type="sequential" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['subprocess']}
										{$app_list_strings['wfm_subprocess_type_list']['sequential']}
									"; ?>
								</a>
							</li>
							<li trigger_type="subprocess" trigger_event="" scheduled_type="" subprocess_type="parallel" rel="asol_Events_">
								<a href="#">
									<?php echo "
										{$app_list_strings['wfm_trigger_type_list']['subprocess']}
										{$app_list_strings['wfm_subprocess_type_list']['parallel']}
									"; ?>
								</a>
							</li>
						</ul>
					</li>
					
					<li module="asol_Activity" rel="asol_Activity" >
						<a href="#"><?php echo $app_list_strings['moduleList']['asol_Activity']; ?></a>
						<ul>
							<li type="foreach_ingroup" rel="asol_Activity_1">
								<a href="#"><?php echo $app_list_strings['wfm_activity_type_list']['foreach_ingroup']; ?></a>
							</li>
						</ul>
					</li>
					
					<li id="asol_Task" rel="asol_Task" >
						<a href="#"><?php echo $app_list_strings['moduleList']['asol_Task']; ?></a>
						<ul>
							<li type="send_email" rel="asol_Task_send_email">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['send_email']; ?></a>
							</li>
							<li type="php_custom" rel="asol_Task_php_custom">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['php_custom']; ?></a>
							</li>
							<li type="continue" rel="asol_Task_continue">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['continue']; ?></a>
							</li>
							<li type="end" rel="asol_Task_end">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['end']; ?></a>
							</li>
							<li type="create_object" rel="asol_Task_create_object">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['create_object']; ?></a>
							</li>
							<li type="modify_object" rel="asol_Task_modify_object">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['modify_object']; ?></a>
							</li>
							<li type="call_process" rel="asol_Task_call_process">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['call_process']; ?></a>
							</li>
							<li type="add_custom_variables" rel="asol_Task_add_custom_variables">
								<a href="#"><?php echo $app_list_strings['wfm_task_type_list']['add_custom_variables']; ?></a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			
		</div>
	</DIV>
	
	<DIV class="ui-layout-east">
		<h3 class="ui-widget-header">Old Entities</h3>
	
		<div class="ui-layout-content">
			<div id="accordion" class="basic">
	
				<h3><a href="#">Events</a></h3>
				<div>
					
				</div>
	
				<h3><a href="#">Activities</a></h3>
				<div>
					
				</div>
	
				<h3><a href="#">Tasks</a></h3>
				<div>
					
				</div>
	
			</div>
		</div>
	</DIV>
	
	<DIV class="ui-layout-north"> 
		Feedback Panel 
	</DIV>
	
	<IFRAME  id="objectEditor" class="ui-layout-south" scrolling="auto" src="index.php?module=asol_Process&action=EditView&record=<?php echo $_REQUEST['uid']; ?>&sugar_body_only=false"></IFRAME>
	
	</BODY>
</HTML>