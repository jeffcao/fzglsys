<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/16
 * Time: 下午8:43
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get qudao number', 'custom/modules/yuang_waibu_qudao_info/yuang_waibu_qudao_custom.php', 'waibu_qudao_calculate_field_class', 'get_qudao_num');

?>