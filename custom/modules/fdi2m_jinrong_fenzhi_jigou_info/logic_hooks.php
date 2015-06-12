<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/12
 * Time: 下午5:15
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get jinrong_fenzhi_jigou number', 'custom/modules/fdi2m_jinrong_fenzhi_jigou_info/fdi2m_jinrong_fenzhi_jigou_custom.php', 'jinrong_fenzhi_jigou_calculate_field_class', 'get_jinrong_fenzhi_jigou_num');

?>