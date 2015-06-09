<?php
$module_name = 'liuch_fangkuang_liucheng';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
        'includes' => array(
            0 =>
            array(
              'file' => 'custom/modules/liuch_fangkuang_liucheng/javascripts/liuch_custom_funs.js',
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
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => false,
          'panelDefault' => 'collapsed',
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
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL4' => 
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
         'SAVE',
         'CANCEL',
            array('customCode'=>'<input class="button primary" ' .
 	                                 		'					 onclick="this.form.action.value=\'submit_liucheng\'; if(check_form(\'EditView\'))SUGAR.ajaxUI.submitForm(this.form);return false;" ' .
 	                                 		'                    type="submit" ' .
 	                                 		'                    name="button" ' .
                                            '                    id="SUBMIT_LIUCHENG" ' .
 	                                 		'                    value="提交">')
 	                                 ,
        ),
          'hidden' =>
          array(
              0 => '<input type="hidden" name="liucheng_status" id="liucheng_status" value="{$liucheng_status}">',
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
            'name' => 'zhidan_date',
            'label' => 'LBL_ZHIDAN_DATE',
            'type' => 'readonly',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_bianhao_c',
            'studio' => 'visible',
            'label' => '借款人编号',
            'type' => 'readonly',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_zhengjian_leixin_c',
            'studio' => 'visible',
            'label' => '借款人证件类型',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_zhengjian_haoma_c',
            'studio' => 'visible',
            'label' => '借款人证件号码',
            'type' => 'readonly',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_jiating_zhuzhi_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_JIATING_ZHUZI',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_lianxi_dianhua_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_LIANXI_DIANHUA',
            'type' => 'readonly',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'shenqing_jine',
            'label' => 'LBL_SHENQING_JINE',
          ),
          1 => 
          array (
            'name' => 'huankuang_zhouqi',
            'label' => 'LBL_HUANKUANG_ZHOUQI',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'daikuang_leixin',
            'studio' => 'visible',
            'label' => 'LBL_DAIKUANG_LEIXIN',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'yuqi_yongjin',
            'label' => 'LBL_YUQI_YONGJIN',
          ),
          1 => 
          array (
            'name' => 'yuqi_yongjin_bili',
            'label' => 'LBL_YUQI_YONGJIN_BILI',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'yuqi_shoukuang_type',
            'studio' => 'visible',
            'label' => 'LBL_YUQI_SHOUKUANG_TYPE',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'shenfen_zhengming_filename',
            'label' => 'LBL_SHENFEN_ZHENGMING_FILENAME',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'hunyin_zhengming_filename',
            'label' => 'LBL_HUNYIN_ZHENGMING_FILENAME',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'shouru_zhengming_filename',
            'label' => 'LBL_SHOURU_ZHENGMING_FILENAME',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'caichan_zhengming_filename',
            'label' => 'LBL_CAICHAN_ZHENGMING_FILENAME',
          ),
        ),
        12 => 
        array (
          0 => 
          array (
            'name' => 'yongtu_zhengming_filename',
            'label' => 'LBL_YONGTU_ZHENGMING_FILENAME',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'qita1_zhengming_filename',
            'label' => 'LBL_QITA1_ZHENGMING_FILENAME',
          ),
        ),
        14 => 
        array (
          0 => 
          array (
            'name' => 'qita2_zhengming_filename',
            'label' => 'LBL_QITA2_ZHENGMING_FILENAME',
          ),
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'danju_zhuangtai',
            'studio' => 'visible',
            'label' => 'LBL_DANJU_ZHUANGTAI',
          ),
        ),
        16 => 
        array (
          0 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'date_entered',
            'comment' => 'Date record created',
            'label' => 'LBL_DATE_ENTERED',
            'type' => 'readonly',
          ),
        ),
        17 => 
        array (
          0 => 'description',
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_gongzuo_danwei_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_GONGZUO_DANWEI',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_zhiwu_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_ZHIWU',
            'type' => 'readonly',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_hunyin_zhuangkuang_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_HUNYIN_ZHUANGKUANG',
            'type' => 'readonly',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_qita_lianxiren_xinming_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_QITA_LIANXIREN_XINMING',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_qita_lianxiren_dianhua_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_QITA_LIANXIREN_DIANHUA',
            'type' => 'readonly',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_qita_lianxiren_guanxi_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_QITA_LIANXIREN_GUANXI',
            'type' => 'readonly',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_peiou_xinming_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_PEIOU_XINMING',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_peiou_zhiwu_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_PEIOU_ZHIWU',
            'type' => 'readonly',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_peiou_zhengjian_leixin_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_PEIOU_ZHENGJIAN_LEIXIN',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_peiou_zhengjian_haoma_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_PEIOU_ZHENGJIAN_HAOMA',
            'type' => 'readonly',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_peiou_gongzuo_danwei_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_PEIOU_GONGZUO_DANWEI',
            'type' => 'readonly',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'jiekuangren_xindai_guwen_xinming_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_XINDAI_GUWEN_XINMING',
            'type' => 'readonly',
          ),
          1 => 
          array (
            'name' => 'jiekuangren_xindai_guwen_gonghao_c',
            'studio' => 'visible',
            'label' => 'LBL_JIEKUANGREN_XINDAI_GUWEN_GONGHAO',
            'type' => 'readonly',
          ),
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'fenkong_option',
            'studio' => 'visible',
            'label' => 'LBL_FENKONG_OPTION',
          ),
          1 => 
          array (
            'name' => 'fenkong_shengpi_date',
            'label' => 'LBL_FENKONG_SHENGPI_DATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'fenkong_beizhu',
            'studio' => 'visible',
            'label' => 'LBL_FENKONG_BEIZHU',
          ),
        ),
      ),
      'lbl_editview_panel2' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'bumen_shengpi_option',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN_SHENGPI_OPTION',
          ),
          1 => 
          array (
            'name' => 'bumen_shengpi_date',
            'label' => 'LBL_BUMEN_SHENGPI_DATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'bumen_beizhu',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN_BEIZHU',
          ),
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'chanpin_shengpi_option',
            'studio' => 'visible',
            'label' => 'LBL_CHANPIN_SHENGPI_OPTION',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'chanpin_shengpi_date',
            'label' => 'LBL_CHANPIN_SHENGPI_DATE',
          ),
          1 => 
          array (
            'name' => 'yinhang_shengpi_date',
            'label' => 'LBL_YINHANG_SHENGPI_DATE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'fangkuang_date',
            'label' => 'LBL_FANGKUANG_DATE',
          ),
          1 => 
          array (
            'name' => 'fangkuang_jine',
            'label' => 'LBL_FANGKUANG_JINE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'shiji_yongjin',
            'label' => 'LBL_SHIJI_YONGJIN',
          ),
          1 => 
          array (
            'name' => 'shiji_yongjin_bili',
            'label' => 'LBL_SHIJI_YONGJIN_BILI',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'daikuang_daoqiri',
            'label' => 'LBL_DAIKUANG_DAOQIRI',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'chanpin_shoukuang_type',
            'studio' => 'visible',
            'label' => 'LBL_CHANPIN_SHOUKUANG_TYPE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'chanpin_beizhu',
            'studio' => 'visible',
            'label' => 'LBL_CHANPIN_BEIZHU',
          ),
        ),
      ),
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'kefu_ziliao_guidang',
            'studio' => 'visible',
            'label' => 'LBL_KEFU_ZILIAO_GUIDANG',
          ),
          1 => 
          array (
            'name' => 'kefu_chuli_date',
            'label' => 'LBL_KEFU_CHULI_DATE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'kefu_beizhu',
            'studio' => 'visible',
            'label' => 'LBL_KEFU_BEIZHU',
          ),
        ),
      ),
    ),
  ),
);
?>
