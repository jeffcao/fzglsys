<?php
$popupMeta = array (
    'moduleMain' => 'yuang_bumen_info',
    'varName' => 'yuang_bumen_info',
    'orderBy' => 'yuang_bumen_info.name',
    'whereClauses' => array (
  'name' => 'yuang_bumen_info.name',
  'bumen_bianhao' => 'yuang_bumen_info.bumen_bianhao',
  'bumen_jibie_c' => 'yuang_bumen_info_cstm.bumen_jibie_c',
  'bumen_fuzeren_c' => 'yuang_bumen_info.bumen_fuzeren_c',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'bumen_bianhao',
  6 => 'bumen_jibie_c',
  7 => 'bumen_fuzeren_c',
),
    'searchdefs' => array (
  'name' => 
  array (
    'name' => 'name',
    'width' => '10%',
  ),
  'bumen_bianhao' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BUMEN_BIANHAO',
    'width' => '10%',
    'name' => 'bumen_bianhao',
  ),
  'bumen_jibie_c' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_BUMEN_JIBIE',
    'width' => '10%',
    'name' => 'bumen_jibie_c',
  ),
  'bumen_fuzeren_c' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_BUMEN_FUZEREN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'bumen_fuzeren_c',
  ),
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
  'BUMEN_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BUMEN_BIANHAO',
    'width' => '10%',
    'default' => true,
    'name' => 'bumen_bianhao',
  ),
  'BUMEN_JIBIE_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_BUMEN_JIBIE',
    'width' => '10%',
    'name' => 'bumen_jibie_c',
  ),
  'SHANGJI_BUMEN_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_SHANGJI_BUMEN',
    'id' => 'YUANG_BUMEN_INFO_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'shangji_bumen_c',
  ),
  'BUMEN_FUZEREN_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_BUMEN_FUZEREN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'bumen_fuzeren_c',
  ),
  'DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_DIANHUA',
    'width' => '10%',
    'default' => true,
    'name' => 'dianhua',
  ),
  'FUZEREN_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_FUZEREN_DIANHUA',
    'width' => '10%',
    'default' => true,
    'name' => 'fuzeren_dianhua',
  ),
),
);
