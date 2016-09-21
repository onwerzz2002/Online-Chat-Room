
var username = $("#username").attr("name");
//alert(username);


    $.post("online_offline.php",{username:username},function(){});
    //alert("hello");



    
 
