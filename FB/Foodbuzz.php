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
?>

<html>
 <head>
 <title>Step 1</title>
 </head>
 <body>
 <?php
//Step3
$result = mysql_query("SELECT * FROM Person_Contact", $db);
 if (!$result) {
 die("Database query failed: " . mysql_error());
 }
 //Step4
 while ($row = mysql_fetch_array($result)) {
 echo $row[1]." ".$row[2]."<br />";
 }
?>
</body>
</html>

<?php
//Step5
 mysql_close($db);
?>