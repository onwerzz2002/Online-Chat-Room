<?php
  include("database.php");
        
            // to give the paramaters a quote, maing it easier to query in the sql statement
  
         
              
            $username = $db->quote($_POST["username"]);
            $friend = $db->quote($_POST["friend"]);
              
          
          
            $rows1 = $db->query("SELECT id,talker,receiver,message,datetime FROM messages WHERE (talker =". $username." AND receiver =".$friend.")
                                 OR (talker =". $friend ." AND receiver =".$username.")");
            //$rows2 = $db->query("SELECT DISTINCT datetime, talker,receiver,message FROM messages WHERE talker =".$friend." AND receiver =".$username);
            
            
            if($rows1){
                
                foreach($rows1 as $row){
                        
                       if($row["talker"] === $username){                                                  
                           //echo "<p class='usernamemessage'>(".$row["datetime"].")";
                           echo "<p>(".$row["datetime"].")[".$row["talker"]."] says:".$row["message"]."</p>";
                           //echo "<p class='usernamemessage'>(".$row["datetime"].")";
                       }
                       else {
                           echo "<p>(".$row["datetime"].")[".$row["talker"]."] says:".$row["message"]."</p>";
                       }
                        
                }
                
                
            }
            else{
                echo "failed to extract message...";
            }


?>

