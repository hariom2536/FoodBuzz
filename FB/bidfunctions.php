<?php

 $db = mysql_connect("localhost","root",""); 
 if (!$db) {
 die("Database connection failed miserably: " . mysql_error());
 }
 //Step2
 $db_select = mysql_select_db("FoodBuzz",$db);
 if (!$db_select) {
 die("Database selection also failed miserably: " . mysql_error());
 }

session_start();
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

$uname=$_SESSION['user']['username'];
$product=$_SESSION['product'];
$item_id=$product['item_id'];
$price=$product['highest_bid']+2;

$contact_id=GUID();
$fail=0;
date_default_timezone_set('America/New_York');
$date = date('Y-m-d');
$del_id=GUID();

if($password != $_SESSION['user']['password']) {
	echo "Error: Incorrect password";
} else {
	$result1 = mysql_query("INSERT INTO Payment_Info (card_no,type,exp_date)
			VALUES ('$cardno','$type','$expdate');",$db);

	if (!$result1 ) {
  		$fail = 1;
  		die("Database query failed1: Invalid payment info". mysql_error());
	}

	$result2 = mysql_query("INSERT INTO Contact_Info (contact_id,street,city,state,zip,phone)
			VALUES ('$contact_id','$street','$city','$state','$zip','$phone');", $db);

	if (!$result2) {
  		$fail = 1;
  		die("Database query failed2: Invalid contact info". mysql_error());
	}

	$result3 = mysql_query("INSERT INTO Delivery (del_id,payment_receipt,item_receipt)
			VALUES ('$del_id',1,0);", $db);

	if (!$result3) {
  		$fail = 1;
  		die("Database query failed3: Auction-Delivery failed". mysql_error());
	}

	$result4 = mysql_query("INSERT INTO Auction (trans_date,item_id,del_id,user_buyer)
			VALUES ('$date','$item_id','$del_id','$uname');", $db);

	if (!$result4) {
  		$fail = 1;
  		die("Database query failed3: Auction-Transaction failed". mysql_error());
	}

	$result5 = mysql_query("UPDATE Auction_Item
							SET highest_bid=$price, highest_user='$uname'
							WHERE item_id='$item_id';", $db);

	if (!$result5) {
  		$fail = 1;
  		die("Database query failed5: Auction item update failed" . mysql_error());
	}
}

if($failed == 1) {
  echo "Error: Transaction failed";
} else {
  header("Location: auctioncompletepage.php?conf=$del_id");
}

$conn->close();
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