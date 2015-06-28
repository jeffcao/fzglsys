<?php
$module_name = 'yuang_yuangong_guanli';
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
      'gonghao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_GONGHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'gonghao',
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
      'xiebie' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_XIEBIE',
        'width' => '10%',
        'name' => 'xiebie',
      ),
      'gonghao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_GONGHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'gonghao',
      ),
      'dianhua' => 
      array (
        'type' => 'phone',
        'label' => 'LBL_DIANHUA',
        'width' => '10%',
        'default' => true,
        'name' => 'dianhua',
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
