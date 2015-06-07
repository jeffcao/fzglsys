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

    public function preDisplay(){
        $buttons_header = array();
        $buttons_footer = array();

        $buttons_header[]="<input type='button' class='button' id='reset_user_preferences_header' onclick='if(confirm(\"{$reset_pref_warning}\"))window.location=\"".$_SERVER['PHP_SELF'] .'?'.$user_preference_url."&reset_preferences=true\";' value='".translate('LBL_RESET_PREFERENCES','Users')."' />";
        $buttons_header[]="<input type='button' class='button' id='reset_homepage_header' onclick='if(confirm(\"{$reset_home_warning}\"))window.location=\"".$_SERVER['PHP_SELF'] .'?'.$the_query_string."&reset_homepage=true\";' value='".translate('LBL_RESET_HOMEPAGE','Users')."' />";

        $buttons_footer[]="<input type='button' class='button' id='reset_user_preferences_footer' onclick='if(confirm(\"{$reset_pref_warning}\"))window.location=\"".$_SERVER['PHP_SELF'] .'?'.$user_preference_url."&reset_preferences=true\";' value='".translate('LBL_RESET_PREFERENCES','Users')."' />";
        $buttons_footer[]="<input type='button' class='button' id='reset_homepage_footer' onclick='if(confirm(\"{$reset_home_warning}\"))window.location=\"".$_SERVER['PHP_SELF'] .'?'.$the_query_string."&reset_homepage=true\";' value='".translate('LBL_RESET_HOMEPAGE','Users')."' />";

        if (isset($buttons_header)) $this->ss->assign("BUTTONS_HEADER", $buttons_header);
        if (isset($buttons_footer)) $this->ss->assign("BUTTONS_FOOTER", $buttons_footer);

        parent::preDisplay();

    }
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
//            unset($this->ev->defs['panels']['lbl_editview_panel1']);
//            unset($this->ev->defs['panels']['lbl_editview_panel2']);
//            unset($this->ev->defs['panels']['lbl_editview_panel3']);
//            unset($this->ev->defs['panels']['lbl_editview_panel4']);
//            $th = new TemplateHandler();
//            $th->clearCache($this->module);

        }
        $GLOBALS['log']->info("liuch_fangkuang_liuchengViewEdit.display");
//        var_dump($this->ev);
        $this->ev->ss->assign('liucheng_status', $this->bean->danju_zhuangtai);

        $action_button_header[] = <<<EOD
                    <input type="button" id="SAVE_HEADER" title="{$APP['LBL_SAVE_BUTTON_TITLE']}" accessKey="{$APP['LBL_SAVE_BUTTON_KEY']}"
                          class="button primary" onclick="var _form = $('#EditView')[0]; if (!Admin_check()) return false; _form.action.value='Save'; {$CHOOSER_SCRIPT} {$REASSIGN_JS} if(verify_data(EditView)) _form.submit();"
                          name="button" value="{$app_strings['LBL_SAVE_BUTTON_LABEL']}">
EOD
        ;

        $action_button_header[] = <<<EOD
                    <input	title="{$APP['LBL_CANCEL_BUTTON_TITLE']}" id="CANCEL_HEADER" accessKey="{$APP['LBL_CANCEL_BUTTON_KEY']}"
                              class="button" onclick="var _form = $('#EditView')[0]; _form.action.value='{$RETURN_ACTION}'; _form.module.value='{$RETURN_MODULE}'; _form.record.value='{$RETURN_ID}'; _form.submit()"
                              type="button" name="button" value="{$APP['LBL_CANCEL_BUTTON_LABEL']}">
EOD
        ;
        $action_button_header = array_merge($action_button_header, $this->ss->get_template_vars('BUTTONS_HEADER'));
        $this->ss->assign('ACTION_BUTTON_HEADER', $action_button_header);

        $action_button_footer[] = <<<EOD
                    <input type="button" id="SAVE_FOOTER" title="{$APP['LBL_SAVE_BUTTON_TITLE']}" accessKey="{$APP['LBL_SAVE_BUTTON_KEY']}"
                          class="button primary" onclick="var _form = $('#EditView')[0];  if (!Admin_check()) return false; _form.action.value='Save'; {$CHOOSER_SCRIPT} {$REASSIGN_JS} if(verify_data(EditView)) _form.submit();"
                          name="button" value="{$APP['LBL_SAVE_BUTTON_LABEL']}">
EOD
        ;
        $action_button_footer[] = <<<EOD
                    <input	title="{$APP['LBL_CANCEL_BUTTON_TITLE']}" id="CANCEL_FOOTER" accessKey="{$APP['LBL_CANCEL_BUTTON_KEY']}"
                              class="button" onclick="var _form = $('#EditView')[0]; _form.action.value='{$RETURN_ACTION}'; _form.module.value='{$RETURN_MODULE}'; _form.record.value='{$RETURN_ID}'; _form.submit()"
                              type="button" name="button" value="{$APP['LBL_CANCEL_BUTTON_LABEL']}">
EOD
        ;
        $action_button_footer = array_merge($action_button_footer, $this->ss->get_template_vars('BUTTONS_FOOTER'));
        $this->ss->assign('ACTION_BUTTON_FOOTER', $action_button_footer);



        parent::display();
    }
}