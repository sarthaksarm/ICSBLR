<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $Title = $_POST['title'];
 $Type = $_POST['type'];
 $Target = $_POST['target'];
 $Text = $_POST['textt'];
 $Url = $_POST['url'];
 $Date = $_POST['date'];


$Sql_Query = "INSERT INTO inbox_admin (title,type,target,textt,state,req_state,url,date) values ('$Title','$Type','$Target','$Text','0','0','$Url','$Date')";

         if(mysqli_query($con,$Sql_Query))
         {
               $Sql_Update = "UPDATE student_infos SET req_state = '0' WHERE id=$Title"; // put tage for request msg
               if(mysqli_query($con,$Sql_Update))
               {
                    echo 'Sent Successfully';

               }
               else
               {
                    echo 'error while tagging';
               }
               
         }
         else
         {
              echo 'Something went wrong';
         }
 
}
 mysqli_close($con);
?>