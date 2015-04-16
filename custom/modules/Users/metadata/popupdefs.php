<?php
$popupMeta = array (
    'moduleMain' => 'User',
    'varName' => 'USER',
    'orderBy' => 'user_name',
    'whereClauses' => array (
  'user_name' => 'users.user_name',
  'is_group' => 'users.is_group',
  'name' => 'users.name',
  'gong_hao_c' => 'users_cstm.gong_hao_c',
  'duty_type_c' => 'users_cstm.duty_type_c',
  'suoshu_bumeng_c' => 'users.suoshu_bumeng_c',
  'suoshu_fengongsi_c' => 'users.suoshu_fengongsi_c',
  'status' => 'users.status',
  'yuangong_status_c' => 'users_cstm.yuangong_status_c',
  'is_admin' => 'users.is_admin',
  'email' => 'users.email',
  'xinbie_type_c' => 'users_cstm.xinbie_type_c',
),
    'searchInputs' => array (
  2 => 'user_name',
  3 => 'is_group',
  4 => 'name',
  5 => 'gong_hao_c',
  6 => 'duty_type_c',
  7 => 'suoshu_bumeng_c',
  8 => 'suoshu_fengongsi_c',
  9 => 'status',
  10 => 'yuangong_status_c',
  11 => 'is_admin',
  12 => 'email',
  13 => 'xinbie_type_c',
),
    'searchdefs' => array (
  'user_name' => 
  array (
    'name' => 'user_name',
    'width' => '10%',
  ),
  'name' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_NAME',
    'width' => '10%',
    'name' => 'name',
  ),
  'xinbie_type_c' => 
  array (
    'type' => 'radioenum',
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_XINBIE_TYPE',
    'width' => '10%',
    'name' => 'xinbie_type_c',
  ),
  'gong_hao_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FZGLS_GONG_HAO',
    'width' => '10%',
    'name' => 'gong_hao_c',
  ),
  'duty_type_c' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_DUTY_TYPE',
    'width' => '10%',
    'name' => 'duty_type_c',
  ),
  'suoshu_bumeng_c' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_SUOSHU_BUMENG',
    'id' => 'FZGLS_BUMENG_MATAINE_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'suoshu_bumeng_c',
  ),
  'suoshu_fengongsi_c' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
    'id' => 'FZGLS_FENGGONGSI_INFO_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'suoshu_fengongsi_c',
  ),
  'status' => 
  array (
    'name' => 'status',
    'width' => '10%',
  ),
  'yuangong_status_c' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_YUANGONG_STATUS',
    'width' => '10%',
    'name' => 'yuangong_status_c',
  ),
  'is_admin' => 
  array (
    'name' => 'is_admin',
    'width' => '10%',
  ),
  'is_group' => 
  array (
    'name' => 'is_group',
    'width' => '10%',
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
  'USER_NAME' => 
  array (
    'width' => '5%',
    'label' => 'LBL_USER_NAME',
    'link' => true,
    'default' => true,
    'name' => 'user_name',
  ),
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
  'GONG_HAO_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_GONG_HAO',
    'width' => '10%',
  ),
  'XINBIE_TYPE_C' => 
  array (
    'type' => 'radioenum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_XINBIE_TYPE',
    'width' => '10%',
  ),
  'DUTY_TYPE_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_DUTY_TYPE',
    'width' => '10%',
  ),
  'SUOSHU_BUMENG_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_SUOSHU_BUMENG',
    'id' => 'FZGLS_BUMENG_MATAINE_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'SUOSHU_FENGONGSI_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
    'id' => 'FZGLS_FENGGONGSI_INFO_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'YUANGONG_STATUS_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_YUANGONG_STATUS',
    'width' => '10%',
  ),
  'PHONE_WORK' => 
  array (
    'width' => '25%',
    'label' => 'LBL_LIST_PHONE',
    'link' => true,
    'default' => true,
    'name' => 'phone_work',
  ),
  'STATUS' => 
  array (
    'width' => '10%',
    'label' => 'LBL_STATUS',
    'link' => false,
    'default' => true,
    'name' => 'status',
  ),
  'IS_ADMIN' => 
  array (
    'width' => '10%',
    'label' => 'LBL_ADMIN',
    'link' => false,
    'default' => true,
    'name' => 'is_admin',
  ),
),
);
