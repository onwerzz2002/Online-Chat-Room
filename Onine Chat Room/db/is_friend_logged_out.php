<?php
  include("database.php");
            
            // to give the paramaters a quote, maing it easier to query in the sql statement                   
            
            $friend = $db->quote($_POST["friend"]);
              
          
            //this following is for checking if your friend has logged out.
            $rows =$db->query("SELECT online FROM users WHERE username =".$friend);
            if($rows){
                
                foreach($rows as $row){
                    if( $row["online"] == 1) {
                        
                        //return 0 for offline
                        echo "online";
                    
                    }
                    else{
                        echo "offline";
                    }
                    
                }
            }
           
?>