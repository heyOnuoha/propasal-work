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
    
    $(".btn_login").on ({
        mouseenter: function() {
            $(this).css("background", "#ffaf40"); 
        },
        
        mouseout: function() {
            $(this).css("background", "#eb2f06"); 
        }
    });
}
