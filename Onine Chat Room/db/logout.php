
<?php
session_start();
include("database.php");
            
            $username = $_SESSION["name"];
            $username = $db->quote($username);
           
            $rows = $db->query("SELECT online FROM users "
                    . "WHERE username =".$username);
            
            
            foreach($rows as $row){
                    ?>
                     <p><?= $row["online"]?></p>
             
            
                    <?php
                          
                }
             
            
                        // because the user wants to log out, so the online status needs to be set 0
                        $db->exec("UPDATE users SET online = 0 WHERE username =".$username);
             


//to destroy user's session, about to log out
session_destroy();
session_regenerate_id();
session_start();
redirect_helper("index.php","You just logged out.");


?>