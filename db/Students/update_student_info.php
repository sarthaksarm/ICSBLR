<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $id = $_POST['id'];
 $name = $_POST['name'];
 $password = $_POST['password'];
 $count_on = $_POST['count_on'];
 $count_off = $_POST['count_off'];



$Sql_Query = "UPDATE student_infos SET password ='$password', count_on = '$count_on', count_off = '$count_off' WHERE id=$id";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'uploaded successfully';
}
else {
     echo 'somthing went wrong';

}
 
}
mysqli_close($con);
?>