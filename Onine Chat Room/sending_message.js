
var username = $("#username").val();
var friend = $("#friend").val();

// to get the current hour and minute

var dt = new Date();
var time;

if(dt.getHours() > 12) {
    var hour = dt.getHours() - 12;
    time = "(" + hour + ":" + dt.getMinutes() +" PM)";
    }
else {
    var hour = dt.getHours();
    time = "(" + hour + ":" + dt.getMinutes() +" PM)";
}

var day = ["Sunday","Monday","Tuesday","Wednesday","Thursdayday","Friday","Saturday"];
var weekday = dt.getDay();
weekday =day[weekday];

    


$("#submit_button").on("click",function(){
    
    //to extract the content of the text in the textarea
    var $message = $('#bb');
    var message = $message.val();
    
    // this line 28 and 39~43 is for automatically scrolling down  
    var oldscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;
    
    
    if($.trim(message) !== "") {
        $.post("sending_message.php",{username: username, friend: friend, message: message}, function(data){
            
            $("#chatroom_console").append(weekday+" "+time+" "+username+":<p class=usernamemessage>"+ data +"</p><br/>");
            
            $('#bb').val('');
            
            var newscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;
            
                if(newscrollHeight > oldscrollHeight){
                    $("#chatroom_console").animate({ scrollTop: newscrollHeight }, 'normal'); 
                }
        });
    }
    
    
    
});

