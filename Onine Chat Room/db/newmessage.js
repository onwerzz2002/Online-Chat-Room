$(document).ready(function(){
    //alert("test");
    
    var pop_up = 0;
    setInterval(checkNewmessage, 1500);
    
    
    function checkNewmessage() {
        $.post("newmessage.php",{username: username}, function(data){

                if(data == 0){
                     pop_up = 0;
                }
                else{
                     //alert(data);  
                   if(pop_up == 0){
                       $("#unread_friend_list").append(data);
                       pop_up = 1;
                   }  
                }


         });
    }
        /*
        if(data == "offline") {           
                  if(pop_up == 0) {
                      $("#chatroom_console").append("   "+time+" "+friend+" has logged out.<br/>");

                        pop_up =1;                     
                        
                  }       
            }
            else {
                
                pop_up =0;
            }
            */
    
            
    
});