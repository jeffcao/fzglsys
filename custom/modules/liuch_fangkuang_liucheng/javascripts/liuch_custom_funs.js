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
        if ($(img_obj).id != "" && $(img_obj).id != "undefined"){ $(img_obj).hide();}
    });

}

function disabled_action_buttons(){
    $("#SAVE_HEADER").prop('disabled', true);
    $("#CANCEL_HEADER").prop('disabled', true);
    $("#SAVE_FOOTER").prop('disabled', true);
    //alert($("#SAVE_FOOTER"));
    $("#CANCEL_FOOTER").prop('disabled', true);
    //alert($("#SUBMIT_LIUCHENG"));
    $("#SUBMIT_LIUCHENG").prop('disabled', true);
}

function always_disabled_obj(){
    liucheng_controll("LBL_EDITVIEW_PANEL5");
    $("#name").prop('disabled', true);
    $("#danju_zhuangtai").prop('disabled', true);
    $("#kefu_jingli_c").prop('disabled', true);
    $("#btn_kefu_jingli_c").prop('disabled', true);
    $("#btn_clr_kefu_jingli_c").prop('disabled', true);

    $("#fengkong_jingli_c").prop('disabled', true);
    $("#btn_fengkong_jingli_c").prop('disabled', true);
    $("#btn_clr_fengkong_jingli_c").prop('disabled', true);

    $("#bumen_jingli_c").prop('disabled', true);
    $("#btn_bumen_jingli_c").prop('disabled', true);
    $("#btn_clr_bumen_jingli_c").prop('disabled', true);

    $("#chanpin_jingli_c").prop('disabled', true);
    $("#btn_chanpin_jingli_c").prop('disabled', true);
    $("#btn_clr_chanpin_jingli_c").prop('disabled', true);
}
$(document).ready(function(){

    always_disabled_obj();

    var liucheng_status =  $("#liucheng_status")[0].value;
    var disabled_all =  $("#disabled_all")[0].value;

    if (liucheng_status != "zhidanzhong" || disabled_all == "1")
    {
        liucheng_controll("Default_liuch_fangkuang_liucheng_Subpanel");
    }
    if (liucheng_status != "dai_fengkong_shenhe" || disabled_all == "1")
        liucheng_controll("LBL_EDITVIEW_PANEL1");
    if (liucheng_status != "dai_bumen_shenhe" || disabled_all == "1")
        liucheng_controll("LBL_EDITVIEW_PANEL2");
    if (liucheng_status != "dai_chanpin_shenhe" || disabled_all == "1")
        liucheng_controll("LBL_EDITVIEW_PANEL3");
    if (liucheng_status != "dai_kefu_huifang" || disabled_all == "1")
        liucheng_controll("LBL_EDITVIEW_PANEL4");

    if (disabled_all == "1" || liucheng_status == "yichang_guanbi" || liucheng_status == "wancheng_huifang")
        disabled_action_buttons();
})