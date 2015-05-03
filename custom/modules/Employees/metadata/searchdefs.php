<?php
$searchdefs ['Employees'] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'full_name' => 
      array (
        'type' => 'name',
        'studio' => 
        array (
          'formula' => false,
        ),
        'label' => 'LBL_NAME',
        'width' => '10%',
        'default' => true,
        'name' => 'full_name',
      ),
      'gonghao_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_GONGHAO',
        'width' => '10%',
        'name' => 'gonghao_c',
      ),
    ),
    'advanced_search' => 
    array (
      'full_name' => 
      array (
        'type' => 'name',
        'studio' => 
        array (
          'formula' => false,
        ),
        'label' => 'LBL_NAME',
        'width' => '10%',
        'default' => true,
        'name' => 'full_name',
      ),
      'phone' => 
      array (
        'name' => 'phone',
        'label' => 'LBL_ANY_PHONE',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'gonghao_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_GONGHAO',
        'width' => '10%',
        'name' => 'gonghao_c',
      ),
      'bumen_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_BUMEN',
        'id' => 'YUANG_BUMEN_INFO_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'bumen_c',
      ),
      'fengongsi_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_FENGONGSI',
        'id' => 'YUANG_FENGONGSI_INFO_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'fengongsi_c',
      ),
      'email' => 
      array (
        'name' => 'email',
        'label' => 'LBL_ANY_EMAIL',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
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
