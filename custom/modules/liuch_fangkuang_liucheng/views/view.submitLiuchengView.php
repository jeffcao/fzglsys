<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/9
 * Time: 下午10:46
 */

if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.detail.php');

class ViewSubmitLiuchengView extends ViewDetail {


    function ViewSubmitLiuchengView(){
        parent::ViewDetail();
    }

    function display() {
        echo "submit liucheng";
    }

}

?>