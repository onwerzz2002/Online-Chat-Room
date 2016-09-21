//setInterval(function () {alert("Hello");}, 1000);
var username = $("#username").val();
var friend = $("#friend").val();



// to get the current hour and minute
var dt = new Date();
var time;
if(dt.getHours() > 12) {
    var hour = dt.getHours() - 12;
    time = "(" + hour + ":" + dt.getMinutes() +" PM)";
    }
    
var day = ["Sunday","Monday","Tuesday","Wednesday","Thursdayday","Friday","Saturday"];
var weekday = dt.getDay();
weekday =day[weekday];
 



// to check if there are some new messages coming in or unread message
setInterval(periodically_extract_messages, 500);
function periodically_extract_messages() {
    
    // this line 22 and 34~38 is for automatically scrolling down  
    var oldscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;
    
    
    
    $.post("friend's_message.php",{username: username, friend: friend}, function(data){
            
            if(data !== "") {
                 //$("#chatroom_console").append("<p>" + data +"</p><br/>");
                 $("#chatroom_console").append(weekday+" "+time+" "+friend+":<p class=friend_message>"+ data +"</p><br/>");
            }
            
            var newscrollHeight = $("#chatroom_console").prop("scrollHeight") - 20;
            
                if(newscrollHeight > oldscrollHeight){
                    $("#chatroom_console").animate({ scrollTop: newscrollHeight }, 'normal'); 
                }
            
        });
};






