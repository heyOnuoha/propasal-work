
$(document).ready(function() {
    
    var maxTextLength = 15;
    var specialDets = document.getElementsByClassName("specialDet");
    
//    for(var spec of specialDets) {
//        
//        console.log(spec.innerHTML);
//    }
//    
    for(var i = 0; i < specialDets.length; i++) {
        
        var specText = specialDets[i].innerHTML;
     var subSpec = specText.substring(0, maxTextLength);
        
        console.log(subSpec);
        
        if(specText.length > maxTextLength) {
            specialDets[i].innerHTML = subSpec;
            
            console.log(true);
        }
    }
//    
//    console.log(specialDets.length);
});