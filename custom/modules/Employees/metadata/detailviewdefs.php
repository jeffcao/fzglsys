<?php
$viewdefs ['Employees'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 
          array (
            'customCode' => '{if $DISPLAY_EDIT}<input title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" class="button" onclick="this.form.return_module.value=\'{$module}\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$id}\'; this.form.action.value=\'EditView\'" type="submit" name="Edit" id="edit_button" value="{$APP.LBL_EDIT_BUTTON_LABEL}">{/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_EDIT_BUTTON_LABEL}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_EDIT_BUTTON_TITLE}',
                'accessKey' => '{$APP.LBL_EDIT_BUTTON_KEY}',
                'class' => 'button',
                'onclick' => 'this.form.return_module.value=\'{$module}\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$id}\'; this.form.action.value=\'EditView\';',
                'id' => 'edit_button',
                'name' => 'Edit',
              ),
              'template' => '{if $DISPLAY_EDIT}[CONTENT]{/if}',
            ),
          ),
          1 => 
          array (
            'customCode' => '{if $DISPLAY_DUPLICATE}<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" onclick="this.form.return_module.value=\'{$module}\'     ; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$id}\'; this.form.isDuplicate.value=true; this.form.action.value=\'EditView\'" type="submit" name="Duplicate" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}" id="duplicate_button">{/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_DUPLICATE_BUTTON_LABEL}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_DUPLICATE_BUTTON_TITLE}',
                'accessKey' => '{$APP.LBL_DUPLICATE_BUTTON_KEY}',
                'class' => 'button',
                'onclick' => 'this.form.return_module.value=\'{$module}\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$id}\'; this.form.isDuplicate.value=true; this.form.action.value=\'EditView\';',
                'name' => 'Duplicate',
                'id' => 'duplicate_button',
              ),
              'template' => '{if $DISPLAY_DUPLICATE}[CONTENT]{/if}',
            ),
          ),
          2 => 
          array (
            'customCode' => '{if $DISPLAY_DELETE}<input title="{$APP.LBL_DELETE_BUTTON_LABEL}" accessKey="{$APP.LBL_DELETE_BUTTON_LABEL}" class="button" onclick="if( confirm(\'{$DELETE_WARNING}\') ) {ldelim} this.form.return_module.value=\'{$module}\'; this.form.return_action.value=\'index\'; this.form.return_id.value=\'{$id}\'; this.form.action.value=\'delete\'; this.form.submit();{rdelim}" type="button" name="Delete" value="{$APP.LBL_DELETE_BUTTON_LABEL}" id="delete_button">{/if}',
            'sugar_html' => 
            array (
              'type' => 'button',
              'value' => '{$APP.LBL_DELETE_BUTTON_LABEL}',
              'htmlOptions' => 
              array (
                'title' => '{$APP.LBL_DELETE_BUTTON_LABEL}',
                'accessKey' => '{$APP.LBL_DELETE_BUTTON_LABEL}',
                'class' => 'button',
                'onclick' => 'if( confirm(\'{$DELETE_WARNING}\') ) {ldelim} this.form.return_module.value=\'{$module}\'; this.form.return_action.value=\'index\'; this.form.return_id.value=\'{$id}\'; this.form.action.value=\'delete\'; this.form.submit();{rdelim}',
                'name' => 'Delete',
                'id' => 'delete_button',
              ),
              'template' => '{if $DISPLAY_DELETE}[CONTENT]{/if}',
            ),
          ),
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
          0 => 
          array (
            'name' => 'yuangong_name_c',
            'label' => 'LBL_FZGLS_YUANGONG_NAME',
          ),
          1 => 
          array (
            'name' => 'gong_hao_c',
            'label' => 'LBL_FZGLS_GONG_HAO',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'xinbie_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_XINBIE_TYPE',
          ),
          1 => 
          array (
            'name' => 'shenfen_zheng_c',
            'label' => 'LBL_FZGLS_SHENFEN_ZHENG',
          ),
        ),
        2 => 
        array (
          0 => 'phone_mobile',
          1 => 
          array (
            'name' => 'duty_type_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_DUTY_TYPE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'suoshu_bumeng_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_SUOSHU_BUMENG',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'suoshu_fengongsi_c',
            'studio' => 'visible',
            'label' => 'LBL_FZGLS_SUOSHU_FENGONGSI',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'guding_gongzi_c',
            'label' => 'LBL_FZGLS_GUDING_GONGZI',
          ),
          1 => 
          array (
            'name' => 'gongzi_butie_c',
            'label' => 'LBL_FZGLS_GONGZI_BUTIE',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'gongzi_jixiao_c',
            'label' => 'LBL_FZGLS_GONGZI_JIXIAO',
          ),
          1 => '',
        ),
        7 => 
        array (
          0 => 'employee_status',
        ),
        8 => 
        array (
          0 => 'description',
        ),
        9 => 
        array (
          0 => 'email1',
        ),
      ),
    ),
  ),
);
?>
