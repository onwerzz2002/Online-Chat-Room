
<?php 
  include('database.php');
  $username = $_SESSION["name"];
?>







<!--Add_friend web page-->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Friend List</title>
        <link rel="stylesheet" href="add_friend.css" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body>
        
        <div id="add_friend_area">
           
            <div id="form">
                
                    <h2 id="addnewfriend">Add New Friend</h2>
                    <input id="username" type="hidden" name="username" value="<?=$username?>">
                    <input id="friendname" type="text" name="friend_name" placeholder="Friend's name">
                    <button id="button">Add</button>
                    
                    <a id="friend_list_page" href="friend_list.php">Back to friend list page</a>
            
            </div>
        </div>
        
        <div id="show_add_friend_message"></div>
        
        
        <script src="add_friend.js" type="text/javascript" charset="utf-8"></script>
    </body>
</html>






