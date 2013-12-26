
function select_all() {
    if (jQuery("#all_select").is(':checked')){
        jQuery(".select_all").attr('checked', "checked"); //true
    }else{       
       jQuery(".select_all").removeAttr("checked");
    }
}
