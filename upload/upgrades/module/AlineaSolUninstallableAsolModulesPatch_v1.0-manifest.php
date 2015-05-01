<?php
$manifest = array(
    'acceptable_sugar_flavors' => array(),
    'acceptable_sugar_versions' => array(),
    'is_uninstallable'=>true,
    'name' => 'AlineaSol Uninstallable Modules Patch',
    'description' => 'AlineaSol: This module fixes a problem with AlineaSol Modules and Uninstalling Button',
    'author' => 'AlineaSol',
    'published_date' => '2012/02/06',
    'version' => '1.0',
    'type' => 'module',
    'icon' => '',
);

$installdefs = array(

	'id' => 'AlineaSolUninstallableModulesPatch',
	
	'post_execute'=>array(
		0 => '<basepath>/actions/post_install.php',
	),
	
	'post_uninstall'=>array(
		0 => '<basepath>/actions/post_uninstall.php',
	),

);
?>
