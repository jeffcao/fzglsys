<?php
$module_name = 'yuang_waibu_qudao_info';
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
                        'file' => 'custom/modules/yuang_waibu_qudao_info/javascripts/waibu_qudao_custom_funs.js',
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
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'bianhao',
            'label' => 'LBL_BIANHAO',
          ),
          1 => '',
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
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
