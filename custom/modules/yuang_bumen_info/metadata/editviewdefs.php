<?php
$module_name = 'yuang_bumen_info';
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
            'name' => 'bumen_bianhao',
            'label' => 'LBL_BUMEN_BIANHAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'dianhua',
            'label' => 'LBL_DIANHUA',
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
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'bumen_fuzeren_c',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN_FUZEREN',
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
