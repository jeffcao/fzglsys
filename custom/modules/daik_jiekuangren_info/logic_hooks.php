<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/4/17
 * Time: 下午4:29
 */
$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get dangan number', 'custom/modules/daik_jiekuangren_info/daik_jiekuangren_custom.php', 'jiekuangren_custom_class', 'get_dangan_num');

$hook_array['process_record'][] =  Array(1,
    'show_other_fields',
    'custom/modules/daik_jiekuangren_info/daik_jiekuangren_custom.php',
    'jiekuangren_custom_class',
    'show_other_fields');
$hook_array['after_retrieve'][] = Array(1,
    'show_other_fields',
    'custom/modules/daik_jiekuangren_info/daik_jiekuangren_custom.php',
    'jiekuangren_custom_class',
    'show_other_fields');
?>

?>