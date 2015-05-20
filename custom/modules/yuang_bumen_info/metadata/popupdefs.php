<?php
$popupMeta = array (
    'moduleMain' => 'yuang_bumen_info',
    'varName' => 'yuang_bumen_info',
    'orderBy' => 'yuang_bumen_info.name',
    'whereClauses' => array (
  'name' => 'yuang_bumen_info.name',
  'bumen_bianhao' => 'yuang_bumen_info.bumen_bianhao',
  'assigned_user_id' => 'yuang_bumen_info.assigned_user_id',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'bumen_bianhao',
  5 => 'assigned_user_id',
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
  'assigned_user_id' => 
  array (
    'name' => 'assigned_user_id',
    'label' => 'LBL_ASSIGNED_TO',
    'type' => 'enum',
    'function' => 
    array (
      'name' => 'get_user_array',
      'params' => 
      array (
        0 => false,
      ),
    ),
    'width' => '10%',
  ),
),
);
