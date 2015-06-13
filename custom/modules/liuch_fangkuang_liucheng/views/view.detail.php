<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/5/3
 * Time: 下午2:53
 */

require_once('include/MVC/View/views/view.detail.php');
class CustomLiuch_fangkuang_liuchengViewDetail extends ViewDetail
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

        if ($this->bean->danju_zhuangtai != "zhidanzhong"){
            unset($this->dv->defs['templateMeta']['form']['buttons'][1]);
        }

        if ($current_user->id != $this->bean->created_by and $current_user->id != $this->bean->user_id_c
            and $current_user->id != $this->bean->user_id1_c and $current_user->id != $this->bean->user_id2_c
            and $current_user->id != $this->bean->user_id3_c ){
            unset($this->dv->defs['templateMeta']['form']['buttons'][0]);

        }
        if (($current_user->id == $this->bean->created_by and $this->bean->danju_zhuangtai != "zhidanzhong") or
            ($current_user->id == $this->bean->user_id_c and $this->bean->danju_zhuangtai != "dai_fengkong_shenhe") or
            ($current_user->id == $this->bean->user_id1_c and $this->bean->danju_zhuangtai != "dai_bumen_shenhe") or
            ($current_user->id == $this->bean->user_id2_c and $this->bean->danju_zhuangtai != "dai_chanpin_shenhe") or
            ($current_user->id == $this->bean->user_id3_c and $this->bean->danju_zhuangtai != "dai_kehu_chuli")){
            unset($this->dv->defs['templateMeta']['form']['buttons'][0]);
        }
        $th = new TemplateHandler();
        $th->clearCache($this->module);
        parent::display();
    }
}

?>