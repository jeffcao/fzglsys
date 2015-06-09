/**
 * Created by jeffcao on 15/6/6.
 */
function liucheng_controll(panel_id) {
    var c_table = document.getElementById(panel_id);

    var all_input_objs = $(c_table).find("input");
    $(all_input_objs).each(function(index, input_obj){
        $(input_obj).prop('disabled', true);
    });

    var all_textarea_objs = $(c_table).find("textarea");
    $(all_textarea_objs).each(function(index, textarea_obj){
        $(textarea_obj).prop('disabled', true);
    });

    var all_select_objs = $(c_table).find("select");
    $(all_select_objs).each(function(index, select_obj){
        $(select_obj).prop('disabled', true);
    });

    var all_button_objs = $(c_table).find("button");
    $(all_button_objs).each(function(index, btn_obj){
        $(btn_obj).prop('disabled', true);
    });


    var all_img_objs = $(c_table).find("img");
    $(all_img_objs).each(function(index, img_obj){
        $(img_obj).hide();
    });

}
$(document).ready(function(){
    var liucheng_status =  $("#liucheng_status")[0].value;

    //liucheng_controll("Default_liuch_fangkuang_liucheng_Subpanel");
})