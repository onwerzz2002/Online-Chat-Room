<?php
  include("database.php");
        
            // to give the paramaters a quote, maing it easier to query in the sql statement
  
         
              
              $username = $db->quote($_POST["username"]);
              $friend = $db->quote($_POST["friend"]);
              $message = $db->quote($_POST["message"]);
          
            
            
           
   //$db->exec("INSERT INTO messages (talker, receiver, message, checked) VALUES(".$username.",".$friend.",".$message.",0)");
   //$db->exec("INSERT INTO messages (talker, receiver, message, checked) VALUES(".$friend.",".$username.",".$message.",0)");
   
   
    $db->exec("INSERT INTO messages (talker, receiver, talker_checked, receiver_checked, message) "
            . "VALUES(".$username.",".$friend.", 0, 0,".$message.")");
   
   
   
    
            $rows = $db->query("SELECT id, talker_checked, message FROM messages "
                    . "WHERE talker = ".$username." AND receiver =".$friend." ORDER BY id DESC LIMIT 1");
            if($rows){
                foreach($rows as $row){
                    if( $row["talker_checked"] == 0) {
                        
                        // print out the message to the chat console
                        echo $row["message"];
                    
                        //to make the message just pulled read(checked)
                        $id = $row["id"];
                        $db->exec("UPDATE messages SET talker_checked = 1 WHERE id =".$id);
                        
                    }
                    break;
                }
            }
            else{
                echo "failed to extract message...";
            }


?>

