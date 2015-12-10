<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "FoodBuzz";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

//------------------------------------------

$uname=$_POST['username'];
$password=$_POST['password'];

$sql = "SELECT * FROM Registered_User WHERE username = '$uname';";
$result = $conn->query($sql);

if($result->num_rows != 1) {
  echo "Error: Username not found in database";
} else {
  $row = $result->fetch_assoc();
  if($row["password"] != $password) {
    echo "Error: Incorrect password";
  } else {
    header('Location: mainpage.php');
    
	session_start(); #start session
	$_SESSION['user'] = $row;

  }
}

$conn->close();
?>