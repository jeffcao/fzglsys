<?php
$module_name = 'fzgls_bumeng_mataine';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
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
            'name' => 'suoshu_fengongsi_c',
            'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'fuzeren_name_c',
            'label' => 'LBL_FZGLS_FUZEREN_NAME',
          ),
          1 => 
          array (
            'name' => 'fuzeren_phone_c',
            'label' => 'LBL_FZGLS_FUZEREN_PHONE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'phone_c',
            'label' => 'LBL_FZGLS_PHONE',
          ),
          1 => 
          array (
            'name' => 'youbian_c',
            'label' => 'LBL_FZGLS_YOUBIAN',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'dizhi_c',
            'label' => 'LBL_FZGLS_DIZHI',
          ),
        ),
        5 => 
        array (
          0 => 'date_entered',
          1 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
          ),
        ),
        6 => 
        array (
          0 => 'date_modified',
          1 => 
          array (
            'name' => 'modified_by_name',
            'label' => 'LBL_MODIFIED_NAME',
          ),
        ),
        7 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
