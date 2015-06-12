<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/12
 * Time: 下午4:54
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get jinrong_jigou number', 'custom/modules/daik_jinrong_jigou_info/daik_jinrong_jigou_custom.php', 'jinrong_jigou_calculate_field_class', 'get_jinrong_jigou_num');

?>