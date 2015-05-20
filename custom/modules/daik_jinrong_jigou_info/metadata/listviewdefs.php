<?php
$module_name = 'daik_jinrong_jigou_info';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'JIGOU_BIANMA' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_JIGOU_BIANMA',
    'width' => '10%',
    'default' => true,
  ),
  'JIGOU_LEIXIN' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_JIGOU_LEIXIN',
    'width' => '10%',
  ),
  'LIANXIREN_XINMING' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_LIANXIREN_XINMING',
    'width' => '10%',
    'default' => true,
  ),
  'LIANXIREN_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXIREN_DIANHUA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
