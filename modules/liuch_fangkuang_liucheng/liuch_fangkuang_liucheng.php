<?PHP
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

/**
 * THIS CLASS IS FOR DEVELOPERS TO MAKE CUSTOMIZATIONS IN
 */

require_once('include/upload_file.php');
require_once('modules/liuch_fangkuang_liucheng/liuch_fangkuang_liucheng_sugar.php');
class liuch_fangkuang_liucheng extends liuch_fangkuang_liucheng_sugar {
	
	function liuch_fangkuang_liucheng(){	
		parent::liuch_fangkuang_liucheng_sugar();
	}
        function deleteAttachment($isduplicate="false"){
            $deleteFieldName = $_REQUEST['deleteFieldName'];
            $prefix_stored_name = str_replace("filename","",$deleteFieldName);
            $real_file_mine_type = $prefix_stored_name."file_mime_type";
            $real_file_ext = $prefix_stored_name."file_ext";
            $real_stored_file_name = $prefix_stored_name.$this->id;

            if($this->ACLAccess('edit')){
                if($isduplicate=="true"){
                    return true;
                }
                $removeFile = "upload://{$real_stored_file_name}";
            }

            if(file_exists($removeFile)) {
                if(!unlink($removeFile)) {
                    $GLOBALS['log']->error("*** Could not unlink() file: [ {$removeFile} ]");
                }else{
                    $this->$deleteFieldName = '';
                    $this->$real_file_mine_type = '';
                    $this->file = '';
                    $this->save();
                    return true;
                }
            } else {
                $this->$deleteFieldName = '';
                $this->$real_file_mine_type = '';
                $this->file = '';
                $this->save();
                return true;
            }
            return false;
    }
}
?>