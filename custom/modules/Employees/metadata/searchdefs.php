<?php
$searchdefs ['Employees'] = 
array (
  'layout' => 
  array (
    'basic_search' => 
    array (
      'name' => 
      array (
        'type' => 'varchar',
        'label' => 'LBL_NAME',
        'width' => '10%',
        'default' => true,
        'name' => 'name',
      ),
      'gong_hao_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_FZGLS_GONG_HAO',
        'width' => '10%',
        'name' => 'gong_hao_c',
      ),
      'shenfen_zheng_c' => 
      array (
        'type' => 'varchar',
        'default' => true,
        'label' => 'LBL_FZGLS_SHENFEN_ZHENG',
        'width' => '10%',
        'name' => 'shenfen_zheng_c',
      ),
      'suoshu_fengongsi_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
        'id' => 'FZGLS_FENGGONGSI_INFO_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'suoshu_fengongsi_c',
      ),
      'suoshu_bumeng_c' => 
      array (
        'type' => 'relate',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_FZGLS_SUOSHU_BUMENG',
        'id' => 'FZGLS_BUMENG_MATAINE_ID_C',
        'link' => true,
        'width' => '10%',
        'name' => 'suoshu_bumeng_c',
      ),
      'yuangong_status_c' => 
      array (
        'type' => 'enum',
        'default' => true,
        'studio' => 'visible',
        'label' => 'LBL_YUANGONG_STATUS',
        'width' => '10%',
        'name' => 'yuangong_status_c',
      ),
    ),
    'advanced_search' => 
    array (
      0 => 'first_name',
      1 => 'last_name',
      2 => 'employee_status',
      3 => 'title',
      'phone' => 
      array (
        'name' => 'phone',
        'label' => 'LBL_ANY_PHONE',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      4 => 'department',
      'email' => 
      array (
        'name' => 'email',
        'label' => 'LBL_ANY_EMAIL',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_street' => 
      array (
        'name' => 'address_street',
        'label' => 'LBL_ANY_ADDRESS',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_city' => 
      array (
        'name' => 'address_city',
        'label' => 'LBL_CITY',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_state' => 
      array (
        'name' => 'address_state',
        'label' => 'LBL_STATE',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_postalcode' => 
      array (
        'name' => 'address_postalcode',
        'label' => 'LBL_POSTAL_CODE',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
      'address_country' => 
      array (
        'name' => 'address_country',
        'label' => 'LBL_COUNTRY',
        'type' => 'name',
        'default' => true,
        'width' => '10%',
      ),
    ),
  ),
  'templateMeta' => 
  array (
    'maxColumns' => '3',
    'maxColumnsBasic' => '4',
    'widths' => 
    array (
      'label' => '10',
      'field' => '30',
    ),
  ),
);
?>
