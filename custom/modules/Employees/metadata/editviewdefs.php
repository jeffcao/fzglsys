<?php
$viewdefs ['Employees'] = 
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
          0 => 
          array (
            'name' => 'yuangong_name_c',
            'label' => 'LBL_FZGLS_YUANGONG_NAME',
          ),
          1 => 
          array (
            'name' => 'gong_hao_c',
            'label' => 'LBL_FZGLS_GONG_HAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'xinbie_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_XINBIE_TYPE',
          ),
          1 => 
          array (
            'name' => 'shenfen_zheng_c',
            'label' => 'LBL_FZGLS_SHENFEN_ZHENG',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'duty_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_DUTY_TYPE',
          ),
          1 => 'phone_mobile',
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'suoshu_bumeng_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_SUOSHU_BUMENG',
          ),
          1 => 
          array (
            'name' => 'suoshu_fengongsi_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
          ),
        ),
        4 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'guding_gongzi_c',
            'label' => 'LBL_FZGLS_GUDING_GONGZI',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'gongzi_butie_c',
            'label' => 'LBL_FZGLS_GONGZI_BUTIE',
          ),
          1 => 
          array (
            'name' => 'gongzi_jixiao_c',
            'label' => 'LBL_FZGLS_GONGZI_JIXIAO',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'yuangong_status_c',
            'studio' => 'visible',
            'label' => 'LBL_YUANGONG_STATUS',
          ),
          1 => 
          array (
            'name' => 'description',
            'label' => 'LBL_NOTES',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'email1',
            'label' => 'LBL_EMAIL',
          ),
        ),
      ),
    ),
  ),
);
?>
