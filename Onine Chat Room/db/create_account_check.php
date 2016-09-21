<?php
  include("database.php");
  
            $username = $_POST["username"];
            $password = $_POST["password"];
            
            // to give the paramaters a quote, maing it easier to query in the sql statement 
            $username_q = $db->quote($_POST["username"]);
            $password_q = $db->quote($_POST["password"]);
          
            
            $rows = $db->query("SELECT username FROM users WHERE username = ".$username_q);
            
            if($rows){
                
                $row_num = 0;
               
                //echo $username;
                
                foreach($rows as $row){
                    
                   
                    if( $row["username"] == $username) {
                       
                        $row_num = 1;
                        echo "1";                  
                    }                              
                }
                
                // this user doesnt not exist
                if($row_num == 0) {
                    
                    $db->exec("INSERT INTO users (username,password) VALUES (".$username_q.",".$password_q.")");
                    
                                        
                    echo "0";
                }
            }
            else{
                echo "failed to extract message...";
            }

?>

