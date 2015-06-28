<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/28
 * Time: 下午8:27
 */
if(!defined('sugarEntry'))define('sugarEntry', true);


class employees_fzgl_calculate_field_class {
    public function get_employee_gonghao_num($bean, $event, $arguments) {
        require_once('include/entryPoint.php');
        require_once('modules/Campaigns/utils.php');
//        global $db;

        $query = "
                select count('x') as r_count from users
        ";
        echo $query;
        $GLOBALS['log']->info("employees_fzgl_calculate_field_class.get_employee_gonghao_num, query:".$query);
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
//        $GLOBALS['log']->info("calculate_filed_class.get_dangan_num, row.length:".$row.length);
        $r_count = 0;
        if (!empty($row)) {
            $GLOBALS['log']->info("employees_fzgl_calculate_field_class.get_employee_gonghao_num, row is not empty.");
            $r_count = $row['r_count'];
        }
        $GLOBALS['log']->info("employees_fzgl_calculate_field_class.get_employee_gonghao_num, r_count:{$r_count}");
        $gonghao = vsprintf("%06d",$r_count+1);
        $bean->gonghao_c = $gonghao;
    }
}
?>