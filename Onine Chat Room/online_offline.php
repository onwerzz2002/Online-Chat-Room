<?php
  include("database.php");
        
            // to give the paramaters a quote, maing it easier to query in the sql statement
            $username = $db->quote($_POST["username"]);
            
           
            $rows = $db->query("SELECT online FROM users "
                    . "WHERE username = ".$username);
            
            if($rows){
                foreach($rows as $row){
                    if( $row["online"] == 0) {
                        //echo "successfully";
                        $db->exec("UPDATE users SET online = 1 WHERE username =".$username);
                    }            
                }
            }
            else{
                echo "failed to extract message...";
            }


?>