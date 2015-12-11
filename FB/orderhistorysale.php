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

    <title>FoodBuzz: Order History</title>

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
            <li><a href="saleitempage.php">Sale Items</a></li>
            <li><a href="auctionitempage.php">Auction Items</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active" class="dropdown">
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
      <h2>Order History - Auction</h2>
    </div>

    <div class="container">
      <?php
      $username = $_SESSION['user']['username'];
      $result1 = mysql_query("SELECT * FROM Sale WHERE user_buyer='$username'", $db);
      if (!$result1) {
        die("Database query failed: " . mysql_error());
      }

      while ($rowSale = mysql_fetch_array($result1)) {
          $itemid=$rowSale['item_id'];
          $result2 = mysql_query("SELECT * FROM Sale_Item WHERE item_id='$itemid'", $db);
          if (!$result2) {
            die("Database query failed: " . mysql_error());
          }
          $rowItem = mysql_fetch_array($result2);


          echo "<div class='row'> 
                  <div class='col-md-4'>
                    <div class='thumbnail'>
                      <div class='caption'>
                        <body>
                          <p>Date: $rowSale[0]</p>
                          <p>Item ID: $rowSale[1]</p>
                          <p>Confirmation #<br>$rowSale[2]</p>
                        </body>
                        <br>
                      </div>
                    </div>
                  </div>
                  <div class='col-md-8'>
                    <div class='thumbnail'>
                      <div class='caption'>
                        <h2>$rowItem[1]<br /> </h2>
                        <body>
                          <p>$rowItem[2]</p>
                          <p>Sale Price: $$rowItem[3]</p>
                          <p>Sold By: $rowItem[4]</p>
                        </body>
                        <br>
                      </div>
                    </div>
                  </div>
                </div>";
        }
    ?>
  </div>
	</center>

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