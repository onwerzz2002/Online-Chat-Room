<?php 
  include('database.php');
 
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chat Room</title>
        <link rel="stylesheet" href="" type="text/css">
        <link rel="stylesheet" href="create_account.css" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body>
       
        <div id="create_account_box">
            <h2>Welcome, New friend!</h2>
            <form id="login" action="" method="post">
                  Username:<input id="username" type="text" name="name">
                  Password:<input id="password"type="password" name="password">
                  re-type password:<input id="re-type" type="password" name="password">
                  <input id="sign_up_button" type="submit" value="Sign up">
              </form>
             <button id="main_page_button">Main Page</button>
        </div>
        
        
        
        
        <script src="create_account.js" type="text/javascript" charset="utf-8"></script>
    </body>
</html>