<?php
$module_name = 'yuang_waibu_qudao_info';
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
      'bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'bianhao',
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
      'bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'bianhao',
      ),
      'lianxiren_xinming' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_LIANXIREN_XINMING',
        'width' => '10%',
        'default' => true,
        'name' => 'lianxiren_xinming',
      ),
      'lianxiren_dianhua' => 
      array (
        'type' => 'phone',
        'label' => 'LBL_LIANXIREN_DIANHUA',
        'width' => '10%',
        'default' => true,
        'name' => 'lianxiren_dianhua',
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
