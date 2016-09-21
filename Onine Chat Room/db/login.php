<?php

include("database.php");
if(isset($_POST["name"]) && isset($_POST["password"])) {
    $name = $_POST["name"];   
    $password = $_POST["password"];
    
    if(check_password_correct($name, $password)) {
        
        // not logged in yet
        if(check_already_logged_in($name, $password)) {
            $_SESSION["name"] = $name;
            redirect_helper("friend_list.php","Logged in successfully!!");
        }
        //multiple logging in is not allowed
        else {
            redirect_helper("index.php","You are aleady online!");
        }
        
         
    }
    else {
        redirect_helper("index.php","You might type in wrong username or password...");
    }
}

?>


