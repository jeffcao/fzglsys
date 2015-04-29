<?php
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