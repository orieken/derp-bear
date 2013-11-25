$(document).ready(function () {
//    $.ajax({
//        url: 'http://us.battle.net/api/wow/character/firetree/Bisbot?fields=pets',
//        dataType: 'jsonp',
//        success: function(data){
//        }
//    });
//    $.getJSON('http://www.nnu.edu/iphone/api/weather.php', function(data) {
//
//    });
    function myCallback(jsonData)
    {
        // do something with the JSON

        var user_data = JSON.parse(jsonData);
        console.log(user_data);

    }

    jQuery(document).ready(function($){
        $.getScript("https://api.github.com/users/mojombo?callback=myCallback");
    });

});