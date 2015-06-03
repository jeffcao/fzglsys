<?php
$module_name = 'fdi2m_jinrong_chanpin_info';
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
            'name' => 'chanpin_daima',
            'label' => 'LBL_CHANPIN_DAIMA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'danbao_fangshi',
            'label' => 'LBL_DANBAO_FANGSHI',
          ),
          1 => 
          array (
            'name' => 'zuigao_erdu',
            'label' => 'LBL_ZUIGAO_ERDU',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'zuichang_qixian',
            'label' => 'LBL_ZUICHANG_QIXIAN',
          ),
          1 => 
          array (
            'name' => 'lilv',
            'label' => 'LBL_LILV',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'suoshu_jigou_c',
            'studio' => 'visible',
            'label' => 'LBL_SUOSHU_JIGOU',
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
