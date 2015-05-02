<?php
$module_name = 'yuang_fengongsi_info';
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
      'fengongsi_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENGONGSI_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'fengongsi_bianhao',
      ),
      'fuzeren_xinming' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FUZEREN_XINMING',
        'width' => '10%',
        'default' => true,
        'name' => 'fuzeren_xinming',
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
      'fengongsi_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENGONGSI_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'fengongsi_bianhao',
      ),
      'fuzeren_xinming' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FUZEREN_XINMING',
        'width' => '10%',
        'default' => true,
        'name' => 'fuzeren_xinming',
      ),
      'fuzeren_dianhua' => 
      array (
        'type' => 'phone',
        'label' => 'LBL_FUZEREN_DIANHUA',
        'width' => '10%',
        'default' => true,
        'name' => 'fuzeren_dianhua',
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
