<?php
$module_name = 'yuang_bumen_info';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'BUMEN_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BUMEN_BIANHAO',
    'width' => '10%',
    'default' => true,
  ),
  'BUMEN_FUZEREN_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_BUMEN_FUZEREN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_DIANHUA',
    'width' => '10%',
    'default' => true,
  ),
  'FUZEREN_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_FUZEREN_DIANHUA',
    'width' => '10%',
    'default' => true,
  ),
);
?>
