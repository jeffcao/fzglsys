<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/28
 * Time: 下午8:34
 */


$hook_version = 1;
$hook_array = Array();
$hook_array['before_save'] = Array();
$hook_array['before_save'][] = Array(1, 'fzgl_custom_fun', 'custom/modules/Employees/employees_fzgl_custom.php', 'employees_fzgl_calculate_field_class', 'get_employee_gonghao_num');

?>