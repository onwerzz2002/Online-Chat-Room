<?php 
  include('database.php');
  $username = $_SESSION["name"];
  $friend = $_POST["friend"];
 
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chat Room</title>
        <link rel="stylesheet" href="chatroom.css" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body>
        
        <!--go back to friend list-->
        <div id="go_back_to_friend_list">           
            <a id="go_back_to_friend_list_button" href="friend_list.php">Back to friend list</a>
        </div>
        
        <!--log out-->
        <div id="go_logged_out">          
            <a id="go_logged_out_button" href="logout.php">Log out</a>
        </div>
        
        <!--track chat history-->
        <div id="track_chat_history">          
            <button id="track_chat_history_button">Track Chat History</button>
        </div>
        
        <!--clear chat console-->
        <div id="clear_chat_console">          
            <button id="clear_chat_console_button">Clear chat console</button>
        </div>
        
        
        <!--<p><?=$friend?></p>-->
        <div id="chatroom">
            <h3 id="chatwith">Chatting with <?=$friend?></h3>
            <div id="chatroom_console"></div>
            <div id="data_input">
                
                <textarea id="bb" rows="5" cols="20"></textarea>
                    
                    <input id="submit_button" type="submit" value="Send!">
                    <input id="username" type="hidden" value="<?=$username?>">
                    <input id="friend" type="hidden" value="<?=$friend?>">
                
            </div>
            
        </div>
        
        
        <script src="sending_message.js" type="text/javascript" charset="utf-8"></script>
        <script src="friend's_message.js" type="text/javascript" charset="utf-8"></script>
        <script src="is_friend_logged_out.js" type="text/javascript" charset="utf-8"></script>
        <script src="chatroom.js" type="text/javascript" charset="utf-8"></script>
    </body>
</html>