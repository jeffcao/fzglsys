<?php
$module_name = 'fzgls_jiekuangren_dangan';
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
            'name' => 'dangan_num_c',
            'label' => 'LBL_FZGLS_DANGAN_NUM',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 'full_name',
          1 => 'phone_work',
        ),
        2 => 
        array (
          0 => 'title',
          1 => 'phone_mobile',
        ),
        3 => 
        array (
          0 => 'department',
          1 => 'phone_home',
        ),
        4 => 
        array (
          0 => '',
          1 => 'phone_other',
        ),
        5 => 
        array (
          0 => 'date_entered',
          1 => 'phone_fax',
        ),
        6 => 
        array (
          0 => 'date_modified',
          1 => 'do_not_call',
        ),
        7 => 
        array (
          0 => 'assigned_user_name',
          1 => '',
        ),
        8 => 
        array (
          0 => 'email1',
        ),
        9 => 
        array (
          0 => 'primary_address_street',
          1 => 'alt_address_street',
        ),
        10 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
