<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);


 $name = $_POST['name'];
 $password = $_POST['password'];
 $day_month = $_POST['day_month'];


$Sql_Query = "UPDATE  TeacherLogin SET day_month = '$day_month' WHERE password=$password" ;

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


