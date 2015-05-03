<?php
$viewdefs ['Users'] = 
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
      'form' => 
      array (
        'headerTpl' => 'modules/Users/tpls/EditViewHeader.tpl',
        'footerTpl' => 'modules/Users/tpls/EditViewFooter.tpl',
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
          0 => 
          array (
            'name' => 'user_name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 'first_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'status',
            'customCode' => '{if $IS_ADMIN}@@FIELD@@{else}{$STATUS_READONLY}{/if}',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
          1 => 'last_name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'UserType',
            'customCode' => '{if $IS_ADMIN}{$USER_TYPE_DROPDOWN}{else}{$USER_TYPE_READONLY}{/if}',
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
          0 => 
          array (
            'name' => 'full_name',
            'studio' => 
            array (
              'formula' => false,
            ),
            'label' => 'LBL_NAME',
          ),
          1 => 
          array (
            'name' => 'gonghao_c',
            'label' => 'LBL_GONGHAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'gangwei_leixin_c',
            'studio' => 'visible',
            'label' => 'LBL_GANGWEI_LEIXIN',
          ),
          1 => 
          array (
            'name' => 'xiebie_c',
            'studio' => 'visible',
            'label' => 'LBL_XIEBIE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'bumen_c',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN',
          ),
          1 => 
          array (
            'name' => 'fengongsi_c',
            'studio' => 'visible',
            'label' => 'LBL_FENGONGSI',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'shengfenzheng_hao_c',
            'label' => 'LBL_SHENGFENZHENG_HAO',
          ),
          1 => 
          array (
            'name' => 'zaizhi_zhuangtai_c',
            'studio' => 'visible',
            'label' => 'LBL_ZAIZHI_ZHUANGTAI',
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
