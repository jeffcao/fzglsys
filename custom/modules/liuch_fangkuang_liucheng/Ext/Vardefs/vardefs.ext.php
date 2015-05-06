<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2015-05-03 08:31:54

 

 // created: 2015-05-06 10:13:49
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_bianhao_c']['merge_filter']='disabled';

 

 // created: 2015-05-03 08:40:01
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_c']['labelValue']='借款人';

 

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
    'type' => 'relate',
    'rname' => 'danang_bianhao',
    'id_name' => 'daik_jiekuangren_info_id_c',
    'link' => 'daik_jiekuangren_info',
    'module' => 'daik_jiekuangren_info',
    'studio' => 'visible',
);
$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_leixin_c']= array(
    'name' => 'jiekuangren_zhengjian_leixin_c',
    'vname' => '借款人证件类型',
    'type' => 'varchar',
    'len' => '255',
    'source' => 'non-db',
    'studio' => 'visible',
);

$dictionary['liuch_fangkuang_liucheng']['fields']['jiekuangren_zhengjian_haoma_c']= array(
    'name' => 'jiekuangren_zhengjian_haoma_c',
    'vname' => '借款人证件号码',
    'type' => 'varchar',
    'len' => '255',
    'source' => 'non-db',
    'studio' => 'visible',
);

?>