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

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../favicon.ico">

    <title>FoodBuzz: Create Account</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="foodbuzz.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="index.php" class="navbar-brand" href="#">FoodBuzz</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          
          <ul class="nav navbar-nav navbar-right">
            <li><a href="signin.php">Sign In</a></li>
            <li class="active"><a href="signup.php">Create Account</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <center>
    <div class="jumbotron">
      <h3>Create Account</h3>
    </div>
    
<!--
    <form name="reg" action="signupfunctions.php" onsubmit="return validateForm()" method="post">
    <div class="container">
      <div class="col-md-2"></div>

      <div class="col-md-4">
        <label>Username</label>
        <div class="input-group">
    		  <input name = "username" type="text" class="form-control" placeholder="Username" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $username;?>">
        </div>

    	  <br><label>Password</label>
        <div class="input-group">
      		<input name = "password" type="password" class="form-control" placeholder="Password" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $password;?>">
        </div>

        <br><label>Email</label>
        <div class="input-group">
          <input name ="email" type="text" class="form-control" placeholder="Email" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $email;?>">
        </div>

        <br><label>Your Name</label>
        <div class="input-group">
          <input name = "yourname" type="text" class="form-control" placeholder="Name" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $yourname;?>">
        </div>

        <br><label>Card No.</label>
        <div class="input-group">
          <input name = "cardno" type="text" class="form-control" placeholder="Number" maxlength="16" aria-describedby="basic-addon1" value="<?php echo $cardno;?>">
        </div>
      </div>

      <div class="col-md-4">
        <label>Address Info</label>
     
        <br><div class="input-group">
          <input name = "street" type="text" class="form-control" placeholder="Street" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $street;?>">
        </div>
        
        <br><div class="input-group">
          <input name = "city" type="text" class="form-control" placeholder="City" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $city;?>">
        </div>
        
        <br><div class="input-group">
          <input name = "state" type="text" class="form-control" placeholder="State" maxlength="2" aria-describedby="basic-addon1" value="<?php echo $state;?>">
        </div>
        
        <br><div class="input-group">
          <input name = "zip" type="text" maxLength="5" class="form-control" placeholder="Zip" maxlength="5" aria-describedby="basic-addon1" value="<?php echo $zip;?>">
        </div>
       
        <br><div class="input-group">
          <input name = "phone" type="text" maxLength="10" class="form-control" placeholder="Phone" maxlength="10" aria-describedby="basic-addon1" value="<?php echo $phone;?>">
        </div>
      </div>
      <div class="col-md-2"></div>
    </div>

    <br>
	  <button name = "submit" type="submit" onClick="self.location='signupfunctions.php?name=signupUser'"  class="btn btn-success">Sign Up</button>

  </form>
    -->
    <div class="container">

      <form class="form-signin" action="signupfunctions.php" onsubmit="return validateForm()" method="post">
      <label>Account Information</label>

        <label for="inputUser" class="sr-only">Email address</label>
        <input name = "username" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $username;?>" type="cont" id="inputUser" class="form-control" placeholder="Username" required autofocus>

        <label for="inputPassword" class="sr-only">Password</label>
        <input name = "password" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $password;?>" type="cont" id="inputPassword" class="form-control" placeholder="Password" required>
       
        <label for="inputEmail" class="sr-only">Email</label>
        <input name = "email" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $email;?>" type="cont" id="inputEmail" class="form-control" placeholder="Email" required>

        <label for="inputName" class="sr-only">Name</label>
        <input name = "name" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $yourname;?>" type="cont" id="inputName" class="form-control" placeholder="Name" required>
        
        <label for="inputCardNo" class="sr-only">Card No.</label>
        <input name = "cardno" maxlength="16" aria-describedby="basic-addon1" value="<?php echo $cardno;?>" type="last" id="inputCardNo" class="form-control" placeholder="Credit Card No." required>
        

      <br><label>Address Information</label>

        <label for="inputStreet" class="sr-only">Street Address</label>
        <input name = "street" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $street;?>" type="cont" id="inputStreet" class="form-control" placeholder="Street Address" required>

        <label for="inputCity" class="sr-only">City</label>
        <input name = "city" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $city;?>" type="cont" id="inputCity" class="form-control" placeholder="City" required>

        <label for="inputState" class="sr-only">State</label>
        <input name = "state" maxlength="2" aria-describedby="basic-addon1" value="<?php echo $state;?>" type="cont" id="inputState" class="form-control" placeholder="State" required>

        <label for="inputZip" class="sr-only">Zip Code</label>
        <input name = "zip" maxlength="5" aria-describedby="basic-addon1" value="<?php echo $zip;?>" type="cont" id="inputStreet" class="form-control" placeholder="Zip Code" required>

        <label for="inputPhone" class="sr-only">Phone No.</label>
        <input name = "phone" maxlength="10" aria-describedby="basic-addon1" value="<?php echo $phone;?>" type="last" id="inputPhone" class="form-control" placeholder="Phone No." required>


        <button class="btn btn-lg btn-primary btn-block" name = "submit" type="submit" onClick="self.location='signupfunctions.php?name=signupUser'" class="btn btn-success">Create Account</button>
      </form>


    </center>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

<?php
//Step5
 mysql_close($db);
?>
