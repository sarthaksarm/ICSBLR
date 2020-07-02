<?php

$host="localhost";
$user="id12764400_logindb";
$password="logindb";
$db = "id12764400_logindb";
 
$con = mysqli_connect($host,$user,$password,$db);
 
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }else{  //echo "Connect"; 
  
     echo "connection to pdf_db success... ";

   }
 
?>