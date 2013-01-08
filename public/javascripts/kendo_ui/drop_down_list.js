/**
 * Created with JetBrains RubyMine.
 * User: bisbot
 * Date: 1/7/13
 * Time: 8:05 AM
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function() {
    var data = [
        { text: "Black", value: "Black" },
        { text: "Orange", value: "Orange" },
        { text: "Grey", value: "Grey" }
    ];

    // create DropDownList from input HTML element
    $("#color").kendoDropDownList({
        dataTextField: "text",
        dataValueField: "value",
        dataSource: data,
        index: 0,
        change: onChange
    });

    // create DropDownList from select HTML element
    $("#size").kendoDropDownList();

    var color = $("#color").data("kendoDropDownList");

    color.select(0);
    var size = $("#size").data("kendoDropDownList");

    function onChange() {
        var value = $("#color").val();
        $("#cap")
            .toggleClass("black-cap", value == "Black")
            .toggleClass("orange-cap", value == "Orange")
            .toggleClass("grey-cap", value == "Grey");
    };

    $("#get").click(function() {
        alert('Thank you! Your Choice is:\n\nColor ID: '+color.value()+' and Size: '+size.value());
    });
});