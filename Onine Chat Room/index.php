<?php include("uppart.php");

      if(isset($_SESSION["name"])) {?>

      <form id="logout" action="logout.php" method="post">
         <input type="submit" value="Log out">
         <input type="hidden" name="logout" value="true">
      </form>

<?php
      }
      else { ?>
      <div id="loginarea">
            <h2>Please login in first.</h2>
            <form id="login" action="login.php" method="post">
                Username:<input type="text" name="name">
                Password:<input type="password" name="password">
                <input id="login_button" type="submit" value="Log in">
            </form>
      </div>
      
      
      <?php }
      include("downpart.php");
      
      ?>


