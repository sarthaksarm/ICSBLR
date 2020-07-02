<?php
//if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $Title = $_POST['title'];
 $Type = $_POST['type'];
 $Target = $_POST['target'];
 $Text = $_POST['textt'];


$Sql_Query = "INSERT INTO pdf_db (name,url) values ('$Title','$Type')";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Sent Successfully';
}
else
{
 echo 'Something went wrong';
 }
 
//}
 mysqli_close($con);
?>