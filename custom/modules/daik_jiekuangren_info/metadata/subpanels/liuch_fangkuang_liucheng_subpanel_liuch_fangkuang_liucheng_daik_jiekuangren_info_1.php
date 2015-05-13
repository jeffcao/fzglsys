<?php
// created: 2015-05-12 10:52:40
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'danang_bianhao' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_DANANG_BIANHAO',
    'width' => '10%',
    'default' => true,
  ),
  'zhengjian_haoma' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_ZHENGJIAN_HAOMA',
    'width' => '10%',
    'default' => true,
  ),
  'zhengjian_leixin' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_ZHENGJIAN_LEIXIN',
    'width' => '10%',
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'daik_jiekuangren_info',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'daik_jiekuangren_info',
    'width' => '5%',
    'default' => true,
  ),
);