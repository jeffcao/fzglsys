<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will	
// be automatically rebuilt in the future. 
 $hook_version = 1; 
$hook_array = Array(); 
// position, file, function 
$hook_array['before_save'] = Array(); 
$hook_array['before_save'][] = Array(1, 'Leads push feed', 'modules/Leads/SugarFeeds/LeadFeed.php','LeadFeed', 'pushFeed'); 
$hook_array['before_save'][] = Array(2, 'wfm_hook', 'custom/include/wfm_hook.php','wfm_hook_process', 'execute_process'); 
$hook_array['after_ui_frame'] = Array(); 
$hook_array['after_ui_frame'][] = Array(1, 'Leads InsideView frame', 'modules/Connectors/connectors/sources/ext/rest/insideview/InsideViewLogicHook.php','InsideViewLogicHook', 'showFrame'); 
$hook_array['after_save'] = Array(); 
$hook_array['after_save'][] = Array(2, 'wfm_hook', 'custom/include/wfm_hook.php','wfm_hook_process', 'execute_process'); 
$hook_array['before_delete'] = Array(); 
$hook_array['before_delete'][] = Array(2, 'wfm_hook', 'custom/include/wfm_hook.php','wfm_hook_process', 'execute_process'); 



?>