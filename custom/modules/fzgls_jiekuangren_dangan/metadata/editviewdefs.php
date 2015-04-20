<?php
$module_name = 'fzgls_jiekuangren_dangan';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EMAIL_ADDRESSES' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_ADDRESS_INFORMATION' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => false,
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 'last_name',
          1 => 
          array (
            'name' => 'first_name',
            'customCode' => '{html_options name="salutation" id="salutation" options=$fields.salutation.options selected=$fields.salutation.value}&nbsp;<input name="first_name"  id="first_name" size="25" maxlength="25" type="text" value="{$fields.first_name.value}">',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'xinbie_type_c',
            'studio' => 'visible',
            'label' => 'LBL_XINBIE_TYPE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'zhengjian_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_ZHENGJIAN_TYPE',
          ),
          1 => 
          array (
            'name' => 'zhengjian_num_c',
            'label' => 'LBL_ZHENGJIAN_NUM',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'hunyin_status_c',
            'label' => 'LBL_HUNYIN_STATUS',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'jiating_address_c',
            'label' => 'LBL_JIATING_ADDRESS',
          ),
          1 => '',
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'gongzuo_danwei_c',
            'label' => 'LBL_GONGZUO_DANWEI',
          ),
          1 => '',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'zhiwu_c',
            'label' => 'LBL_ZHIWU',
          ),
          1 => 
          array (
            'name' => 'lianxi_phone_c',
            'label' => 'LBL_LIANXI_PHONE',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'xindai_guwen_name_c',
            'studio' => 'visible',
            'label' => 'LBL_XINDAI_GUWEN_NAME',
          ),
          1 => '',
        ),
        8 => 
        array (
          0 => 'description',
        ),
      ),
      'lbl_email_addresses' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'beiyong_lianxiren_name_c',
            'label' => 'LBL_BEIYONG_LIANXIREN_NAME',
          ),
          1 => 
          array (
            'name' => 'beiyong_lianxiren_phone_c',
            'label' => 'LBL_BEIYONG_LIANXIREN_PHONE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'beiyong_lianxiren_guanxi_c',
            'label' => 'LBL_BEIYONG_LIANXIREN_GUANXI',
          ),
        ),
      ),
      'lbl_address_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'peiou_name_c',
            'label' => 'LBL_PEIOU_NAME',
          ),
          1 => 
          array (
            'name' => 'peiou_zhengjian_type_c',
            'studio' => 'visible',
            'label' => 'LBL_PEIOU_ZHENGJIAN_TYPE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'peiou_zhengjian_num_c',
            'label' => 'LBL_PEIOU_ZHENGJIAN_NUM',
          ),
          1 => 
          array (
            'name' => 'peiou_gongzuo_duty_c',
            'label' => 'LBL_PEIOU_GONGZUO_DUTY',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'peiou_gongzuo_danwei_c',
            'label' => 'LBL_PEIOU_GONGZUO_DANWEI',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
?>
