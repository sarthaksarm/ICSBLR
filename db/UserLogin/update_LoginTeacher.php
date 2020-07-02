<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $id = $_POST['id'];
 $name = $_POST['name'];
 $password = $_POST['password'];


$Sql_Query = "UPDATE  TeacherLogin SET password = '$password' WHERE id=$id" ;

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


