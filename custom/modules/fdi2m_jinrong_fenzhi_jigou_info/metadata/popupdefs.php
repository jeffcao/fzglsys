<?php
$popupMeta = array (
    'moduleMain' => 'fdi2m_jinrong_fenzhi_jigou_info',
    'varName' => 'fdi2m_jinrong_fenzhi_jigou_info',
    'orderBy' => 'fdi2m_jinrong_fenzhi_jigou_info.name',
    'whereClauses' => array (
  'name' => 'fdi2m_jinrong_fenzhi_jigou_info.name',
),
    'searchInputs' => array (
  0 => 'fdi2m_jinrong_fenzhi_jigou_info_number',
  1 => 'name',
  2 => 'priority',
  3 => 'status',
),
    'listviewdefs' => array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
    'name' => 'name',
  ),
  'FENZHI_JIGOU_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FENZHI_JIGOU_BIANHAO',
    'width' => '10%',
    'default' => true,
    'name' => 'fenzhi_jigou_bianhao',
  ),
  'SUOSHU_JIGOU_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SUOSHU_JIGOU',
    'id' => 'DAIK_JINRONG_JIGOU_INFO_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'suoshu_jigou_c',
  ),
  'LIANXIREN_XINMING' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_LIANXIREN_XINMING',
    'width' => '10%',
    'default' => true,
    'name' => 'lianxiren_xinming',
  ),
  'LIANXIREN_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXIREN_DIANHUA',
    'width' => '10%',
    'default' => true,
    'name' => 'lianxiren_dianhua',
  ),
),
);
