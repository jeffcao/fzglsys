<?php
$popupMeta = array (
    'moduleMain' => 'daik_jiekuangren_info',
    'varName' => 'daik_jiekuangren_info',
    'orderBy' => 'daik_jiekuangren_info.name',
    'whereClauses' => array (
  'name' => 'daik_jiekuangren_info.name',
  'danang_bianhao' => 'daik_jiekuangren_info.danang_bianhao',
  'zhengjian_leixin' => 'daik_jiekuangren_info.zhengjian_leixin',
  'zhengjian_haoma' => 'daik_jiekuangren_info.zhengjian_haoma',
  'lianxi_dianhua' => 'daik_jiekuangren_info.lianxi_dianhua',
  'xindai_guwen_c' => 'daik_jiekuangren_info.xindai_guwen_c',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'danang_bianhao',
  5 => 'zhengjian_leixin',
  6 => 'zhengjian_haoma',
  7 => 'lianxi_dianhua',
  8 => 'xindai_guwen_c',
),
    'searchdefs' => array (
  'danang_bianhao' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_DANANG_BIANHAO',
    'width' => '10%',
    'name' => 'danang_bianhao',
  ),
  'name' => 
  array (
    'name' => 'name',
    'width' => '10%',
  ),
  'zhengjian_leixin' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ZHENGJIAN_LEIXIN',
    'width' => '10%',
    'name' => 'zhengjian_leixin',
  ),
  'zhengjian_haoma' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ZHENGJIAN_HAOMA',
    'width' => '10%',
    'name' => 'zhengjian_haoma',
  ),
  'lianxi_dianhua' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXI_DIANHUA',
    'width' => '10%',
    'name' => 'lianxi_dianhua',
  ),
  'xindai_guwen_c' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_XINDAI_GUWEN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'xindai_guwen_c',
  ),
),
    'listviewdefs' => array (
  'DANANG_BIANHAO' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_DANANG_BIANHAO',
    'width' => '10%',
    'default' => true,
    'name' => 'danang_bianhao',
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
    'name' => 'name',
  ),
  'ZHENGJIAN_LEIXIN' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_ZHENGJIAN_LEIXIN',
    'width' => '10%',
    'name' => 'zhengjian_leixin',
  ),
  'ZHENGJIAN_HAOMA' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ZHENGJIAN_HAOMA',
    'width' => '10%',
    'default' => true,
    'name' => 'zhengjian_haoma',
  ),
  'LIANXI_DIANHUA' => 
  array (
    'type' => 'phone',
    'label' => 'LBL_LIANXI_DIANHUA',
    'width' => '10%',
    'default' => true,
    'name' => 'lianxi_dianhua',
  ),
  'JIATING_ZHIZHU' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_JIATING_ZHIZHU',
    'width' => '10%',
    'default' => true,
    'name' => 'jiating_zhizhu',
  ),
  'GONGZUO_DANWEI' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_GONGZUO_DANWEI',
    'width' => '10%',
    'default' => true,
    'name' => 'gongzuo_danwei',
  ),
  'ZHIWU' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_ZHIWU',
    'width' => '10%',
    'default' => true,
    'name' => 'zhiwu',
  ),
  'HUNYIN_ZHUANGKUANG' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_HUNYIN_ZHUANGKUANG',
    'width' => '10%',
    'default' => true,
    'name' => 'hunyin_zhuangkuang',
  ),
  'QITA_LIANXIREN_XINMING' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_QITA_LIANXIREN_XINMING',
    'width' => '10%',
    'default' => true,
    'name' => 'qita_lianxiren_xinming',
  ),
  'QITA_LIANXIREN_DIANHUA' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_QITA_LIANXIREN_DIANHUA',
    'width' => '10%',
    'default' => true,
    'name' => 'qita_lianxiren_dianhua',
  ),
  'QITA_LIANREN_GUANXI' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_QITA_LIANREN_GUANXI',
    'width' => '10%',
    'default' => true,
    'name' => 'qita_lianren_guanxi',
  ),
  'JIEKUANREN_PEIOU_XINMING' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_JIEKUANREN_PEIOU_XINMING',
    'width' => '10%',
    'default' => true,
    'name' => 'jiekuanren_peiou_xinming',
  ),
  'PEIOU_ZHENGJIAN_HAOMA' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PEIOU_ZHENGJIAN_HAOMA',
    'width' => '10%',
    'default' => true,
    'name' => 'peiou_zhengjian_haoma',
  ),
  'PEIOU_ZHENGJIAN_LEIXIN' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_PEIOU_ZHENGJIAN_LEIXIN',
    'width' => '10%',
    'name' => 'peiou_zhengjian_leixin',
  ),
  'PEIOU_GONGZUO_DANWEI' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PEIOU_GONGZUO_DANWEI',
    'width' => '10%',
    'default' => true,
    'name' => 'peiou_gongzuo_danwei',
  ),
  'PEIOU_ZHIWU' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_PEIOU_ZHIWU',
    'width' => '10%',
    'default' => true,
    'name' => 'peiou_zhiwu',
  ),
  'XINDAI_GUWEN_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_XINDAI_GUWEN',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'name' => 'xindai_guwen_c',
  ),
  'XINDAI_GUWEN_GONGHAO_C' => 
  array (
    'type' => 'varchar',
    'studio' => 'visible',
    'sortable' => false,
    'label' => 'LBL_XINDAI_GUWEN_GONGHAO',
    'width' => '10%',
    'default' => true,
    'name' => 'xindai_guwen_gonghao_c',
  ),
),
);
