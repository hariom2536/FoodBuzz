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

$=$_POST['cardno'];
$=$_POST['exp_date'];
$=$_POST['name'];
$=$_POST['street'];
$=$_POST['city'];
$=$_POST['zip'];
$=$_POST['phone'];
$ = GUID();
