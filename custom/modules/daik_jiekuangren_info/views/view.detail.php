<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/29
 * Time: 上午11:34
 */


require_once('include/MVC/View/views/view.detail.php');
class daik_jiekuangren_infoViewDetail extends ViewDetail
{
    public function preDisplay(){
        //$this->bean contains all the information on the Case
        //use that information to grab the related account bean, something like:
//        $a = new daik_jiekuangren_info();
//        $a->retrieve($this->bean->daik_jiekuangren_info_id_c); //check but I believe that's the account id relate field in the case
//        $jiekuangren_bianhao_value = $a->danang_bianhao;
//        $this->bean->jiekuangren_bianhao_c = $jiekuangren_bianhao_value;
        // similarly for the second field

        parent::preDisplay();

    }

    public function display(){
        global $current_user;


        $this->bean->custom_fields->retrieve();

        $jiekuangren_id = $this->bean->id;
        $query = "
                select count(t1.id_c) as r_count from liuch_fangkuang_liucheng_cstm t1, liuch_fangkuang_liucheng t2
                where t1.id_c = t2.id and t2.deleted = 0 and t1.daik_jiekuangren_info_id_c = '$jiekuangren_id'
        ";
        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
        $r_count = 0;
        if (!empty($row)) {
            $r_count = $row['r_count'];
        }

        if ($current_user->id != $this->bean->created_by){
            unset($this->dv->defs['templateMeta']['form']['buttons'][1]);
            unset($this->dv->defs['templateMeta']['form']['buttons'][0]);
        }

        if ($r_count > 0){
            unset($this->dv->defs['templateMeta']['form']['buttons'][1]);
        }

        $query = "
                select count(t1.id_c) as r_count from liuch_fangkuang_liucheng_cstm t1, liuch_fangkuang_liucheng t2
                where t1.id_c = t2.id and t2.deleted = 0 and t2.danju_zhuangtai !='zhidanzhong' and t1.daik_jiekuangren_info_id_c = '$jiekuangren_id'
        ";

        $result = $GLOBALS['db']->query($query);
        $row = $GLOBALS['db']->fetchByAssoc($result);
        $r_count = 0;
        if (!empty($row)) {
            $r_count = $row['r_count'];
        }

        if ($r_count > 0){
            unset($this->dv->defs['templateMeta']['form']['buttons'][0]);
            unset($this->dv->defs['templateMeta']['form']['buttons'][1]);
        }

        $th = new TemplateHandler();
        $th->clearCache($this->module);
        parent::display();
    }
}

?>