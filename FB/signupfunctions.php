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

#session_start();

$uname=$_POST['username'];
$password=$_POST['password'];
$email=$_POST['email'];
$yourname=$_POST['name'];
$cardno=$_POST['cardno'];
$contact_id = GUID();
$street=$_POST['street'];
$city=$_POST['city'];
$state=$_POST['state'];
$zip=$_POST['zip'];
$phone=$POST['phone'];
$fail=0;

$result1 = mysql_query("INSERT INTO Contact_Info (contact_id,street,city,state,zip,phone)
                        VALUES ('$contact_id','$street','$city','$state','$zip','$phone');", $db);
if (!$result1 ) {
  $fail = 1;
  die("Database query failed1: " . mysql_error());
}

$result2 = mysql_query("INSERT INTO Payment_Info (card_no,type)
                        VALUES ('$cardno','VISA');", $db);
if (!$result2 ) {
  $fail = 1;
  die("Database query failed2: " . mysql_error());
}

$result3 = mysql_query("INSERT INTO Registered_User (username,password,email,name,contact_id,card_no)
                        VALUES ('$uname','$password','$email','$yourname','$contact_id','$cardno');", $db);
if (!$result3 ) {
  $fail = 1;
  die("Database query failed3: " . mysql_error());
}

mysql_close($db);

if(!$fail) {
  header('Location: mainpage.php');
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