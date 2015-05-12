<?php
if(!defined('sugarEntry'))define('sugarEntry', true);
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
        if(!empty($bean->created_by_name)){ return; }
        $d_t = date("Ym");
        $query = "
                select count('x') as r_count from liuch_fangkuang_liucheng where name like '$d_t%'
        ";
        echo $query;
        $GLOBALS['log']->info("fangkuang_liucheng_calculate_field_class.get_liucheng_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
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
        $full_bean = BeanFactory::newBean("liuch_fangkuang_liucheng");
        $full_bean->retrieve ($bean->id);
        $a = BeanFactory::getBean("daik_jiekuangren_info", $full_bean->daik_jiekuangren_info_id_c);
        $bean->jiekuangren_bianhao_c = $a->danang_bianhao;
//        $a = new daik_jiekuangren_info();
//        $a->retrieve($bean->daik_jiekuangren_info_id_c); //check but I believe that's the account id relate field in the case
//        $jiekuangren_bianhao_value = $a->danang_bianhao;
//        $bean->jiekuangren_bianhao_c = $jiekuangren_bianhao_value;

    }
}
?>