<?php
$module_name = 'fdi2m_jinrong_fenzhi_jigou_info';
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
          0 => 'name',
          1 => 
          array (
            'name' => 'fenzhi_jigou_bianhao',
            'label' => 'LBL_FENZHI_JIGOU_BIANHAO',
          ),
        ),
        1 => 
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
            'name' => 'wangzhan',
            'label' => 'LBL_WANGZHAN',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 'description',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'modified_by_name',
            'label' => 'LBL_MODIFIED_NAME',
          ),
          1 => 'date_modified',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
          ),
          1 => 'date_entered',
        ),
      ),
    ),
  ),
);
?>
