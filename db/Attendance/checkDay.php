<?php

 if($_SERVER['REQUEST_METHOD']=='POST'){

     include 'DatabaseConfig.php';
     
     $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
     
     $Date = $_POST['date'];

     
     //$Sql_Query = "select * from attendance where date ='$Date'";
     $Sql_Query = "select * from attendance where date ='1'";

     
     $check = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
     
     if(isset($check)){
        echo "once per day !!";
     }
     else{
        echo "Valid";
     }
 
 }
 else{
    echo "Check Again";
 }
mysqli_close($con);

?>