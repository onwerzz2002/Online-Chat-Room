<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chat</title>
        <link rel="stylesheet" href="create_account.css" type="text/css">
        <link rel="stylesheet" href="index.css" type="text/css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <body>
       <?php
         if(!isset($_SESSION)) {
             session_start();
         }
         if(isset($_SESSION["message"])) {
         ?>
        <div id="message"><?= $_SESSION["message"]?> </div>
        <?php
         unset($_SESSION["message"]);
         }
        ?>
    </body>
</html>
