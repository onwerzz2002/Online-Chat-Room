

var username = $("#username").val();
var friend = $("#friend").val();

// to get the current hour and minute
var dt = new Date();
var time;
if(dt.getHours() > 12) {
    var hour = dt.getHours() - 12;
    time = "(" + hour + ":" + dt.getMinutes() +" PM)";
    }
    
 


// to check if your friend log out when chatting
    
    var pop_up = 0;
    var check_logged_out = setInterval(is_Logged_out, 2000);
    
    function is_Logged_out() {
        
        
        $.post("is_friend_logged_out.php",{friend: friend}, function(data){


            if(data == "offline") {           
                  if(pop_up == 0) {
                      $("#chatroom_console").append("   "+time+" "+friend+" has logged out.<br/>");

                        pop_up =1;                     
                        
                  }       
            }
            else {
                
                pop_up =0;
            }

        });
    };
    

