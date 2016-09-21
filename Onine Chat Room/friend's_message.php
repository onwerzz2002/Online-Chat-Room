<?php
  include("database.php");
            
            // to give the paramaters a quote, maing it easier to query in the sql statement
           
              
            $username = $db->quote($_POST["username"]);
            $friend = $db->quote($_POST["friend"]);
              
          
              
            //$rows = $db->query("SELECT id,message,checked FROM messages "
            //        . "WHERE talker = ".$username." AND receiver =".$friend." AND checked = 0");
            
            $rows = $db->query("SELECT id,receiver_checked,message FROM messages "
                    . "WHERE talker = ".$friend." AND receiver =".$username." AND receiver_checked = 0");
            
            
            if($rows){
                
                foreach($rows as $row){
                    if( $row["receiver_checked"] == 0) {
                        
                        // print out the message to the chat console
                        echo $row["message"];
                    
                        //to make the message just pulled read(checked)
                        $id = $row["id"];
                        $db->exec("UPDATE messages SET receiver_checked = 1 WHERE id =".$id);
                    }
                    break;
                }
            }
            else{
                echo "failed to extract message in periodically...";
            }
            

?>