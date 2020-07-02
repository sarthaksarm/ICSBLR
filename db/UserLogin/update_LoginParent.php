<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $Name = $_POST['name'];
 $Password1 = $_POST['pass1'];
 $Password2 = $_POST['pass2'];


$Sql_Query = "UPDATE  student_infos SET parPass = '$Password2' WHERE parPass = '$Password1' and parent =  '$Name'" ;



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


