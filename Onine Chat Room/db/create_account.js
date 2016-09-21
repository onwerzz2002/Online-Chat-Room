$(document).ready(function(){
    
    //alert("1");
    $("#sign_up_button").click(function(){
        
        var username =$("#username").val();
        var password = $("#password").val();
        var repassword = $("#re-type").val();
        
        //alert(password);
        //alert(repassword);
        if(username == ""){
            alert("username cannot be empty");
        }
        else {
            if(password == "") {
                alert("Your password cannot be empty.");
            
        }
            else if(password != repassword){
                alert("Your password does not match...Please type again!");
            }
            else{
                
                
                
                
                // username, password are all set, now go to database to check
                var user_exist = 0;
                
                $.post("create_account_check.php",{username: username,password: password}, function(data){
            
                       //alert(data);
                       // user already exists
                       if(data == 1){
                           user_exist = 1;
                       }
                       // user doesn't exist
                       else{
                           user_exist = 0;
                       }
                       
                       
                        if(user_exist == 1){
                             alert("This user already has an account");
                        }
                        
                        else {
                             
                             $("#login").attr("action","index.php");
                             
                             alert("Welcome "+username+". You sucessfully joined in this chatroom");
                             
                             //window.location = 'index.php';
                             
                             //$("#login").attr("action","index.php");
                        }
                });
              
            }
        }
    });
    
    
    $("#main_page_button").click(function(){
       
       window.location = 'index.php';
   
     });
    
    
});