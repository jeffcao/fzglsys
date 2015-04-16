<?php
$module_name = 'fzgls_bumeng_mataine';
$viewdefs [$module_name] = 
array (
  'QuickCreate' => 
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
          0 => 
          array (
            'name' => 'bumeng_name_c',
            'label' => 'LBL_FZGLS_BUMENG_NAME',
          ),
          1 => 
          array (
            'name' => 'bumeng_num_c',
            'label' => 'LBL_FZGL_BUMENG_NUM',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'fuzeren_name_c',
            'label' => 'LBL_FZGLS_FUZEREN_NAME',
          ),
          1 => 
          array (
            'name' => 'suoshu_fengongsi_c',
            'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
          ),
        ),
      ),
    ),
  ),
);
?>
