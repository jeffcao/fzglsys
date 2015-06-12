<?php
if(!defined('sugarEntry'))define('sugarEntry', true);
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/12
 * Time: 下午4:56
 */


class jinrong_jigou_calculate_field_class {
    public function get_jinrong_jigou_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
//        global $db;
        if(!empty($bean->created_by_name)){ return; }
        $bian_hao_type = "01";
        if ($bean->jigou_leixin == "shangyeyinhang")
            $bian_hao_type = "01";
        elseif ($bean->jigou_leixin == "xiaofei_jinrong_gongsi")
            $bian_hao_type = "02";
        elseif ($bean->jigou_leixin == "xiaodai_gongsi")
            $bian_hao_type = "03";
        elseif ($bean->jigou_leixin == "p2p")
            $bian_hao_type = "04";
        elseif ($bean->jigou_leixin == "jijin_gongsi")
            $bian_hao_type = "05";
        elseif ($bean->jigou_leixin == "qita")
            $bian_hao_type = "10";

        $query = "
                select count('x') as r_count from daik_jinrong_jigou_info where jigou_bianma like '$bian_hao_type%'
        ";
        echo $query;
        $GLOBALS['log']->info("calculate_filed_class.get_jinrong_jigou_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("calculate_filed_class.get_jinrong_jigou_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("calculate_filed_class.get_jinrong_jigou_num, r_count:{$r_count}");
        $jigou_bianma = vsprintf("%03d",$r_count+1);
        $bean->jigou_bianma = $bian_hao_type.$jigou_bianma;
    }
}
?>