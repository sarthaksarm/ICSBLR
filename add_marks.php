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



$sql_query="insert into student_infos(subj1,subj1tot,subj2,subj2tot,subj3,subj3tot,subj4,subj4tot,subj5,subj5tot) 
					values('$sub1', '$sub1tot','$sub2','$sub2tot','$sub3','$sub3tot','$sub4','$sub4tot','$sub5','$sub5tot')
			where id='$stud_id'";


if(mysqli_query($con,$sql_query))
{
	echo "<h3> Data insertion succes.. </h3>";
}
else
{
	echo "Data insertion error..".mysqli_error($con);
}

?>