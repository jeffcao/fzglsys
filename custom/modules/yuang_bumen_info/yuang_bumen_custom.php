<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/7/13
 * Time: 下午9:53
 */

class bumen_calculate_field_class {
    public function get_bumen_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
        if(!empty($bean->created_by_name)){ return; }
        $bean->custom_fields->retrieve();

        $bian_hao_type = "00";
        if ($bean->bumen_jibie_c == "yiji") {
            $bian_hao_type = "01";
        }
        else if ($bean->bumen_jibie_c == "erji") {
            $bian_hao_type = "02";
        }
        else if ($bean->bumen_jibie_c == "sanji") {
            $bian_hao_type = "03";
        }
        else if ($bean->bumen_jibie_c == "siji") {
            $bian_hao_type = "04";
        }
        else if ($bean->bumen_jibie_c == "wuji") {
            $bian_hao_type = "05";
        }

        $query = "
                select count('x') as r_count from yuang_bumen_info where bumen_bianhao like '$bian_hao_type%'
        ";
        echo $query;
        $GLOBALS['log']->info("calculate_filed_class.get_bumen_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("calculate_filed_class.get_bumen_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("calculate_filed_class.get_bumen_num, r_count:{$r_count}");
        $jigou_bianma = vsprintf("%06d",$r_count+1);
        $bean->bumen_bianhao = $bian_hao_type.$jigou_bianma;
    }
}
?>