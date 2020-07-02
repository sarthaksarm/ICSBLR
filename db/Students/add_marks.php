<?php
require "init.php";

$stud_id=$_POST["stud_id"];
$sub1=$_POST["sub1"];
$sub2=$_POST["sub2"];
$sub3=$_POST["sub3"];
$sub4=$_POST["sub4"];
$sub5=$_POST["sub5"];

$sub1tot=$_POST["sub1tot"];
$sub2tot=$_POST["sub2tot"];
$sub3tot=$_POST["sub3tot"];
$sub4tot=$_POST["sub4tot"];
$sub5tot=$_POST["sub5tot"];

$sql_query1="
update student_infos set subj1='$sub1' where id='$stud_id';
";
$sql_query2="
update student_infos set subj1tot='$sub1tot' where id='$stud_id';
";
$sql_query3="
update student_infos set subj2='$sub2' where id='$stud_id';
";
$sql_query4="
update student_infos set subj2tot='$sub2tot' where id='$stud_id';
";
$sql_query5="
update student_infos set subj3='$sub3' where id='$stud_id';
";
$sql_query6="
update student_infos set subj3tot='$sub3tot' where id='$stud_id';
";
$sql_query7="
update student_infos set subj4='$sub4' where id='$stud_id';
";
$sql_query8="
update student_infos set subj4tot='$sub4tot' where id='$stud_id';
";
$sql_query9="
update student_infos set subj5='$sub5' where id='$stud_id';
";
$sql_query10="
update student_infos set subj5tot='$sub5tot' where id='$stud_id';
";


if(mysqli_query($con,$sql_query1) and (mysqli_query($con,$sql_query2)) and (mysqli_query($con,$sql_query3)) and(mysqli_query($con,$sql_query4)) and (mysqli_query($con,$sql_query5)) and (mysqli_query($con,$sql_query6)) and (mysqli_query($con,$sql_query7)) and (mysqli_query($con,$sql_query8)) and (mysqli_query($con,$sql_query9)) and (mysqli_query($con,$sql_query10)))
{
	echo "<h3> Data insertion success... </h3>";
}
else
{
	echo "Data insertion error..".mysqli_error($con);
}

?>