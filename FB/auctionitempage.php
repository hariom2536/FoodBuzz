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

    <title>FoodBuzz: Auction Items</title>

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
            <li class="active"><a href="auctionitempage.php">Auction Items</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="sellitem.php">Sell an item</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="auctionitem.php">Auction an item</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="settingspage.php">Settings</a></li>

              </ul>
            <li><a href="index.php">Sign Out</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
     <form name="reg" action="auctionsearchfunction.php" onsubmit="return validateForm()" method="post">
    <center>
    <div class="jumbotron">
      <h2>Auction Items</h2>
      <div class="container">
        <div class="row">
          <div class="search">
            <div class='col-md-3'></div>
            <div class='col-md-5'>
            <input name = "search" type="text" class="form-control input-sm" maxlength="64" placeholder="Search..." />
            </div>
            <div class='col-md-1'>
            <button type="submit" href="auctionitempage.php" class="btn btn-primary btn-sm">Search</button>
            </div>
            <div class='col-md-3'></div>
          </div>
        </div>
      </div>
    </div>
  </form>
    
    <div class="container">
      <?php
      $result = mysql_query("SELECT * FROM Auction_Item", $db);
      if (!$result) {
        die("Database query failed: " . mysql_error());
      }

      $count = 0;
      while ($row = mysql_fetch_array($result)) {
        if($count%3 == 2) {
          echo "<div class='row'>";
        }
          echo "<div class='col-md-4'>
                  <div class='thumbnail'>
                    <div class='caption'>
                      <h2>$row[1] <br /> </h2>
                      <body>$row[2]<br /></body>
                      <br>
                      <p><a href='bid.php?id=$row[0]' class='btn btn-primary' role='button'>Bid $$row[4] + $1</a> 
                      <a href='productauctionpage.php?id=$row[0]' class='btn btn-default' role='button'>Info</a></p>
                    </div>
                  </div>
                </div>";

        if($count%3 == 2) {
          echo "</div>";
        }
        

        $count = $count+1;

     }
    ?>
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
//Step5
 mysql_close($db);
?>