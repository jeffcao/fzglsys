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
//        global $db;
        if(isset($bean->fetched_row['id'])) { return; }
//        (isset($arguments['isUpdate']) && $arguments['isUpdate'] == false)
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

    public function show_other_fields($bean, $event, $arguments){
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
        $bean->custom_fields->retrieve();
        $daik_jiekuangren_info_id = $bean->daik_jiekuangren_info_id_c;
        $a = BeanFactory::getBean("daik_jiekuangren_info", $daik_jiekuangren_info_id);
        $bean->jiekuangren_bianhao_c = $a->danang_bianhao;
        $bean->jiekuangren_zhengjian_haoma_c = $a->zhengjian_haoma;
        $bean->jiekuangren_zhengjian_leixin_c = $GLOBALS["app_list_strings"]["fzglsys_zhengjian_type_list"][$a->zhengjian_leixin];

    }
}
?>