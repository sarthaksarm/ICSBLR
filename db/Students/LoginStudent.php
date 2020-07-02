<?php

 if($_SERVER['REQUEST_METHOD']=='POST'){

     include 'DatabaseConfig.php';
     
     $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
     
     $name = $_POST['name'];
     
     $password = $_POST['password'];
     
     //$data = "select * from student_infos where name = '$name' and password = '$password' ";

    //if(mysqli_num_rows($data) >0) {   
    //  echo "Data Matched";
    //}
     
     $Sql_Query = "select * from student_infos where BINARY name = '$name' and password = '$password' ";
     
     $check = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
     
     if(isset($check)){
        echo "Data Matched";
     }
     else{
        echo "Please Try Again";
     }
 
 }
 else{
    echo "Check Again";
 }
mysqli_close($con);

?>