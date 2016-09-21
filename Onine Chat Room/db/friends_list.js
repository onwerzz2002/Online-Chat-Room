$(document).ready(function(){
  
   //this following is for logging out
   $("#go_logged_out_button_f").click(function(){
       var exit = confirm("Are you sure you want to end the session?");
       if(exit==true){window.location = 'index.php?logout=true';}
   
     });
     
});