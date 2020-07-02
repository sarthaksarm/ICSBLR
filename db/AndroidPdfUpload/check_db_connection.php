<?php
$host="localhost";
$user="id12764400_logindb";
$password="logindb";
$con=mysqli_connect($host,$user,$password);
if($con) {
    echo '<h1>Connected to MySQL</h1>';
} else {
    echo '<h1>MySQL Server is not connected</h1>';
}
?>




