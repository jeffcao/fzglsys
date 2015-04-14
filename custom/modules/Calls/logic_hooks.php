<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will	
// be automatically rebuilt in the future. 
 $hook_version = 1; 
$hook_array = Array(); 
// position, file, function 
$hook_array['after_save'] = Array(); 
$hook_array['after_save'][] = Array(1, 'WakeUp Holded Item', 'custom/include/wfm_on_hold.php','wfm_hook_on_hold', 'wakeup_on_hold'); 
$hook_array['before_save'] = Array(); 
$hook_array['before_delete'] = Array(); 
$hook_array['before_delete'][] = Array(1, 'WakeUp Holded Item', 'custom/include/wfm_on_hold.php','wfm_hook_on_hold', 'wakeup_on_hold'); 



?>