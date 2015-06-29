<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/5/3
 * Time: 下午1:44
 */

class fangkuang_liucheng_custom_class {
    public function get_liucheng_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
        global $timedate;
//        global $db;
        if ($_REQUEST['action']== "submit_liucheng"){

            if ($bean->danju_zhuangtai == "zhidanzhong") {
                $bean->danju_zhuangtai = "dai_fengkong_shenhe";
                $bean->user_id_c = $this->get_next_handler_id($bean, "fengkong_jingli");
                $bean->zhidan_date =  $timedate->to_db_date(date("m/d/Y"));
            }
            elseif ($bean->danju_zhuangtai == "dai_fengkong_shenhe") {
                if ($bean->fenkong_option == "tongyi"){
                    $bean->danju_zhuangtai = "dai_bumen_shenhe";
                    $bean->user_id1_c = $this->get_next_handler_id($bean, "bumen_jingli");
                }
                else
                    $bean->danju_zhuangtai = "zhidanzhong";
                $bean->fenkong_shengpi_date = $timedate->to_db_date(date("m/d/Y"));
            }
            elseif ($bean->danju_zhuangtai == "dai_bumen_shenhe") {
                if ($bean->bumen_shengpi_option == "tongyi") {
                    $bean->danju_zhuangtai = "dai_chanpin_shenhe";
                    $bean->user_id2_c = $this->get_next_handler_id($bean, "chanpin_jingli");
                }
                else
                    $bean->danju_zhuangtai = "zhidanzhong";
                $bean->bumen_shengpi_date =  $timedate->to_db_date(date("m/d/Y"));
            }
            elseif ($bean->danju_zhuangtai == "dai_chanpin_shenhe"){
                if ($bean->chanpin_shengpi_option == "tongyi") {
                    $bean->danju_zhuangtai = "dai_kehu_chuli";
                    $bean->user_id3_c = $this->get_next_handler_id($bean, "kefu_jingli");
                }
                elseif ($bean->chanpin_shengpi_option == "yichang_guanbi")
                    $bean->danju_zhuangtai = "yichang_guanbi";
                else
                    $bean->danju_zhuangtai = "zhidanzhong";
                $bean->chanpin_shengpi_date =  $timedate->to_db_date(date("m/d/Y"));
            }
            elseif ($bean->danju_zhuangtai == "dai_kehu_chuli"){
                $bean->kefu_chuli_date =  $timedate->to_db_date(date("m/d/Y"));
                $bean->danju_zhuangtai = "wancheng_huifang";
            }

        }

        if(isset($bean->fetched_row['id'])) { return; }
//        (isset($arguments['isUpdate']) && $arguments['isUpdate'] == false)

        $created_user = BeanFactory::getBean("Users", $bean->created_by);
        $created_user->custom_fields->retrieve();
        $bean->xindai_guwen_bumen_id_c = $created_user->yuang_bumen_info_id_c;

        $bean->dangju_created_by_id_c = $bean->created_by;

        $d_t = date("Ym");
        $query = "
                select count('x') as r_count from liuch_fangkuang_liucheng where name like '$d_t%'
        ";
        echo $query;
        $GLOBALS['log']->info("fangkuang_liucheng_calculate_field_class.get_liucheng_num, query:".$query);
        $result = $bean->db->query($query);
        $row = $bean->db->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("fangkuang_liucheng_calculate_field_class.get_liucheng_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("fangkuang_liucheng_calculate_field_class.get_liucheng_num, r_count:{$r_count}");
        $dangan_num = vsprintf("%04d",$r_count+1);
        $bean->name = $d_t.$dangan_num;
    }

    public function get_next_handler_id($bean, $handle_type) {
        $bean->custom_fields->retrieve();
        $daik_jiekuangren_info_id = $bean->daik_jiekuangren_info_id_c;
        $a = BeanFactory::getBean("daik_jiekuangren_info", $daik_jiekuangren_info_id);
        $a->custom_fields->retrieve();
        $xindai_guwen = BeanFactory::getBean("Users", $a->user_id_c);
        $xindai_guwen->custom_fields->retrieve();
        $yuang_bumen_info_id = $xindai_guwen->yuang_bumen_info_id_c;
        $query = "
                select id_c from users_cstm where yuang_bumen_info_id_c='{$yuang_bumen_info_id}' and gangwei_leixin_c='{$handle_type}'
            ";
        echo $query;
        $GLOBALS['log']->info("get same bumen fenkongM ids, query:".$query);
        $q_result = $bean->db->query($query);
        $next_ids = Array();
        while($queryRow = $bean->db->fetchByAssoc($q_result))
            $next_ids[] = $queryRow['id_c'];
        $next_id = $next_ids[rand(0,count($next_ids)-1)];
        return $next_id;
    }

    public function show_other_fields($bean, $event, $arguments){
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
        $bean->custom_fields->retrieve();

        $cur_handler_id = $bean->dangju_created_by_id_c;
        if ($bean->danju_zhuangtai == "dai_fengkong_shenhe") {
            $cur_handler_id = $bean->user_id_c;
        }
        elseif ($bean->danju_zhuangtai == "dai_bumen_shenhe") {
            $cur_handler_id = $bean->user_id1_c;
        }
        elseif ($bean->danju_zhuangtai == "dai_chanpin_shenhe"){
            $cur_handler_id = $bean->user_id2_c;
        }
        elseif ($bean->danju_zhuangtai == "dai_kehu_chuli")
            $cur_handler_id = $bean->user_id3_c;

        if (!empty($cur_handler_id)){
            $cur_handler = BeanFactory::getBean("Users", $cur_handler_id);
            if (!empty($cur_handler)){
                $bean->liucheng_dangqian_chuliren_c = $cur_handler->first_name . $cur_handler->last_name;
            }
        }

        $daik_jiekuangren_info_id = $bean->daik_jiekuangren_info_id_c;
        $a = BeanFactory::getBean("daik_jiekuangren_info", $daik_jiekuangren_info_id);
        if (!$a) return;
        $bean->jiekuangren_bianhao_c = $a->danang_bianhao;
        $bean->jiekuangren_zhengjian_haoma_c = $a->zhengjian_haoma;
        $bean->jiekuangren_zhengjian_leixin_c = $GLOBALS["app_list_strings"]["fzglsys_zhengjian_type_list"][$a->zhengjian_leixin];
        $bean->jiekuangren_jiating_zhuzhi_c = $a->jiating_zhuzhi;
        $bean->jiekuangren_lianxi_dianhua_c = $a->lianxi_dianhua;

        $bean->jiekuangren_gongzuo_danwei_c = $a->gongzuo_danwei;
        $bean->jiekuangren_zhiwu_c = $a->zhiwu;
        $bean->jiekuangren_hunyin_zhuangkuang_c = $a->hunyin_zhuangkuang;
        $bean->jiekuangren_qita_lianxiren_xinming_c = $a->qita_lianxiren_xinming;
        $bean->jiekuangren_qita_lianxiren_dianhua_c = $a->qita_lianxiren_dianhua;
        $bean->jiekuangren_qita_lianxiren_guanxi_c = $a->qita_lianren_guanxi;

        $bean->jiekuangren_peiou_xinming_c = $a->jiekuangren_peiou_xinming;
        $bean->jiekuangren_peiou_zhengjian_leixin_c = $GLOBALS["app_list_strings"]["fzglsys_zhengjian_type_list"][$a->peiou_zhengjian_leixin];
        $bean->jiekuangren_peiou_zhengjian_haoma_c = $a->peiou_zhengjian_haoma;
        $bean->jiekuangren_peiou_gongzuo_danwei_c = $a->peiou_gongzuo_danwei;
        $bean->jiekuangren_peiou_zhiwu_c = $a->peiou_zhiwu;

        $a->custom_fields->retrieve();
        $xindai_guwen = BeanFactory::getBean("Users", $a->user_id_c);
        $bean->jiekuangren_xindai_guwen_xinming_c = $xindai_guwen->first_name . $xindai_guwen->last_name;
        $bean->jiekuangren_xindai_guwen_gonghao_c = $xindai_guwen->gonghao_c;



    }
}
?>