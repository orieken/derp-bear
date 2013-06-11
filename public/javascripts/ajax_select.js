/**
 * Created with JetBrains RubyMine.
 * User: orieken
 * Date: 3/28/13
 * Time: 2:38 PM
 * To change this template use File | Settings | File Templates.
 */

var $universal_year = $('#universal_year'),
    $universal_make = $('#universal_make'),
    $submit_button = $('#submit_ajax');


$universal_year.change(function()
{
    option = $universal_year.val();
    if (option != 'select year') {
        $universal_make.removeAttr('disabled');
    }
    else {
        $universal_make.attr('disabled', 'disabled');
    }
}).trigger('change').spinner(); // added trigger to calculate initial universal_year

//playing around with ajax loading
$('#loadingDiv').hide().ajaxStart( function() {
    $(this).show();  // show Loading Div
} ).ajaxStop ( function(){
    $(this).hide(); // hide loading div
});
