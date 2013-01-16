/*global Ext:false */
Ext.application({
    launch: function () {
//        Ext.create('Ext.form.Panel', {
//            fullscreen: true,
//            items: [{
//                xtype: 'fieldset',
//                title: 'Select',
//                items: [{
//                    xtype: 'selectfield',
//                    id: 'select_option_example',
//                    label: 'Choose one',
//                    options: [{
//                        text: 'First Option',
//                        value: 'first'
//                    }, {
//                        text: 'Second Option',
//                        value: 'second'
//                    }, {
//                        text: 'Third Option',
//                        value: 'third'
//                    }]
//                }]
//            }]
//        });
        Ext.create('Ext.Carousel', {
            fullscreen: true,
            defaults: {
                styleHtmlContent: true
            }, // defaults
            items: [
                {
                    html: 'red',
                    id: 'red_widget',
                    style: 'background-color:#f00;'
                }, {
                    html: 'orange',
                    id: 'orange_widget',
                    style: 'background-color:#ffb600;'
                }, {
                    html: 'yellow',
                    id: 'yellow_widget',
                    style: 'background-color:#ff0;'
                }, {
                    html: 'green',
                    id: 'green_widget',
                    style: 'background-color:#80ff4d;'
                }, {
                    html: 'blue',
                    id: 'blue_widget',
                    style: 'background-color:#009dff;'
                }
            ] // items
        }); // create()

    }
});

