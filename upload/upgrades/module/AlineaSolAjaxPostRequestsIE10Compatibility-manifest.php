<?php
$manifest = array(
    'acceptable_sugar_flavors' => array(),
    'acceptable_sugar_versions' => array(),
    'is_uninstallable'=>true,
    'name' => 'AlineaSol Ajax Post Requests IE10 Compatibility',
    'description' => 'AlineaSol: This module fixes a bug with IE10 & SugarCRM AjaxUI Feature',
    'author' => 'AlineaSol',
    'published_date' => '2013/08/16',
    'version' => '1.0',
    'type' => 'module',
    'icon' => '',
);

$installdefs = array(

	'id' => 'AlineaSolAjaxPostRequestsIE10Compatibility',
	
	'post_execute'=>array(
		0 => '<basepath>/actions/post_install.php',
	),
	
	'post_uninstall'=>array(
		0 => '<basepath>/actions/post_uninstall.php',
	),

);
?>
