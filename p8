<?php 
date_default_timezone_set("Asia/Kolkata");
$current_time = time(); 


if (isset($_COOKIE["last_visited"])) { 
    
    $last_visited_display = date("Y-m-d H:i:s", $_COOKIE["last_visited"]); 
} else { 
    
    $last_visited_display = "First Time / Unknown"; 
} 


setcookie("last_visited", $current_time, time() + 3600); 
?> 
<!DOCTYPE html> 
<html> 
<head> 
<title>COLLEGE HOMEPAGE</title> 
<style> 
.header {display: flex;} 
ul {display: flex; } 
li { list-style: none; padding: 0 15px; } 
.mainclass { 
    background-image: url("https://shiksha.com 45482557phpNndjMG.jpeg"); 
    background-size: cover; 
    height: 350px; 
    text-align: center; 
} 
.lastvisit {color: red;} 
</style> 
</head> 
<body> 
<header class="header"> 
<h3>PSG COLLEGE OF ARTS & SCIENCE</h3> 
<nav><ul> 
<a  href="https://www.psgcas.ac.in/">Admission</a>
<li><a class="headlist" href="#">Home</a> </li></ul></nav> 
</header> 
<main class="mainclass"> 
<br><br> 
<h2>WELCOME TO PSG COLLEGE OF ARTS & SCIENCE</h2> 
<p class="lastvisit"><b><em> Your last visited on this page on <?php echo $last_visited_display; ?> </em></b></p> 
</main> 
</body> 
</html>
