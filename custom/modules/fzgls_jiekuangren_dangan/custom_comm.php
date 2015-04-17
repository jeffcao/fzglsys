<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/4/17
 * Time: 下午4:26
 */
global $db;

class calculate_field_class {
    public function get_dangan_num($bean, $event, $arguments) {
        $query = "select count('x') from fzgls_jiekuangren_dangan";
        $result = $db->query($query);

        $bean->dangan_num_c = date("Ym");
    }
}
?>