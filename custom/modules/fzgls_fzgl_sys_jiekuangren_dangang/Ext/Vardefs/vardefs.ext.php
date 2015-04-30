<?php 
 //WARNING: The contents of this file are auto-generated


/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/4/26
 * Time: 下午2:17
 */

$dictionary['fzgls_fzgl_sys_jiekuangren_dangang']['fields']['file_mime_type'] = array(
    'name' => 'file_mime_type',
    'vname' => 'LBL_FILE_MIME_TYPE',
    'type' => 'varchar',
    'len' => '100',
    'importable' => false,
);
$dictionary['fzgls_fzgl_sys_jiekuangren_dangang']['fields']['file_url'] = array(
    'name'=>'file_url',
    'vname' => 'LBL_FILE_URL',
    'type'=>'function',
    'function_class'=>'UploadFile',
    'function_name'=>'get_upload_url',
    'function_params'=> array('$this'),
    'source'=>'function',
    'reportable'=>false,
    'importable' => false,
);
$dictionary['fzgls_fzgl_sys_jiekuangren_dangang']['fields']['filename'] = array(
    'name' => 'filename',
    'vname' => 'LBL_FILENAME',
    'type' => 'file',
    'dbType' => 'varchar',
    'len' => '255',
    'reportable'=>true,
    'importable' => false,
);

$dictionary["fzgls_fzgl_sys_jiekuangren_dangang"]["fields"]["assigned_employee_c"] = array (
    'required' => false,
    'source' => 'non-db',
    'name' => 'assigned_employee_c',
    'vname' => 'Employee',
    'type' => 'relate',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => '0',
    'audited' => false,
    'reportable' => true,
    'calculated' => false,
    'len' => '255',
    'size' => '20',
    'id_name' => 'employee_id_c',
    'ext2' => 'Employees',
    'module' => 'Employees',
    'rname' => 'name',
    'quicksearch' => 'enabled',
    'studio' => 'visible',
);
$dictionary["fzgls_fzgl_sys_jiekuangren_dangang"]["fields"]["employee_id_c"] = array (
    'required' => false,
    'name' => 'employee_id_c',
    'vname' => '',
    'type' => 'id',
    'massupdate' => 0,
    'comments' => '',
    'help' => '',
    'importable' => 'true',
    'duplicate_merge' => 'disabled',
    'duplicate_merge_dom_value' => 0,
    'audited' => false,
    'reportable' => true,
    'calculated' => false,
    'len' => 36,
    'size' => '20',
);

 // created: 2015-04-26 07:39:14

 

 // created: 2015-04-26 07:39:14
$dictionary['fzgls_fzgl_sys_jiekuangren_dangang']['fields']['xindai_guwen_c']['labelValue']='信贷顾问';

 
?>