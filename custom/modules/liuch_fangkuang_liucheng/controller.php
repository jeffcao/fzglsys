<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/9
 * Time: 下午10:42
 */

require_once('include/MVC/Controller/SugarController.php');

class liuch_fangkuang_liuchengController extends SugarController {

    public function action_submit_liucheng(){

        parent::pre_save();
        $this->bean->save(!empty($this->bean->notify_on_save));
        parent::post_save();
//        $this->view = 'submitLiuchengView';

    }
}

?>