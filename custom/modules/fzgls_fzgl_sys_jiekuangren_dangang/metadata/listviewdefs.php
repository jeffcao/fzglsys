<?php
$module_name = 'fzgls_fzgl_sys_jiekuangren_dangang';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'XINDAI_GUWEN_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_XINDAI_GUWEN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'ASSIGNED_EMPLOYEE_C' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'Employee',
    'id' => 'EMPLOYEE_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
);
?>
