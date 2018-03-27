
$(document).ready(function() {
    
    var maxTextLength = 8;
    var specialDets = document.getElementsByClassName("specialDet");
    
//    for(var spec of specialDets) {
//        
//        console.log(spec.innerHTML);
//    }
//    
    for(var i = 0; i < specialDets.length; i++) {
        
     var subSpec = specialDets[i].substring(0, maxTextLength);
        
        console.log(subSpec);
        
        if(subSpec.length > maxTextLength) {
            specialDets[i].innerHTML = subSpec;
        }
    }
//    
//    console.log(specialDets.length);
});