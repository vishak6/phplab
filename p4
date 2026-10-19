<html>
<body>
<form method = "post">
    Name:<br>
    <input type="text" name="name"><br><br>
    Email:<br>
    <input type="text" name = "email"><br><br>
    Password:<br>
    <input type = "text" name = "password"><br><br>
    <input type = "submit" value = "submit">
</form>
<?php
function test_input($data){
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $name = $email = $password = "";
    $nameErr = $emailErr = $passwordErr = "";

    if(empty($_POST["name"]))
        $nameErr = "Name is required";
    else
        $name = test_input($_POST["name"]);

    if(empty($_POST["email"]))
        $emailErr = "Email is Required";
    else
        $email = test_input($_POST["email"]);

    if(empty($_POST["password"]))
        $passwordErr = "Password is Required";
    else
        $password = test_input($_POST["password"]);

    echo $nameErr."<br>";
    echo $emailErr."<br>";
    echo $passwordErr."<br>";

    if($nameErr == "" && $emailErr == "" && $passwordErr == ""){
        echo "Name: $name<br>";
        echo "Email: $email<br>";
        echo "Password: $password<br>";
    }
}
?>
</body>
</html>
