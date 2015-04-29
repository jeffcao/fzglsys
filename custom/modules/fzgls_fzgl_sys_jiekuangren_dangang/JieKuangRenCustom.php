<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Created by PhpStorm.
 * User: jeffcao
 * Date: 15/4/27
 * Time: 下午10:46
 */

require_once('modules/fzgls_fzgl_sys_jiekuangren_dangang/fzgls_fzgl_sys_jiekuangren_dangang.php');

class JieKuangRenCustom extends fzgls_fzgl_sys_jiekuangren_dangang
{
    public function deleteAttachment($isduplicate="false"){
        if($this->ACLAccess('edit')){
            if($isduplicate=="true"){
                return true;
            }
            $removeFile = "upload://{$this->id}";
        }

        if(file_exists($removeFile)) {
            if(!unlink($removeFile)) {
                $GLOBALS['log']->error("*** Could not unlink() file: [ {$removeFile} ]");
            }else{
                $this->filename = '';
                $this->file_mime_type = '';
                $this->file = '';
                $this->save();
                return true;
            }
        } else {
            $this->filename = '';
            $this->file_mime_type = '';
            $this->file = '';
            $this->save();
            return true;
        }
        return false;
    }
}
?>
