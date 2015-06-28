<?php
$viewdefs ['Employees'] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
        'includes' =>
            array (
                0 =>
                    array (
                        'file' => 'custom/modules/Employees/javascripts/employees_custom_funs.js',
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
          0 => 'employee_status',
        ),
        1 => 
        array (
          0 => 'first_name',
          1 => 
          array (
            'name' => 'last_name',
            'displayParams' => 
            array (
              'required' => true,
            ),
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'gonghao_c',
            'label' => 'LBL_GONGHAO',
          ),
          1 => 
          array (
            'name' => 'xiebie_c',
            'studio' => 'visible',
            'label' => 'LBL_XIEBIE',
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
            'name' => 'gangwei_leixin_c',
            'studio' => 'visible',
            'label' => 'LBL_GANGWEI_LEIXIN',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'bumen_c',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN',
          ),
          1 => 
          array (
            'name' => 'phone_work',
            'label' => 'LBL_OFFICE_PHONE',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'gongzi_c',
            'label' => 'LBL_GONGZI',
          ),
          1 => 
          array (
            'name' => 'jixiao_c',
            'label' => 'LBL_JIXIAO',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'butie_c',
            'label' => 'LBL_BUTIE',
          ),
          1 => 
          array (
            'name' => 'zaizhi_zhuangtai_c',
            'studio' => 'visible',
            'label' => 'LBL_ZAIZHI_ZHUANGTAI',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_NOTES',
          ),
        ),
        8 => 
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
