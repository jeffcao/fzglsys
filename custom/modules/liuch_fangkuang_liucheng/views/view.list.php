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

    function listViewProcess() {
        global $current_user;
        $this->processSearchForm();
        $this->lv->searchColumns = $this->searchForm->searchColumns;

        $this->params['custom_where'] = " AND (liuch_fangkuang_liucheng.created_by='{$current_user->id}' OR
        liuch_fangkuang_liucheng_cstm.user_id_c='{$current_user->id}' OR liuch_fangkuang_liucheng_cstm.user_id1_c='{$current_user->id}' OR
        liuch_fangkuang_liucheng_cstm.user_id2_c='{$current_user->id}' OR liuch_fangkuang_liucheng_cstm.user_id3_c='{$current_user->id}')";

        if (empty($_REQUEST['search_form_only']) || $_REQUEST['search_form_only'] == false) {

            $this->lv->setup($this->seed, 'include/ListView/ListViewGeneric.tpl', $this->where, $this->params);
            $savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
            echo $this->lv->display();
        }
    }

}

?>