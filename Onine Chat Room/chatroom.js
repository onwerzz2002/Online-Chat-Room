$(document).ready(function(){
  
   //this following is for logging out
   $("#go_logged_out").click(function(){
       var exit = confirm("Are you sure you want to end the session?");
       if(exit==true){window.location = 'index.php?logout=true';}
   
     });
     
     
    
    
    // this following is for tracking chat history
     var username = $("#username").val();
     var friend = $("#friend").val();
     
    $("#track_chat_history_button").click(function(){
        
        
            var oldscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;
      
            
                $.post("track_chat_history.php",{username: username, friend: friend}, function(data){
                    
                    //alert(data);
                    $("#chatroom_console").empty();     //to clear the chatroom console for posting chat history
                    $("#chatroom_console").append(data);

                    

                    var newscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;

                        if(newscrollHeight > oldscrollHeight){
                            $("#chatroom_console").animate({ scrollTop: newscrollHeight }, 'normal'); 
                        }
                });
            
         
     });
     
    
});


// this following is for clearing chat console

     $("#clear_chat_console_button").click(function(){
         
         $("#chatroom_console").empty();     //to clear the chatroom console for posting chat history
     });


                
                
               