/**
 * Created with JetBrains RubyMine.
 * User: bisbot
 * Date: 1/7/13
 * Time: 8:05 AM
 * To change this template use File | Settings | File Templates.
 */


    var data = [
        { text: "Black", value: "1" },
        { text: "Orange", value: "2" },
        { text: "Grey", value: "3" }
    ];

    // create DropDownList from input HTML element
    $('#color').kendoDropDownList({
        dataTextField: "text",
        dataValueField: "value",
        dataSource: data,
        index: 0,
        change: onChange
    });

    // create DropDownList from select HTML element
    $('#size').kendoDropDownList();

    var color = $('#color').data("kendoDropDownList");

    color.select(0);
    var size = $('#size').data("kendoDropDownList");

    function onChange() {
        var value = $('#color').val();
        $('#cap')
            .toggleClass("black-cap", value == 1)
            .toggleClass("orange-cap", value == 2)
            .toggleClass("grey-cap", value == 3);
    };

    $('#get').click(function() {
        alert('Thank you! Your Choice is:\n\nColor ID: '+color.value()+' and Size: '+size.value());
    });
