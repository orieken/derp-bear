/**
 * Created with JetBrains RubyMine.
 * User: orieken
 * Date: 3/28/13
 * Time: 2:38 PM
 * To change this template use File | Settings | File Templates.
 */


$(document).ready(function() {
var $universal_year = $('#universal_year'),
    $universal_make = $('#universal_make'),
    $submit_button = $('#submit_ajax');

    $($universal_make).attr('disabled', 'disabled');
    $($submit_button).attr('disabled', 'disabled');

    $($universal_year).change(function () {

        if ($universal_make.attr('disabled')) {
            $universal_make.removeAttr('disabled');
        }
        else {
            $universal_make.attr('disabled', 'disabled');
        }
    })

    $($universal_make).change(function () {

        if ($submit_button.attr('disabled')) {
            $submit_button.removeAttr('disabled');
        }
        else {
            $submit_button.attr('disabled', 'disabled');
        }
    })


});


//
//$($universal_make).change(function () {
//    if ($($universal_year).val() == '1992') $($universal_make).removeAttr('disabled');
//})
//    .change();
//$($universal_make).change(function () {
//    if ($(this).val() != 'Select Make') $($submit_button).removeAttr('disabled');
//})
//    .change();


//
//$($universal_year).change(function () {
//    $("select option:selected").each(function () {
//
//    });
//    $("div").text(str);
//})
//    .change();