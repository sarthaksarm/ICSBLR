<?php

 if($_SERVER['REQUEST_METHOD']=='POST'){
  	// echo $_SERVER["DOCUMENT_ROOT"];  // /home1/demonuts/public_html
	//including the database connection file
  	//include_once("volley_config.php");
  	include_once("volley_config.php");

  	//$_FILES['image']['name']   give original name from parameter where 'image' == parametername eg. city.jpg
  	//$_FILES['image']['tmp_name']  temporary system generated name
  
        $originalImgName= $_FILES['filename']['name'];
        $tempName= $_FILES['filename']['tmp_name'];
        $folder="uploads/";
        $url = "https://schoolmanagerapp.000webhostapp.com/AndroidPdfUpload/".$originalImgName; //update path as per your directory structure
       // $url = "https://www.demonuts.com/Demonuts/JsonTest/Tennis/uploadedFiles/".$originalImgName; //update path as per your directory structure 
        
      if(move_uploaded_file($tempName,$folder.$originalImgName)) {
        
                $query = "INSERT INTO pdf_db (name) VALUES ('$tempName')";
                if(mysqli_query($con,$query)){
                
                	 $query= "SELECT * FROM pdf_db WHERE name='$tempName'";
	                 $result= mysqli_query($con, $query);
	                 $emparray = array();
	                     if(mysqli_num_rows($result) > 0){  
	                     while ($row = mysqli_fetch_assoc($result)) {
                                     $emparray[] = $row;
                                   }
                                   echo json_encode(array( "status" => "true","message" => "Successfully file added!" , "data" => $emparray) );
                                   
	                     }else{
	                     		echo json_encode(array( "status" => "false","message" => "1-Failed!") );
	                     }
			   
                }else{
                	echo json_encode(array( "status" => "false","message" => "2-Failed!") );
                }
        	//echo "moved to ".$url;
        }else{
        	echo json_encode(array( "status" => "false","message" => "3-Failed!") );
        }
 }
?>