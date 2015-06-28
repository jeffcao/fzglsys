<?php
$module_name = 'yuang_bumen_info';
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
      'bumen_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_BUMEN_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'bumen_bianhao',
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
      'bumen_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_BUMEN_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'bumen_bianhao',
      ),
      'bumen_jibie_c' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_BUMEN_JIBIE',
        'width' => '10%',
        'name' => 'bumen_jibie_c',
      ),
      'fuzeren_ximing' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FUZEREN_XIMING',
        'width' => '10%',
        'default' => true,
        'name' => 'fuzeren_ximing',
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
