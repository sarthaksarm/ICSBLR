<?php
$host = "localhost";
$user = "id12764400_logindb";
$pass = "logindb";
$dbname = "id12764400_logindb";

// Create connection
$conn = mysqli_connect($host, $user, $pass, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT date, std_2 FROM attendance";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $array = array();
    $val =0;
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $array[$val] = $row["date"];
        //echo $row["date"];//." --- ".$row["std_2"]. " <br>";
        $val++;
    }
} else {
    echo "0 results";
}
echo json_encode($array);
?>