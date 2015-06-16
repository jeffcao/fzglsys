<?php
$module_name = 'daik_jiekuangren_info';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
        'includes' =>
            array (
                0 =>
                    array (
                        'file' => 'custom/modules/daik_jiekuangren_info/javascripts/jiekuangren_custom_funs.js',
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
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL2' => 
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
            'name' => 'danang_bianhao',
            'label' => 'LBL_DANANG_BIANHAO',
          ),
          1 => 'name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'zhengjian_leixin',
            'studio' => 'visible',
            'label' => 'LBL_ZHENGJIAN_LEIXIN',
          ),
          1 => 
          array (
            'name' => 'zhengjian_haoma',
            'label' => 'LBL_ZHENGJIAN_HAOMA',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'zhiwu',
            'label' => 'LBL_ZHIWU',
          ),
          1 => 
          array (
            'name' => 'lianxi_dianhua',
            'label' => 'LBL_LIANXI_DIANHUA',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'hunyin_zhuangkuang',
            'label' => 'LBL_HUNYIN_ZHUANGKUANG',
          ),
          1 => 
          array (
            'name' => 'xindai_guwen_c',
            'studio' => 'visible',
            'label' => 'LBL_XINDAI_GUWEN',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'jiating_zhizhu',
            'label' => 'LBL_JIATING_ZHIZHU',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'gongzuo_danwei',
            'label' => 'LBL_GONGZUO_DANWEI',
          ),
        ),
        6 => 
        array (
          0 => 'description',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_xinming',
            'label' => 'LBL_QITA_LIANXIREN_XINMING',
          ),
          1 => 
          array (
            'name' => 'qita_lianxiren_dianhua',
            'label' => 'LBL_QITA_LIANXIREN_DIANHUA',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianren_guanxi',
            'label' => 'LBL_QITA_LIANREN_GUANXI',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'jiekuanren_peiou_xinming',
            'label' => 'LBL_JIEKUANREN_PEIOU_XINMING',
          ),
          1 => 
          array (
            'name' => 'peiou_zhengjian_leixin',
            'studio' => 'visible',
            'label' => 'LBL_PEIOU_ZHENGJIAN_LEIXIN',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'peiou_zhengjian_haoma',
            'label' => 'LBL_PEIOU_ZHENGJIAN_HAOMA',
          ),
          1 => 
          array (
            'name' => 'peiou_zhiwu',
            'label' => 'LBL_PEIOU_ZHIWU',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'peiou_gongzuo_danwei',
            'label' => 'LBL_PEIOU_GONGZUO_DANWEI',
          ),
        ),
      ),
    ),
  ),
);
?>
