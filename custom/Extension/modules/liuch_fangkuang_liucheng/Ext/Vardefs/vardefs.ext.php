<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/5/3
 * Time: 下午2:35
 */
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_bianhao_c']= array(
    'source' => 'non-db',
    'dbType' => 'non-db',
    'name' => 'jiekuangren_bianhao_c',
    'vname' => 'LBL_JIEKUANGREN_BIANHAO',
//    'type' => 'relate',
    'rname' => 'danang_bianhao',
//    'id_name' => 'daik_jiekuangren_info_id_c',
//    'link' => 'daik_jiekuangren_info',
    'module' => 'daik_jiekuangren_info',
    'studio' => 'visible',
);
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_leixin_c']= array(
    'name' => 'jiekuangren_zhengjian_leixin_c',
    'vname' => 'LBL_JIEKUANGREN_ZHENGJIAN_LEIXIN',
//    'type' => 'enum',
    'rname' => 'zhengjian_leixin',
//    'options' => 'fzglsys_zhengjian_type_list',
//    'id_name' => 'daik_jiekuangren_info_id_c',
//    'link' => 'daik_jiekuangren_info',
    'module' => 'daik_jiekuangren_info',
    'source' => 'non-db',
    'dbType' => 'non-db',
    'studio' => 'visible',
);

$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_haoma_c']= array(
    'name' => 'jiekuangren_zhengjian_haoma_c',
    'vname' => 'LBL_JIEKUANGREN_ZHENGJIANHAOMA',
//    'type' => 'relate',
    'rname' => 'zhengjian_haoma',
//    'id_name' => 'daik_jiekuangren_info_id_c',
//    'link' => 'daik_jiekuangren_info',
    'module' => 'daik_jiekuangren_info',
    'source' => 'non-db',
    'dbType' => 'non-db',
    'studio' => 'visible',
);
?>