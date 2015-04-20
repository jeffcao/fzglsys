<?php
$popupMeta = array (
    'moduleMain' => 'fzgls_bumeng_mataine',
    'varName' => 'fzgls_bumeng_mataine',
    'orderBy' => 'fzgls_bumeng_mataine.name',
    'whereClauses' => array (
  'bumeng_num_c' => 'fzgls_bumeng_mataine_cstm.bumeng_num_c',
  'fuzeren_name_c' => 'fzgls_bumeng_mataine_cstm.fuzeren_name_c',
),
    'searchInputs' => array (
  5 => 'bumeng_num_c',
  6 => 'fuzeren_name_c',
),
    'searchdefs' => array (
  'bumeng_num_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FZGL_BUMENG_NUM',
    'width' => '10%',
    'name' => 'bumeng_num_c',
  ),
  'fuzeren_name_c' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_FZGLS_FUZEREN_NAME',
    'width' => '10%',
    'name' => 'fuzeren_name_c',
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
  'BUMENG_NUM_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGL_BUMENG_NUM',
    'width' => '10%',
    'name' => 'bumeng_num_c',
  ),
  'SUOSHU_FENGONGSI_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
    'width' => '10%',
    'name' => 'suoshu_fengongsi_c',
  ),
),
);
