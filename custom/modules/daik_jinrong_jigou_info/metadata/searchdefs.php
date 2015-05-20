<?php
$module_name = 'daik_jinrong_jigou_info';
$searchdefs [$module_name] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'jigou_bianma' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_JIGOU_BIANMA',
        'width' => '10%',
        'default' => true,
        'name' => 'jigou_bianma',
      ),
    ),
    'advanced_search' => 
    array (
      'name' => 
      array (
        'name' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'jigou_bianma' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_JIGOU_BIANMA',
        'width' => '10%',
        'default' => true,
        'name' => 'jigou_bianma',
      ),
      'jigou_leixin' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_JIGOU_LEIXIN',
        'width' => '10%',
        'name' => 'jigou_leixin',
      ),
      'lianxiren_xinming' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_LIANXIREN_XINMING',
        'width' => '10%',
        'default' => true,
        'name' => 'lianxiren_xinming',
      ),
      'fenzhi_jigou' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENZHI_JIGOU',
        'width' => '10%',
        'default' => true,
        'name' => 'fenzhi_jigou',
      ),
      'fenzhi_jigou_bianma' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENZHI_JIGOU_BIANMA',
        'width' => '10%',
        'default' => true,
        'name' => 'fenzhi_jigou_bianma',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
