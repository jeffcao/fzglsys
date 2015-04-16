<?php
$viewdefs ['Users'] = 
array (
  'DetailView' => 
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
      'form' => 
      array (
        'headerTpl' => 'modules/Users/tpls/DetailViewHeader.tpl',
        'footerTpl' => 'modules/Users/tpls/DetailViewFooter.tpl',
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_USER_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EMPLOYEE_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'LBL_USER_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 'user_name',
          1 => 
          array (
            'name' => 'first_name',
            'label' => 'LBL_FIRST_NAME',
          ),
        ),
        1 => 
        array (
          0 => 'status',
          1 => 
          array (
            'name' => 'last_name',
            'label' => 'LBL_LAST_NAME',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'UserType',
            'customCode' => '{$USER_TYPE_READONLY}',
          ),
        ),
        3 => 
        array (
          0 => 'picture',
        ),
      ),
      'LBL_EMPLOYEE_INFORMATION' => 
      array (
        0 => 
        array (
          0 => 'full_name',
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
            'name' => 'duty_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_DUTY_TYPE',
          ),
          1 => 
          array (
            'name' => 'xinbie_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_XINBIE_TYPE',
          ),
        ),
        2 => 
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
        3 => 
        array (
          0 => 
          array (
            'name' => 'shenfen_zheng_c',
            'label' => 'LBL_FZGLS_SHENFEN_ZHENG',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'yuangong_status_c',
            'studio' => 'visible',
            'label' => 'LBL_YUANGONG_STATUS',
          ),
          1 => 'employee_status',
        ),
        5 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
