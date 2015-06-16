<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/16
 * Time: 下午8:44
 */


class waibu_qudao_calculate_field_class {
    public function get_qudao_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
//        global $db;
        if(!empty($bean->created_by_name)){ return; }
        $query = "
                select count('x') as r_count from yuang_waibu_qudao_info
        ";
        echo $query;
        $GLOBALS['log']->info("calculate_filed_class.get_qudao_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, r_count:{$r_count}");
        $dangan_num = "".($r_count+1);
        $bean->bianhao = $dangan_num;
    }
}
?>