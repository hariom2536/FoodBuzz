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

session_start();

//------------------------------------------

$id=$_GET['id'];

$sql = "SELECT * FROM Sale_Item WHERE item_id = '$id'";
$result = $conn->query($sql);

if($result->num_rows != 1) {
  echo "Error: Product not found";
} else {
  $row = $result->fetch_assoc();
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

    <title>FoodBuzz: Buy Now</title>

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
          <a href="mainpage.php" class="navbar-brand" href="#">FoodBuzz</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="mainpage.php">Home</a></li>
            <li class="active"><a href="saleitempage.php">Sale Items</a></li>
            <li><a href="auctionitempage.php">Auction Items</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="sellitem.php">Sell an item</a></li>
                <li><a href="auctionitem.php">Auction an item</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="orderhistorysale.php">Order History - Sale</a></li>
                <li><a href="orderhistoryauction.php">Order History - Auction</a></li>
                <li><a href="settingspage.php">Settings</a></li>
              </ul>
            <li><a href="index.php">Sign Out</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <center>
    <div class="jumbotron">
        <h1>Buy Now</h1>
      </div>

      <div class="row marketing">
        <div class="col-lg-2"></div>
        
        <div class="col-lg-4">
          <h1><?php echo $row["item_name"]; ?></h1>

          <br><h4>Description</h4>
          <p><?php echo $row["description"]; ?></p>

          <br><h4>Price</h4>
          <p>$<?php echo $row["price"]; ?></p>

          <br><h4>Seller</h4>
          <p><?php echo $row["user_seller"]; ?></p>
        </div>
        <div class="col-lg-4">
        <form class="form-signin" action="purchasefunctions.php" onsubmit="return validateForm()" method="post">
            <label>Payment Information</label>

            <label for="inputCardNo" class="sr-only">Credit Card No.</label>
            <input name = "cardno" maxlength="16" aria-describedby="basic-addon1" value="<?php echo $cardno;?>" type="cont" id="inputCardNo" class="form-control" placeholder="Credit Card No." required autofocus>

            <label for="inputExpDate" class="sr-only">Exp. Date</label>
            <input name = "expdate" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $expdate;?>" type="date" id="inputExpDate" class="form-control" placeholder="Exp. Date" required>
                
            <div class="form-group">
              <label for="inputType" class="sr-only">Type:</label>
              <select name="type" class="form-control" id="inputType">
                <option value='AMEX'>American Express</option>
                <option value='DISC'>Discover</option>
                <option value='MSTR'>MasterCard</option>
                <option value='VISA'>Visa</option>
              </select>
            </div>

            <label>Delivery Information</label>
            <label for="inputName" class="sr-only">Name</label>
            <input name = "name" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $name;?>" type="cont" id="inputName" class="form-control" placeholder="Name" required>

            <label for="inputStreet" class="sr-only">Street</label>
            <input name = "street" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $street;?>" type="cont" id="inputStreet" class="form-control" placeholder="Street Address" required>

            <label for="inputCity" class="sr-only">City</label>
            <input name = "city" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $city;?>" type="cont" id="inputCity" class="form-control" placeholder="City" required>
            
            <label for="inputState" class="sr-only">State</label>
            <input name = "state" maxlength="2" aria-describedby="basic-addon1" value="<?php echo $state;?>" type="cont" id="inputState" class="form-control" placeholder="State" required>
               
            <label for="inputZip" class="sr-only">Zip Code</label>
            <input name = "zip" maxlength="5" aria-describedby="basic-addon1" value="<?php echo $zip;?>" type="cont" id="inputZip" class="form-control" placeholder="Zip Code" required>

            <label for="inputPhone" class="sr-only">Phone</label>
            <input name = "phone" maxlength="10" aria-describedby="basic-addon1" value="<?php echo $phone;?>" type="last" id="inputPhone" class="form-control" placeholder="Phone No." required>
            
			<label for="inputPassword" class="sr-only">Password</label>
            <input name = "password" maxlength="40" aria-describedby="basic-addon1" value="<?php echo $password;?>" type="password" id="inputPassword" class="form-control" placeholder="Confirm Password" required>    
            <?php
            	$_SESSION['product']=$row;
            	?>
            <button class="btn btn-lg btn-primary btn-block" name = "submit" type="submit" href='purchasefunctions.php' class="btn btn-success">Buy $<?php echo $row["price"]; ?></button>
             </form>
        </div>
        <div class="col-lg-2"></div>
      </div>

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
$conn->close();
?>