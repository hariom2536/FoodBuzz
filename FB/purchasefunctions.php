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

$cardno=$_POST['cardno'];
$expdate=$_POST['expdate'];
$type = $_POST['type'];
$name=$_POST['name'];
$street=$_POST['street'];
$city=$_POST['city'];
$state=$_POST['state'];
$zip=$_POST['zip'];
$phone=$_POST['phone'];
$password=$_POST['password'];

echo $_SESSION['user'];

$sql = "SELECT * FROM Registered_User WHERE username = '$uname'";
$result = $conn->query($sql);

if($result->num_rows != 1) {
  echo "Error: Username not found in database";
} else {
  $row = $result->fetch_assoc();
  if($row["password"] != $password) {
    echo "Error: Incorrect password";
  } else {
    header('Location: mainpage.php');
  }
}

$conn->close();
?>
