<?php
$popupMeta = array (
    'moduleMain' => 'User',
    'varName' => 'USER',
    'orderBy' => 'user_name',
    'whereClauses' => array (
  'full_name' => 'users.full_name',
  'gonghao_c' => 'users_cstm.gonghao_c',
  'shengfenzheng_hao_c' => 'users_cstm.shengfenzheng_hao_c',
  'gangwei_leixin_c' => 'users_cstm.gangwei_leixin_c',
  'phone' => 'users.phone',
  'zaizhi_zhuangtai_c' => 'users_cstm.zaizhi_zhuangtai_c',
  'email' => 'users.email',
),
    'searchInputs' => array (
  4 => 'full_name',
  5 => 'gonghao_c',
  6 => 'shengfenzheng_hao_c',
  7 => 'gangwei_leixin_c',
  8 => 'phone',
  9 => 'zaizhi_zhuangtai_c',
  10 => 'email',
),
    'searchdefs' => array (
  'full_name' => 
  array (
    'type' => 'name',
    'studio' => 
    array (
      'formula' => false,
    ),
    'label' => 'LBL_NAME',
    'width' => '10%',
    'name' => 'full_name',
  ),
  'gonghao_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_GONGHAO',
    'width' => '10%',
    'name' => 'gonghao_c',
  ),
  'shengfenzheng_hao_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_SHENGFENZHENG_HAO',
    'width' => '10%',
    'name' => 'shengfenzheng_hao_c',
  ),
  'gangwei_leixin_c' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_GANGWEI_LEIXIN',
    'width' => '10%',
    'name' => 'gangwei_leixin_c',
  ),
  'phone' => 
  array (
    'name' => 'phone',
    'label' => 'LBL_ANY_PHONE',
    'type' => 'name',
    'width' => '10%',
  ),
  'zaizhi_zhuangtai_c' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ZAIZHI_ZHUANGTAI',
    'width' => '10%',
    'name' => 'zaizhi_zhuangtai_c',
  ),
  'email' => 
  array (
    'name' => 'email',
    'label' => 'LBL_ANY_EMAIL',
    'type' => 'name',
    'width' => '10%',
  ),
),
    'listviewdefs' => array (
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
    'name' => 'name',
  ),
  'GONGHAO_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_GONGHAO',
    'width' => '10%',
    'name' => 'gonghao_c',
  ),
  'SHENGFENZHENG_HAO_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_SHENGFENZHENG_HAO',
    'width' => '10%',
    'name' => 'shengfenzheng_hao_c',
  ),
  'XIEBIE_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_XIEBIE',
    'width' => '10%',
    'name' => 'xiebie_c',
  ),
  'GANGWEI_LEIXIN_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_GANGWEI_LEIXIN',
    'width' => '10%',
    'name' => 'gangwei_leixin_c',
  ),
  'PHONE_WORK' => 
  array (
    'width' => '25%',
    'label' => 'LBL_LIST_PHONE',
    'link' => true,
    'default' => true,
    'name' => 'phone_work',
  ),
  'ZAIZHI_ZHUANGTAI_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_ZAIZHI_ZHUANGTAI',
    'width' => '10%',
    'name' => 'zaizhi_zhuangtai_c',
  ),
  'STATUS' => 
  array (
    'width' => '10%',
    'label' => 'LBL_STATUS',
    'link' => false,
    'default' => true,
    'name' => 'status',
  ),
),
);
