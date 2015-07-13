<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/7/13
 * Time: 下午9:49
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get bumen number', 'custom/modules/yuang_bumen_info/yuang_bumen_custom.php', 'bumen_calculate_field_class', 'get_bumen_num');

?>