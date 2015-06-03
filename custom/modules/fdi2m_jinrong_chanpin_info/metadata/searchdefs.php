<?php
$module_name = 'fdi2m_jinrong_chanpin_info';
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
      'chanpin_daima' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_CHANPIN_DAIMA',
        'width' => '10%',
        'default' => true,
        'name' => 'chanpin_daima',
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
      'chanpin_daima' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_CHANPIN_DAIMA',
        'width' => '10%',
        'default' => true,
        'name' => 'chanpin_daima',
      ),
      'danbao_fangshi' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_DANBAO_FANGSHI',
        'width' => '10%',
        'default' => true,
        'name' => 'danbao_fangshi',
      ),
      'suoshu_jigou_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_SUOSHU_JIGOU',
        'id' => 'DAIK_JINRONG_JIGOU_INFO_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'suoshu_jigou_c',
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
