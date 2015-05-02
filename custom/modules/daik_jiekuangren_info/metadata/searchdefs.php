<?php
$module_name = 'daik_jiekuangren_info';
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
      'danang_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_DANANG_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'danang_bianhao',
      ),
      'current_user_only' => 
      array (
        'name' => 'current_user_only',
        'label' => 'LBL_CURRENT_USER_FILTER',
        'type' => 'bool',
        'default' => true,
        'width' => '10%',
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
      'danang_bianhao' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_DANANG_BIANHAO',
        'width' => '10%',
        'default' => true,
        'name' => 'danang_bianhao',
      ),
      'zhengjian_haoma' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_ZHENGJIAN_HAOMA',
        'width' => '10%',
        'default' => true,
        'name' => 'zhengjian_haoma',
      ),
      'lianxi_dianhua' => 
      array (
        'type' => 'phone',
        'label' => 'LBL_LIANXI_DIANHUA',
        'width' => '10%',
        'default' => true,
        'name' => 'lianxi_dianhua',
      ),
      'xindai_guwen_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_XINDAI_GUWEN',
        'id' => 'USER_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'xindai_guwen_c',
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
