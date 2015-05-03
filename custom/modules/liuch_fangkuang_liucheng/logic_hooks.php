<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/5/3
 * Time: 下午1:44
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get liucheng number', 'custom/modules/liuch_fangkuang_liucheng/liuch_fangkuang_liucheng_custom.php', 'fangkuang_liucheng_custom_class', 'get_liucheng_num');
//$hook_array['process_record'][] = Array(1,
//'show_other_fields',
//'custom/modules/liuch_fangkuang_liucheng/liuch_fangkuang_liucheng_custom.php',
//'fangkuang_liucheng_custom_class',
//'show_other_fields');
//$hook_array['before_relationship_add'][] = Array(1,
//    'show_other_fields',
//    'custom/modules/liuch_fangkuang_liucheng/liuch_fangkuang_liucheng_custom.php',
//    'fangkuang_liucheng_custom_class',
//    'show_other_fields');
$hook_array['after_retrieve'][] = Array(1,
    'show_other_fields',
    'custom/modules/liuch_fangkuang_liucheng/liuch_fangkuang_liucheng_custom.php',
    'fangkuang_liucheng_custom_class',
    'show_other_fields');
?>