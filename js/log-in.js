$(document).ready(LoginBehavior);

function LoginBehavior() {
    
    $(".i_3").on({    
        focusin : function() {
            $(this).css("border-bottom", "3px solid #eb2f06");
        },
        
        focusout : function() {
            $(this).delay("slow").css("border-bottom", "3px solid #ffaf40"); 
        }
    });
    
    $(".btn_login").mouseenter(function() {
        $(this).css("background", "#ffaf40"); 
    });
    
    $(".btn_login").mouseout(function() {
       $(this).css("background", "#eb2f06"); 
    });
    
    $("#checker").mouseenter(function() {
        $(this).css("border", "3px solid #eb2f06");
    });

    console.log(mail.getAttribute("placeholder"));

    console.log("hello");
}
