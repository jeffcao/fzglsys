<?php 
 //WARNING: The contents of this file are auto-generated



require_once("modules/asol_Process/___common_WFM/php/asol_utils.php");

// moduleList
$app_list_strings['moduleList']['asol_WorkFlowManagerCommon'] = 'WorkFlow Manager Common';
$app_list_strings['moduleList']['asol_Activity'] = 'WFM Activity';
$app_list_strings['moduleList']['asol_Events'] = 'WFM Event';
$app_list_strings['moduleList']['asol_Process'] = 'WFM Process';
$app_list_strings['moduleList']['asol_Task'] = 'WFM Task';
$app_list_strings['moduleList']['asol_ProcessInstances'] = 'WFM Process Instances';
$app_list_strings['moduleList']['asol_WorkingNodes'] = 'WFM Working Nodes';
$app_list_strings['moduleList']['asol_OnHold'] = 'WFM On Hold';
wfm_utils::addPremiumAppListStrings($app_list_strings, 'en_us', 'addAppListStrings_loginAudit');

// wfm_process_status_list
$app_list_strings['wfm_process_status_list']['active'] = 'Active';
$app_list_strings['wfm_process_status_list']['inactive'] = 'Inactive';

// wfm_trigger_type_list
$app_list_strings['wfm_trigger_type_list']['logic_hook'] = 'Logic Hook';
$app_list_strings['wfm_trigger_type_list']['scheduled'] = 'Scheduled';
$app_list_strings['wfm_trigger_type_list']['subprocess'] = 'Subprocess';

// wfm_trigger_event_list
$app_list_strings['wfm_trigger_event_list']['on_create'] = 'On Create';
$app_list_strings['wfm_trigger_event_list']['on_modify'] = 'On Modify';
$app_list_strings['wfm_trigger_event_list']['on_modify__before_save'] = 'On Modify Before Save';
$app_list_strings['wfm_trigger_event_list']['on_delete'] = 'On Delete';
wfm_utils::addPremiumAppListStrings($app_list_strings, 'en_us', 'addAppListStrings_loginAuditEvents');

$app_list_strings['wfm_trigger_event_list_not_users']['on_create'] = 'On Create';
$app_list_strings['wfm_trigger_event_list_not_users']['on_modify'] = 'On Modify';
$app_list_strings['wfm_trigger_event_list_not_users']['on_modify__before_save'] = 'On Modify Before Save';
$app_list_strings['wfm_trigger_event_list_not_users']['on_delete'] = 'On Delete';

// wfm_events_type_list
wfm_utils::addPremiumAppListStrings($app_list_strings, 'en_us', 'addAppListStrings_initialize');
$app_list_strings['wfm_events_type_list']['start'] = 'Start';
$app_list_strings['wfm_events_type_list']['intermediate'] = 'Intermediate';
$app_list_strings['wfm_events_type_list']['cancel'] = 'Cancel';

// wfm_scheduled_type_list
$app_list_strings['wfm_scheduled_type_list']['sequential'] = 'Sequential';
$app_list_strings['wfm_scheduled_type_list']['parallel'] = 'Parallel';

// wfm_subprocess_type_list
$app_list_strings['wfm_subprocess_type_list']['sequential'] = 'Sequential';
$app_list_strings['wfm_subprocess_type_list']['parallel'] = 'Parallel';

// wfm_working_node_priority
$app_list_strings['wfm_working_node_priority']['logic_hook']['initialize'] = 0;
$app_list_strings['wfm_working_node_priority']['logic_hook']['start'] = -1;
$app_list_strings['wfm_working_node_priority']['subprocess']['sequential'] = -2;
$app_list_strings['wfm_working_node_priority']['subprocess']['parallel'] = -3;
$app_list_strings['wfm_working_node_priority']['logic_hook']['intermediate'] = -4;
$app_list_strings['wfm_working_node_priority']['logic_hook']['cancel'] = -5;
$app_list_strings['wfm_working_node_priority']['scheduled']['sequential'] = -6;
$app_list_strings['wfm_working_node_priority']['scheduled']['parallel'] = -7;

// wfm_activity_type_list
//$app_list_strings['wfm_activity_type_list']['no_foreach'] = 'No Foreach';
$app_list_strings['wfm_activity_type_list']['foreach_ingroup'] = 'Foreach In Group';
//$app_list_strings['wfm_activity_type_list']['foreach_inrelationship'] = 'Foreach In Relationship';

// wfm_task_delay_type_list
$app_list_strings['wfm_task_delay_type_list']['no_delay'] = 'No Delay';
$app_list_strings['wfm_task_delay_type_list']['on_creation'] = 'On Creation';
$app_list_strings['wfm_task_delay_type_list']['on_modification'] = 'On Modification';
$app_list_strings['wfm_task_delay_type_list']['on_finish_previous_task'] = 'On Finish Previous Task';

// wfm_task_type_list
$app_list_strings['wfm_task_type_list']['send_email'] = 'Send Email';
$app_list_strings['wfm_task_type_list']['php_custom'] = 'PHP Custom';
$app_list_strings['wfm_task_type_list']['continue'] = 'Continue';
$app_list_strings['wfm_task_type_list']['end'] = 'End';
$app_list_strings['wfm_task_type_list']['create_object'] = 'Create Object';
$app_list_strings['wfm_task_type_list']['modify_object'] = 'Modify Object';
$app_list_strings['wfm_task_type_list']['call_process'] = 'Call Process';
$app_list_strings['wfm_task_type_list']['add_custom_variables'] = 'Add Custom Variables';

// login_audit
$app_list_strings['wfm_login_audit_action_list']['login_failed'] = 'Login Failed';
$app_list_strings['wfm_login_audit_action_list']['after_login'] = 'Login';
$app_list_strings['wfm_login_audit_action_list']['before_logout'] = 'Logout';

// add_custom_variables_type
$app_list_strings['wfm_add_custom_variables_type']['sql'] = 'SQL';
$app_list_strings['wfm_add_custom_variables_type']['php_eval'] = 'PHP eval';
$app_list_strings['wfm_add_custom_variables_type']['literal'] = 'Literal';

// delay
$app_list_strings['wfm_delay_time']['minutes'] = 'Minutes';
$app_list_strings['wfm_delay_time']['hours'] = 'Hours';
$app_list_strings['wfm_delay_time']['days'] = 'Days';
$app_list_strings['wfm_delay_time']['weeks'] = 'Weeks';
$app_list_strings['wfm_delay_time']['months'] = 'Months';

// delay
$app_list_strings['wfm_delay_time_amount']['minutes'] = 60;
$app_list_strings['wfm_delay_time_amount']['hours'] = 24;
$app_list_strings['wfm_delay_time_amount']['days'] = 31;
$app_list_strings['wfm_delay_time_amount']['weeks'] = 4;
$app_list_strings['wfm_delay_time_amount']['months'] = 12;

// working_node status
$app_list_strings['wfm_working_node_status']['not_started'] = 'Not Started';
$app_list_strings['wfm_working_node_status']['executing'] = 'Executing';
$app_list_strings['wfm_working_node_status']['delayed_by_activity'] = 'Delayed By Activity';
$app_list_strings['wfm_working_node_status']['delayed_by_task'] = 'Delayed By Task';
$app_list_strings['wfm_working_node_status']['in_progress'] = 'In Progress';
$app_list_strings['wfm_working_node_status']['terminated'] = 'Terminated';
$app_list_strings['wfm_working_node_status']['held'] = 'Held';

// wfm_working_node_type_list
$app_list_strings['wfm_working_node_type_list']['initialize'] = 'Initilialize';
$app_list_strings['wfm_working_node_type_list']['start'] = 'Start';
$app_list_strings['wfm_working_node_type_list']['intermediate'] = 'Intermediate';
$app_list_strings['wfm_working_node_type_list']['cancel'] = 'Cancel';
$app_list_strings['wfm_working_node_type_list']['subprocess'] = 'Subprocess';

// TRICK: DISABLE AJAX-UI
$sugar_config['addAjaxBannedModules'][] = "asol_Process";
$sugar_config['addAjaxBannedModules'][] = "asol_Events";
$sugar_config['addAjaxBannedModules'][] = "asol_Activity";
$sugar_config['addAjaxBannedModules'][] = "asol_Task";
$sugar_config['addAjaxBannedModules'][] = "asol_ProcessInstances";
$sugar_config['addAjaxBannedModules'][] = "asol_WorkingNodes";
$sugar_config['addAjaxBannedModules'][] = "asol_OnHold";



/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


$app_list_strings['moduleList']['daik_jinrong_jigou_info'] = 'jinrong_jigou';
$app_list_strings['moduleList']['daik_jiekuangren_info'] = 'jkren';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['shangye_yinhang'] = '商业银行';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['xiaofei_jinrong_gongsi'] = '消费金融公司';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['xiaodai_gongsi'] = '小贷公司';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['p2p'] = 'P2P';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['jijin_gongsi'] = '基金公司';
$app_list_strings['fzglsys_jinrong_jigou_type_list']['qita'] = '其它';
$app_list_strings['fzglsys_zhengjian_type_list']['shenfenzheng'] = '身份证';
$app_list_strings['fzglsys_zhengjian_type_list']['huzhao'] = '护照';
$app_list_strings['fzglsys_zhengjian_type_list']['junguangzheng'] = '军官证';


/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


$app_list_strings['moduleList']['liuch_fangkuang_liucheng'] = 'fangkuang_liucheng';
$app_list_strings['moduleList']['liuch_fzgl_fangkuang_liucheng'] = 'fangkuang_liucheng';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['zhidanzhong'] = '制单中';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['dai_fengkong_shenhe'] = '待风控经理审核';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['dai_bumen_shenhe'] = '待部门经理审核';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['dai_chanpin_shenhe'] = '待产品经理审核';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['dai_kehu_chuli'] = '待客户处理';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['wancheng_huifang'] = '完成回访';
$app_list_strings['fzglsys_daikuang_shenqing_status_list']['xichang_guanbi'] = '异常关闭';
$app_list_strings['fzglsys_daikuang_type__list']['diya'] = '抵押';
$app_list_strings['fzglsys_daikuang_type__list']['zhiya'] = '质押';
$app_list_strings['fzglsys_daikuang_type__list']['baozheng'] = '保证';
$app_list_strings['fzglsys_daikuang_type__list']['xinyong'] = '信用';
$app_list_strings['fzglsys_shoukuang_type_list']['xianjin'] = '现金';
$app_list_strings['fzglsys_shoukuang_type_list']['shuaka'] = '刷卡';
$app_list_strings['fzglsys_shoukuang_type_list']['zhifubao'] = '支付宝';
$app_list_strings['fzglsys_daikuang_shenqing_option02_list']['tongyi'] = '同意';
$app_list_strings['fzglsys_daikuang_shenqing_option02_list']['butongyi'] = '不同意';
$app_list_strings['fzglsys_daikuang_shenqing_option01_list']['tongyi'] = '同意';
$app_list_strings['fzglsys_daikuang_shenqing_option01_list']['butongyi'] = '不同意';
$app_list_strings['fzglsys_daikuang_shenqing_option01_list']['yichang_guanbi'] = '异常关闭';


/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/


$app_list_strings['moduleList']['yuang_yuangong_guanli'] = 'yuangong_guanli';
$app_list_strings['moduleList']['yuang_fengongsi_info'] = 'fengs';
$app_list_strings['moduleList']['yuang_bumen_info'] = 'bumen';
$app_list_strings['moduleList']['yuang_waibu_qudao_info'] = 'qudao';
$app_list_strings['fzglsys_xinbie_type_list']['nan'] = '男';
$app_list_strings['fzglsys_xinbie_type_list']['nv'] = '女';
$app_list_strings['fzglsys_zhiwu_type_list']['xindai_guwen'] = '信贷顾问';
$app_list_strings['fzglsys_zhiwu_type_list']['fengkong_jingli'] = '风控经理';
$app_list_strings['fzglsys_zhiwu_type_list']['bumen_jingli'] = '部门经理';
$app_list_strings['fzglsys_zhiwu_type_list']['chanpin_jingli'] = '产品经理';
$app_list_strings['fzglsys_yuangong_status_list']['yi_lizhi'] = '已离职';
$app_list_strings['fzglsys_yuangong_status_list']['zaizhi'] = '在职';
$app_list_strings['fzglsys_yuangong_status_list']['lizhi_zhong'] = '离职中';

?>