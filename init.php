<?php
$db_name="Students";
$sql_user="schoolmanager000";
$sql_pass="key";
$server_name="files.000webhost.com";

$con=mysqli_connect($server_name,$mysql_user,$mysql_pass,$db_name);

if(!%con)
{
	echo "Connection error..".mysqli_connect_error();
}

else
{
	echo "<h3>Database connection success...</h3>";
}





?>