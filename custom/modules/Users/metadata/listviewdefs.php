<?php
$listViewDefs ['Users'] = 
array (
  'NAME' => 
  array (
    'width' => '30%',
    'label' => 'LBL_LIST_NAME',
    'link' => true,
    'related_fields' => 
    array (
      0 => 'last_name',
      1 => 'first_name',
    ),
    'orderBy' => 'last_name',
    'default' => true,
  ),
  'USER_NAME' => 
  array (
    'width' => '5%',
    'label' => 'LBL_USER_NAME',
    'link' => true,
    'default' => true,
  ),
  'GONGHAO_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_GONGHAO',
    'width' => '10%',
  ),
  'SHENGFENZHENG_HAO_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_SHENGFENZHENG_HAO',
    'width' => '10%',
  ),
  'XIEBIE_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_XIEBIE',
    'width' => '10%',
  ),
  'GANGWEI_LEIXIN_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_GANGWEI_LEIXIN',
    'width' => '10%',
  ),
  'PHONE_WORK' => 
  array (
    'width' => '25%',
    'label' => 'LBL_LIST_PHONE',
    'link' => true,
    'default' => true,
  ),
  'ZAIZHI_ZHUANGTAI_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_ZAIZHI_ZHUANGTAI',
    'width' => '10%',
  ),
  'STATUS' => 
  array (
    'width' => '10%',
    'label' => 'LBL_STATUS',
    'link' => false,
    'default' => true,
  ),
  'IS_ADMIN' => 
  array (
    'width' => '10%',
    'label' => 'LBL_ADMIN',
    'link' => false,
    'default' => true,
  ),
  'IS_GROUP' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_GROUP',
    'link' => true,
    'default' => false,
  ),
);
?>
