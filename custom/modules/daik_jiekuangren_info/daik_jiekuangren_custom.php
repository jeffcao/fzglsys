<?php
if(!defined('sugarEntry'))define('sugarEntry', true);
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/4/17
 * Time: 下午4:26
 */



class jiekuangren_custom_class {
    public function get_dangan_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
//        global $db;
        if(!empty($bean->created_by_name)){ return; }
        $d_t = date("Ym");
        $query = "
                select count('x') as r_count from daik_jiekuangren_info where danang_bianhao like '$d_t%'
        ";
        echo $query;
        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, r_count:{$r_count}");
        $dangan_num = vsprintf("%06d",$r_count+1);
        $bean->danang_bianhao = $d_t.$dangan_num;
    }

    public function show_other_fields($bean, $event, $arguments){
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
        $bean->custom_fields->retrieve();

        $xindai_guwen_id = $bean->user_id_c;
        $a = BeanFactory::getBean("Users", $xindai_guwen_id);
        if (!$a) return;
        $bean->xindai_guwen_gonghao_c = $a->gonghao_c;

    }
}
?>