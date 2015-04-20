<?php
$popupMeta = array (
    'moduleMain' => 'fzgls_fenggongsi_info',
    'varName' => 'fzgls_fenggongsi_info',
    'orderBy' => 'fzgls_fenggongsi_info.name',
    'whereClauses' => array (
  'name' => 'fzgls_fenggongsi_info.name',
  'billing_address_city' => 'fzgls_fenggongsi_info.billing_address_city',
  'phone_office' => 'fzgls_fenggongsi_info.phone_office',
),
    'searchInputs' => array (
  0 => 'name',
  1 => 'billing_address_city',
  2 => 'phone_office',
  3 => 'industry',
),
    'listviewdefs' => array (
  'NAME' => 
  array (
    'width' => '40%',
    'label' => 'LBL_ACCOUNT_NAME',
    'link' => true,
    'default' => true,
    'name' => 'name',
  ),
  'GONGSI_NUM_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_GONGSI_NUM',
    'width' => '10%',
    'name' => 'gongsi_num_c',
  ),
  'FUZEREN_NAME_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_FUZEREN_NAME',
    'width' => '10%',
    'name' => 'fuzeren_name_c',
  ),
  'FUZEREN_PHONE_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_FUZEREN_PHONE',
    'width' => '10%',
    'name' => 'fuzeren_phone_c',
  ),
  'GONGSI_PHONE_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_FZGLS_GONGSI_PHONE',
    'width' => '10%',
    'name' => 'gongsi_phone_c',
  ),
),
);
