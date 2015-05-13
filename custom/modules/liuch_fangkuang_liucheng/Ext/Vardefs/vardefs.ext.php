<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2015-05-03 08:31:54

 

 // created: 2015-05-06 10:13:49
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_bianhao_c']['merge_filter']='disabled';

 

 // created: 2015-05-03 08:40:01
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_c']['labelValue']='借款人';

 

 // created: 2015-05-08 16:01:13
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_haoma_c']['merge_filter']='disabled';

 

 // created: 2015-05-08 16:00:50
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_leixin_c']['merge_filter']='disabled';

 

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
    'type' => 'enum',
    'rname' => 'zhengjian_leixin',
    'options' => 'fzglsys_zhengjian_type_list',
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