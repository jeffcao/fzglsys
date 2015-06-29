<?php
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/6/29
 * Time: 上午10:16
 */

require_once('include/MVC/View/views/view.list.php');

class daik_jiekuangren_infoViewList extends ViewList {

    function daik_jiekuangren_infoViewList(){
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

        $filter_str = " daik_jiekuangren_info.created_by='{$current_user->id}'";


        $this->params['custom_where'] = " AND (".$filter_str. ")";

        if (empty($_REQUEST['search_form_only']) || $_REQUEST['search_form_only'] == false) {

            $this->lv->setup($this->seed, 'include/ListView/ListViewGeneric.tpl', $this->where, $this->params);
            $savedSearchName = empty($_REQUEST['saved_search_select_name']) ? '' : (' - ' . $_REQUEST['saved_search_select_name']);
            echo $this->lv->display();
        }
    }

}

?>