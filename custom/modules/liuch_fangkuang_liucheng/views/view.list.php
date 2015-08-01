<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/11
 * Time: 下午2:05
 */

require_once('include/MVC/View/views/view.list.php');

class liuch_fangkuang_liuchengViewList extends ViewList {

    function liuch_fangkuang_liuchengViewList(){
        parent::ViewList();
    }

    public function preDisplay()
    {
        parent::preDisplay();
        $this->lv->delete = false;
        $this->lv->export = false;
        $this->lv->multiSelect = false;
        $this->lv->mergeduplicates = false;
        $this->lv->showMassupdaeFields = false;
        $this->lv->show_action_dropdown = false;
        $this->lv->show_process = false;
        $this->lv->quickViewLinks = false;

    }

    function listViewProcess() {
        global $current_user;
//        $current_user->setPreference("liuch_fangkuang_liuchengQ","");
        $this->processSearchForm();
        $this->lv->searchColumns = $this->searchForm->searchColumns;

        $filter_str = " liuch_fangkuang_liucheng.created_by='{$current_user->id}' OR
        liuch_fangkuang_liucheng_cstm.user_id_c='{$current_user->id}' OR liuch_fangkuang_liucheng_cstm.user_id1_c='{$current_user->id}' OR
        liuch_fangkuang_liucheng_cstm.user_id2_c='{$current_user->id}' OR liuch_fangkuang_liucheng_cstm.user_id3_c='{$current_user->id}'";
        if ($current_user->gangwei_leixin_c == "bumen_jingli"){
            $filter_str = $filter_str." OR liuch_fangkuang_liucheng_cstm.xindai_guwen_bumen_id_c='{$current_user->yuang_bumen_info_id_c}'";
        }
        if (is_admin($current_user))
        {
            $filter_str = ' 1 ';
        }
        $this->params['custom_where'] = " AND (".$filter_str. ")";

        if (empty($_REQUEST['search_form_only']) || $_REQUEST['search_form_only'] == false) {

            $this->lv->setup($this->seed, 'include/ListView/ListViewGeneric.tpl', $this->where, $this->params);
            $savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
            echo $this->lv->display();
        }
    }

}

?>