<?php
$module_name = 'fzgls_fzgl_sys_jiekuangren_dangang';
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
      'form' => 
      array (
        'enctype' => 'multipart/form-data',
        'buttons' => 
        array (
          0 => 'SAVE',
          1 => 'CANCEL',
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
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'filename',
            'label' => 'LBL_FILENAME',
          ),
          1 => 
          array (
            'name' => 'file_mime_type',
            'label' => 'LBL_FILE_MIME_TYPE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'xindai_guwen_c',
            'studio' => 'visible',
            'label' => 'LBL_XINDAI_GUWEN',
          ),
          1 => 
          array (
            'name' => 'assigned_employee_c',
            'studio' => 'visible',
            'label' => 'Employee',
          ),
        ),
        3 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
