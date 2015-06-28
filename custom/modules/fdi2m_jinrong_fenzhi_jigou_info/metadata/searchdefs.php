<?php
$module_name = 'fdi2m_jinrong_fenzhi_jigou_info';
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
      'fenzhi_jigou_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENZHI_JIGOU_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'fenzhi_jigou_bianhao',
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
      'fenzhi_jigou_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_FENZHI_JIGOU_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'fenzhi_jigou_bianhao',
      ),
      'lianxiren_xinming' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_LIANXIREN_XINMING',
        'width' => '10%',
        'default' => true,
        'name' => 'lianxiren_xinming',
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
