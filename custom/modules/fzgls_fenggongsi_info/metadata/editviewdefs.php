<?php
$module_name = 'fzgls_fenggongsi_info';
$_object_name = 'fzgls_fenggongsi_info';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
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
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Accounts/Account.js',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_DESCRIPTION_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_description_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'gongsi_name_c',
            'label' => 'LBL_FZGLS_GONGSI_NAME',
          ),
          1 => 
          array (
            'name' => 'gongsi_num_c',
            'label' => 'LBL_FZGLS_GONGSI_NUM',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'gongsi_youbian_c',
            'label' => 'LBL_FZGLS_GONGSI_YOUBIAN',
          ),
          1 => 
          array (
            'name' => 'gongsi_phone_c',
            'label' => 'LBL_FZGLS_GONGSI_PHONE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'gongsi_dizhi_c',
            'label' => 'LBL_FZGLS_GONGSI_DIZHI',
          ),
        ),
        3 => 
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
        4 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
