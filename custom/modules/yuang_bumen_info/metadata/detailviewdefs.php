<?php
$module_name = 'yuang_bumen_info';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 
          array (
            'name' => 'bumen_bianhao',
            'label' => 'LBL_BUMEN_BIANHAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'dianhua',
            'label' => 'LBL_DIANHUA',
          ),
          1 => 
          array (
            'name' => 'youbian',
            'label' => 'LBL_YOUBIAN',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'bumeng_jibie_c',
            'label' => 'LBL_BUMENG_JIBIE',
          ),
          1 => 
          array (
            'name' => 'shangji_bumen_c',
            'studio' => 'visible',
            'label' => 'LBL_SHANGJI_BUMEN',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'dizhi',
            'label' => 'LBL_DIZHI',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'bumen_fuzeren_c',
            'studio' => 'visible',
            'label' => 'LBL_BUMEN_FUZEREN',
          ),
          1 => 
          array (
            'name' => 'fuzeren_dianhua',
            'label' => 'LBL_FUZEREN_DIANHUA',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
          ),
          1 => 'date_entered',
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'modified_by_name',
            'label' => 'LBL_MODIFIED_NAME',
          ),
          1 => 'date_modified',
        ),
        7 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
?>
