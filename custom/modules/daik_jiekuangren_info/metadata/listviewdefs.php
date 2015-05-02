<?php
$module_name = 'daik_jiekuangren_info';
$listViewDefs [$module_name] = 
array (
  'DANANG_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_DANANG_BIANHAO',
    'width' => '10%',
    'default' => true,
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'ZHENGJIAN_LEIXIN' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_ZHENGJIAN_LEIXIN',
    'width' => '10%',
  ),
  'ZHENGJIAN_HAOMA' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ZHENGJIAN_HAOMA',
    'width' => '10%',
    'default' => true,
  ),
  'LIANXI_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXI_DIANHUA',
    'width' => '10%',
    'default' => true,
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
);
?>
