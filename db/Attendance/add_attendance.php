<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 $Teacher = $_POST['teacher'];
 $Date = $_POST['date'];
 $Std_1 = $_POST['std_1'];
 $Std_2 = $_POST['std_2'];
 $Std_3 = $_POST['std_3'];
 $Std_4 = $_POST['std_4'];
 $Std_5 = $_POST['std_5'];
 $Std_6 = $_POST['std_6'];
 $Std_7 = $_POST['std_7'];
 $Std_8 = $_POST['std_8'];


$Sql_Query = "INSERT INTO attendance (teacher,date,std_1,std_2,std_3,std_4,std_5,std_6,std_7,std_8) values ('$Teacher','$Date','$Std_1','$Std_2','$Std_3','$Std_4','$Std_5','$Std_6','$Std_7','$Std_8')";

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