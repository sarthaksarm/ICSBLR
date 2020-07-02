<?php
require "init.php";


$stud_id=$_POST["stud_id"];

$sql_query="select sub1,sub1tot,sub2,sub2tot,sub3,sub3tot,sub4,sub4tot,sub5,sub5tot from student_infos where id='$stud_id';";

//creating an statment with the query
$stmt = $conn->prepare($sql_query);
 
//executing that statment
$stmt->execute();
 
//binding results for that statment 
$stmt->bind_result($sub1, $sub1tot,$sub2,$sub2tot,$sub3,$sub3tot,$sub4,$sub4tot,$sub5,$sub5tot);

$temp=[

	'sub1'=>$sub1,
	'sub1tot'=>$sub1tot,
	'sub2'=>$sub2,
	'sub2tot'=>$sub2tot,
	'sub3'=>$sub3,
	'sub3tot'=>$sub3tot,
	'sub4'=>$sub4,
	'sub4tot'=>$sub4tot,
	'sub5'=>$sub5,
	'sub5tot'=>$sub5tot
];

echo json_encode($temp);
mysql_close($con);






?>