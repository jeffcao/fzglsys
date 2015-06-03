<?php
$module_name = 'fdi2m_jinrong_fenzhi_jigou_info';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'FENZHI_JIGOU_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FENZHI_JIGOU_BIANHAO',
    'width' => '10%',
    'default' => true,
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
