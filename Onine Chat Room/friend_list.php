<?php 
  include('database.php');
  $username = $_SESSION["name"];
  $friends = "SELECT friend FROM friends WHERE username = '$username'";
  $rows = $db->query($friends);
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Friend List</title>
        <link rel="stylesheet" href="friends_list.css" type="text/css">
        <link rel="stylesheet" href="chatroom.css" type="text/css">
        <link rel="stylesheet" href="frined_list_background.css" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body>
        
        <div id="friends_list">
            <h1 id="welcomeback">Welcome back <?=$username?></h1>
            
            <div id="go_logged_out_f">          
                <a id="go_logged_out_button_1" href="logout.php">Log out</a>
            </div>

            <form id="form" action="chatroom.php" method="post">
                <div>
                    <h2>Choose friend you want to talk.</h2>
                    
                    <!--
                    <div id="add_friend">
                        <input type="add_friend_submit" value="Add friend"></div>
                        <input id="friendname" type="text" name="friendname" placeholder="friend's name">
                        
                    </div>
                    -->

                    
                    
                    <select id="friends_drop_down" name="friend" size="15">
                        <?php
                            foreach($rows as $row) { ?>
                            <option><?= $row["friend"]?></option>
                        <?php  } ?>
                    </select>
                    <div>
                      <input type="submit" value="Let's chat">
                      <a id="add_friend"href="add_friend.php">Add friend</a>
                    </div>
                      
                           
                </div>
                     <input id="username" type="hidden" name='<?=$username?>' value="username">
               
            
            </form>
            
            <div id="newmessagearea">
                <h4>New Message From:</h4>
                <div id="unread_friend_list"></div>
            </div>
        </div>
        
        
        <script src="online_offline.js" type="text/javascript" charset="utf-8"></script>
        <script src="newmessage.js" type="text/javascript" charset="utf-8"></script>
    </body>
</html>
