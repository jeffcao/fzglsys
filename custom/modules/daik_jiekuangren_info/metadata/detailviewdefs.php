<?php
$module_name = 'daik_jiekuangren_info';
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
          1 => 'DELETE',
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
        'LBL_DETAILVIEW_PANEL4' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
        ),
        'LBL_EDITVIEW_PANEL2' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
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
            'name' => 'hunyin_zhuangkuang_1_c',
            'studio' => 'visible',
            'label' => 'LBL_HUNYIN_ZHUANGKUANG_1',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'xindai_guwen_c',
            'studio' => 'visible',
            'label' => 'LBL_XINDAI_GUWEN',
          ),
          1 => 
          array (
            'name' => 'xindai_guwen_gonghao_c',
            'studio' => 'visible',
            'label' => 'LBL_XINDAI_GUWEN_GONGHAO',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'jiating_zhizhu',
            'label' => 'LBL_JIATING_ZHIZHU',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'gongzuo_danwei',
            'label' => 'LBL_GONGZUO_DANWEI',
          ),
        ),
        7 => 
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
      'lbl_detailview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_xinming_2_c',
            'label' => 'LBL_QITA_LIANXIREN_XINMING_2',
          ),
          1 => 
          array (
            'name' => 'qita_lianxiren_dianhua_2_c',
            'label' => 'LBL_QITA_LIANXIREN_DIANHUA_2',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_guanxi_2_c',
            'label' => 'LBL_QITA_LIANXIREN_GUANXI_2',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_xinming_3_c',
            'label' => 'LBL_QITA_LIANXIREN_XINMING_3',
          ),
          1 => 
          array (
            'name' => 'qita_lianxiren_dianhua_3_c',
            'label' => 'LBL_QITA_LIANXIREN_DIANHUA_3',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_guanxi_3_c',
            'label' => 'LBL_QITA_LIANXIREN_GUANXI_3',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_xinming_4_c',
            'label' => 'LBL_QITA_LIANXIREN_XINMING_4',
          ),
          1 => 
          array (
            'name' => 'qita_lianxiren_dianhua_4_c',
            'label' => 'LBL_QITA_LIANXIREN_DIANHUA_4',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_guanxi_4_c',
            'label' => 'LBL_QITA_LIANXIREN_GUANXI_4',
          ),
          1 => '',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_xinming_5_c',
            'label' => 'LBL_QITA_LIANXIREN_XINMING_5',
          ),
          1 => 
          array (
            'name' => 'qita_lianxiren_dianhua_5_c',
            'label' => 'LBL_QITA_LIANXIREN_DIANHUA_5',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'qita_lianxiren_guanxi_5_c',
            'label' => 'LBL_QITA_LIANXIREN_GUANXI_5',
          ),
          1 => '',
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
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'modified_by_name',
            'label' => 'LBL_MODIFIED_NAME',
          ),
          1 => 'date_modified',
        ),
        1 => 
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
