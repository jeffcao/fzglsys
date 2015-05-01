<?php 
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

wfm_utils::wfm_log('debug', "ENTRY", __FILE__);

// Get sugarcrm Theme
if ($_REQUEST['sugar_body_only'] == 'true') {
	$_SESSION['sugar_body_only'] = true;
	
	$themeObject = SugarThemeRegistry::current();
	$css = $themeObject->getCSS();
	$js = $themeObject->getJS();
} else {
	$_SESSION['sugar_body_only'] = false;
	
	$css = '';
	$js = '';
}

?>

<?php echo $css; ?>
<?php echo $js; ?>

<script src="modules/asol_Process/___common_WFM/plugins_js_css_images/jsLab/LAB.min.js?version=<?php wfm_utils::echoVersionWFM(); ?>" type="text/javascript"></script>

<link href="modules/asol_Process/___common_WFM/css/asol_popupHelp.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet" type="text/css" />
<link href="modules/asol_Process/___common_WFM/plugins_js_css_images/jquery.ui/css/jquery.ui.min.css?version=<?php wfm_utils::echoVersionWFM(); ?>" rel="stylesheet" type="text/css" />

<script>

	var asol_var = new Array();
	asol_var['_REQUEST'] = Array();
	asol_var['_REQUEST']['action'] = "<?php echo $_REQUEST['action']; ?>";

	loadJqueryScripts();
	
	function main() {
		//alert("JQuery is now loaded");
		
		// jQuery-ui
		$.fx.speeds._default = 500;
		$.extend($.ui.dialog.prototype.options, {width: 500, show: "side", hide: "scale"});
		
		$(document).ready(function() {

			buttonSaveOnClick();
			
		});
	}

	function wfm_save() {
		return true;
	}

	function onChange_alternativeDatabase(dropdownlist) {
		window.onbeforeunload = function () {
			return;
		};
		
		dropdownlist.form.action.value = asol_var['_REQUEST']['action'];
		dropdownlist.form.submit();
	}
	
</script>	