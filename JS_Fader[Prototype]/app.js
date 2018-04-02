require('!style-loader!css-loader!./css/styles.css');
var $ = require('jquery');


$(document).ready(function() {

    var images = ["images/1.jpg", "images/2.jpg", "images/3.jpg", "images/4.jpg", "images/5.jpg", "images/6.jpg", "images/7.jpg", "images/8.jpg"];
    var counter = 1;

    $("#pic").attr("src", images[counter]);

    var interval = setInterval(function() {

        if(counter >= images.length - 1) {
            counter = 0;
        } 

        $("#pic").fadeOut(function() {
            $(this).attr("src", images[++counter]);
            $(this).fadeIn();
        });
    }, 3000);

});