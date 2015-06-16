<?php
$module_name = 'daik_jinrong_jigou_info';
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
                        'file' => 'custom/modules/daik_jinrong_jigou_info/javascripts/jinrong_jigou_custom_funs.js',
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
            'name' => 'jigou_leixin',
            'studio' => 'visible',
            'label' => 'LBL_JIGOU_LEIXIN',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'jigou_bianma',
            'label' => 'LBL_JIGOU_BIANMA',
          ),
          1 => 
          array (
            'name' => 'youbian',
            'label' => 'LBL_YOUBIAN',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'lianxiren_xinming',
            'label' => 'LBL_LIANXIREN_XINMING',
          ),
          1 => 
          array (
            'name' => 'lianxiren_dianhua',
            'label' => 'LBL_LIANXIREN_DIANHUA',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'dizhi',
            'label' => 'LBL_DIZHI',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'wangzhan',
            'label' => 'LBL_WANGZHAN',
          ),
          1 => '',
        ),
        5 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
