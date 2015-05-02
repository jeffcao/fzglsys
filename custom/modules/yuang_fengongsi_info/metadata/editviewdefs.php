<?php
$module_name = 'yuang_fengongsi_info';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
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
            'name' => 'fengongsi_bianhao',
            'label' => 'LBL_FENGONGSI_BIANHAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'dianhau',
            'label' => 'LBL_DIANHAU',
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
            'name' => 'dizhi',
            'label' => 'LBL_DIZHI',
          ),
          1 => '',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'fuzeren_xinming',
            'label' => 'LBL_FUZEREN_XINMING',
          ),
          1 => 
          array (
            'name' => 'fuzeren_dianhua',
            'label' => 'LBL_FUZEREN_DIANHUA',
          ),
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
