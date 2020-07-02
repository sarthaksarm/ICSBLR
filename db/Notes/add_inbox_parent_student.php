<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 $Id    = $_POST['id'];
 $Title = $_POST['title'];
 $Type = $_POST['type'];
 $Target = $_POST['target'];
 $Text = $_POST['textt'];
 $Url = $_POST['url'];
$Date = $_POST['date'];

$Sql_Query = "INSERT INTO inbox_parent_student (title,type,target,textt,url,date) values ('$Title','$Type','$Target','$Text','$Url','$Date')";

 if(mysqli_query($con,$Sql_Query))
 {
          $Sql_Update = "UPDATE inbox_admin SET state = '1' WHERE id=$Id" ;
          if(mysqli_query($con,$Sql_Update))
          {
             echo 'Approved Successfully';
          }
          else
          {
             echo 'error while updating state';
          }
 
 }
 else
 {
        echo 'Something went wrong';
 }
     
}
 mysqli_close($con);
?>