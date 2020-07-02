<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $Name = $_POST['name'];
 $Text = $_POST['request_txt'];


$Sql_Query = "INSERT INTO leaving_request (name,request_txt) values ('$Name','$Text')";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Sent Successfully';
}
else
{
 echo 'Something went wrong';
 }
 
}
 mysqli_close($con);
?>