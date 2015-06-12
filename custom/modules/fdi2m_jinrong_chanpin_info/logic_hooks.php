<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/12
 * Time: 下午5:36
 */

$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'get jinrong_chanpin number', 'custom/modules/fdi2m_jinrong_chanpin_info/fdi2m_jinrong_chanpin_custom.php', 'jinrong_chanpin_calculate_field_class', 'get_jinrong_chanpin_num');

?>