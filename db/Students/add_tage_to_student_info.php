<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 $Id = $_POST['id'];
 $Title = $_POST['title'];
 $Type = $_POST['type'];
 $Target = $_POST['target'];
 $Text = $_POST['textt'];
 $Url = $_POST['url'];
 $Date = $_POST['date'];



               $Sql_Update = "UPDATE student_infos SET req_state = '1' WHERE id=$Title"; // put tage for request msg
               if(mysqli_query($con,$Sql_Update))
               {
                                   $Sql_Update = "UPDATE inbox_teacher SET req_state = '1' WHERE id=$Id"; // put tage for request msg
                                   if(mysqli_query($con,$Sql_Update))
                                   {
                                        echo 'Approved Successfully';
                                   }
                                   else
                                   {
                                        echo 'error while tagging teacher box';
                                   }
               }
               else
               {
                    echo 'error while tagging student';
               }
 
}
mysqli_close($con);
?>