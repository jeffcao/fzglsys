<?php
if(!defined('sugarEntry'))define('sugarEntry', true);
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/12
 * Time: 下午5:17
 */


class jinrong_fenzhi_jigou_calculate_field_class {
    public function get_jinrong_fenzhi_jigou_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
//        global $db;
        if(!empty($bean->created_by_name)){ return; }
        $bean->custom_fields->retrieve();

        $jinrong_jigou = BeanFactory::getBean("daik_jinrong_jigou_info", $bean->daik_jinrong_jigou_info_id_c);

        $bian_hao_type = $jinrong_jigou->jigou_bianma;

        $query = "
                select count('x') as r_count from fdi2m_jinrong_fenzhi_jigou_info where fenzhi_jigou_bianhao like '$bian_hao_type%'
        ";
        echo $query;
        $GLOBALS['log']->info("calculate_filed_class.get_jinrong_fenzhi_jigou_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("calculate_filed_class.get_jinrong_fenzhi_jigou_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("calculate_filed_class.get_jinrong_fenzhi_jigou_num, r_count:{$r_count}");
        $jigou_bianma = vsprintf("%03d",$r_count+1);
        $bean->fenzhi_jigou_bianhao = $bian_hao_type.$jigou_bianma;
    }
}
?>