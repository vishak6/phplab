<?php
date_default_timezone_set("Asia/Kolkata");

if(isset($_COOKIE["last_visited"])){
    $last = $_COOKIE["last_visited"];
    echo"Last visited on:".date("Y-m-d H:i:s",$last);
}
else{
    echo"THis is your first visit";
}
setcookie("last_visited",time(),time()+3600);
?>

<html>
<body>
    <h2> Welcome to the website</h2>
</body>
</html>
