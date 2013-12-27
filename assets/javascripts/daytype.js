
function multicalendar_daytype_edit(row_id) {
    jQuery('#' + row_id + ' .edit').show();
};

function multicalendar_daytype_editend(row_id) {
    jQuery('#' + row_id + ' .edit').hide();
};

function multicalendar_register_daytype_functions() {
    jQuery('.controller-calendar.action-settings .daytype').each(function() {
        
        var $row = jQuery(this);
        var row_id = $row.attr('id');
        
        $row.find('.submit, .cancel').click(function() {
            multicalendar_daytype_editend(row_id);
        });
        
        $row.find('.edit-button').click(function() {
            multicalendar_daytype_edit(row_id);
        });
    });
};

jQuery(document).ready(multicalendar_register_daytype_functions);
