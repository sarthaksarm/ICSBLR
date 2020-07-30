<?php
$db_name="u376419006_ICSBLR";
$sql_user="u376419006_root_db";
$sql_pass="Rootdwai1";
$server_name="127.0.0.1:3306";      

$con=mysqli_connect($server_name,$sql_user,$sql_pass,$db_name);

$sql_query="select VideoURL from adminURL;";

$result = $con->query($sql_query);

$raw=$result->fetch_assoc();

echo $raw["VideoURL"];
    
    
//echo "hi";
//mysql_close($con);
?>