<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/5/6
 * Time: 下午4:49
 */

if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.edit.php');

class liuch_fangkuang_liuchengViewEdit extends ViewEdit {

    public function display()
    {
        if($this->ev->isDuplicate){
            $this->bean->status = $this->bean->getDefaultStatus();
        } //if

//        global $current_user;
//
//        // check if current user is in specific role
//        $isEnabledRole = in_array("ITOperation", ACLRole::getUserRoleNames($current_user->id));
//        if($isEnabledRole)
//            $this->ev->ss->assign('readOnly', 'readonly = "readonly"');
//        else
//            $this->ev->ss->assign('readOnly', '');
        if ($this->bean->danju_zhuangtai == "zhidanzhong"){
            unset($this->ev->defs['panels']['lbl_editview_panel1']);
            unset($this->ev->defs['panels']['lbl_editview_panel2']);
            unset($this->ev->defs['panels']['lbl_editview_panel3']);
            unset($this->ev->defs['panels']['lbl_editview_panel4']);
            $th = new TemplateHandler();
            $th->clearCache($this->module);
        }
        $GLOBALS['log']->info("liuch_fangkuang_liuchengViewEdit.display");
//        var_dump($this->ev);
        $this->ev->ss->assign('jiekuangren_zhengjian_leixin_c', 'disabled="disabled"');
        $this->ev->ss->assign('jiekuangren_bianhao_c', 'readonly = "readonly"');

        parent::display();
    }
}