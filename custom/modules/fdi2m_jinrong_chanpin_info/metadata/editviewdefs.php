<?php
$module_name = 'fdi2m_jinrong_chanpin_info';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
    'includes' =>
        array (
            0 =>
                array (
                    'file' => 'custom/modules/fdi2m_jinrong_chanpin_info/javascripts/jinrong_chanpin_custom_funs.js',
                ),
        ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'chanpin_daima',
            'label' => 'LBL_CHANPIN_DAIMA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'zuigao_erdu',
            'label' => 'LBL_ZUIGAO_ERDU',
          ),
          1 => 
          array (
            'name' => 'danbao_fangshi2_c',
            'studio' => 'visible',
            'label' => 'LBL_DANBAO_FANGSHI2',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'zuichang_qixian',
            'label' => 'LBL_ZUICHANG_QIXIAN',
          ),
          1 => 
          array (
            'name' => 'lilv',
            'label' => 'LBL_LILV',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'suoshu_jigou_c',
            'studio' => 'visible',
            'label' => 'LBL_SUOSHU_JIGOU',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
