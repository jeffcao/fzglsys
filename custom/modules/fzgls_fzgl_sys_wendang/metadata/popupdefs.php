<?php
$popupMeta = array (
    'moduleMain' => 'fzgls_fzgl_sys_wendang',
    'varName' => 'fzgls_fzgl_sys_wendang',
    'orderBy' => 'fzgls_fzgl_sys_wendang.name',
    'whereClauses' => array (
  'name' => 'fzgls_fzgl_sys_wendang.name',
),
    'searchInputs' => array (
  0 => 'fzgls_fzgl_sys_wendang_number',
  1 => 'name',
  2 => 'priority',
  3 => 'status',
),
    'listviewdefs' => array (
  'DOCUMENT_NAME' => 
  array (
    'width' => '40%',
    'label' => 'LBL_NAME',
    'link' => true,
    'default' => true,
    'name' => 'document_name',
  ),
  'CREATED_BY_NAME' => 
  array (
    'width' => '2%',
    'label' => 'LBL_LIST_LAST_REV_CREATOR',
    'default' => true,
    'sortable' => false,
    'name' => 'created_by_name',
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
    'name' => 'date_entered',
  ),
),
);
