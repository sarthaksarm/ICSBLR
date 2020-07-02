<?php

$host = "localhost";
$user = "id12764400_logindb";
$pass = "logindb";
$dbname = "id12764400_logindb";

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
	die("Connection failed: ". $conn->connect_error);
}
 
$sql = "select * from inbox_parent_student";
$result = $conn->query($sql);
$array = array();
while($raw=$result->fetch_assoc()){
	array_push($array, $raw);
}

echo json_encode($array);

?>
