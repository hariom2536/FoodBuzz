<?php
session_start();

 $db = mysql_connect("localhost","root",""); 
 if (!$db) {
 die("Database connection failed miserably: " . mysql_error());
 }
 //Step2
 $db_select = mysql_select_db("FoodBuzz",$db);
 if (!$db_select) {
 die("Database selection also failed miserably: " . mysql_error());
 }



$username = $_SESSION['user']['username'];


$itemname=$_POST['itemname'];
$description=$_POST['description'];
$price=$_POST['price'];
$itemid = GUID();


$result3 = mysql_query("SELECT * FROM Seller WHERE username = '$username';", $db);
if (!$result3 ) {
  $fail = 1;
  die("Database query failed3: " . mysql_error());
}



#echo 'here';
#echo mysql_num_rows($result3);
#echo $username;


if ( mysql_num_rows($result3) == 0)
{
	
	echo $username;

	$result2 = mysql_query("INSERT INTO Seller (username)
	                        VALUES ('$username');", $db);
	if (!$result2 ) {
	  $fail = 1;
	  die("Database query failed seller: " . mysql_error());
	}
}

$result1 = mysql_query("INSERT INTO Sale_Item (item_id,item_name,description,price,user_seller)
                        VALUES ('$itemid','$itemname','$description',$price,'$username');", $db);
if (!$result1 ) {
  $fail = 1;
  die("Database query failed1: " . mysql_error());
} else {
	header('Location: saleitempage.php');
}

?>



<?php
  function GUID()
{
    if (function_exists('com_create_guid') === true)
    {
        return trim(com_create_guid(), '{}');
    }

    return sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
}

?>