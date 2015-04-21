<?php
$popupMeta = array (
    'moduleMain' => 'fzgls_jiekuangren_dangan',
    'varName' => 'fzgls_jiekuangren_dangan',
    'orderBy' => 'fzgls_jiekuangren_dangan.first_name, fzgls_jiekuangren_dangan.last_name',
    'whereClauses' => array (
  'dangan_num_c' => 'fzgls_jiekuangren_dangan_cstm.dangan_num_c',
  'xinbie_type_c' => 'fzgls_jiekuangren_dangan_cstm.xinbie_type_c',
  'name' => 'fzgls_jiekuangren_dangan.name',
  'lianxi_phone_c' => 'fzgls_jiekuangren_dangan_cstm.lianxi_phone_c',
  'zhengjian_num_c' => 'fzgls_jiekuangren_dangan_cstm.zhengjian_num_c',
  'peiou_name_c' => 'fzgls_jiekuangren_dangan_cstm.peiou_name_c',
),
    'searchInputs' => array (
  2 => 'dangan_num_c',
  3 => 'xinbie_type_c',
  4 => 'name',
  5 => 'lianxi_phone_c',
  6 => 'zhengjian_num_c',
  7 => 'peiou_name_c',
),
    'searchdefs' => array (
  'dangan_num_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FZGLS_DANGAN_NUM',
    'width' => '10%',
    'name' => 'dangan_num_c',
  ),
  'xinbie_type_c' => 
  array (
    'type' => 'radioenum',
    'studio' => 'visible',
    'label' => 'LBL_XINBIE_TYPE',
    'width' => '10%',
    'name' => 'xinbie_type_c',
  ),
  'name' => 
  array (
    'type' => 'name',
    'link' => true,
    'label' => 'LBL_NAME',
    'width' => '10%',
    'name' => 'name',
  ),
  'lianxi_phone_c' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXI_PHONE',
    'width' => '10%',
    'name' => 'lianxi_phone_c',
  ),
  'zhengjian_num_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ZHENGJIAN_NUM',
    'width' => '10%',
    'name' => 'zhengjian_num_c',
  ),
  'peiou_name_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PEIOU_NAME',
    'width' => '10%',
    'name' => 'peiou_name_c',
  ),
),
);
