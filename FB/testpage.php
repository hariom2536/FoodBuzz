<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-us">
<head>
<title>jCarousel Examples</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="javascripts/lib/jquery.jcarousel.min.js"></script> 
<script type="text/javascript" src="javascripts/FeedCarousel.js"></script> 
<script type="text/javascript" src="javascripts/FeedCarouselFilter.js"></script> 
<script type="text/javascript" src="javascripts/json.js"></script> 
<script type="text/javascript" src="javascripts/app.js"></script> 
<link rel="stylesheet" type="text/css" href="stylesheets/a7agg.css" /> 
<link rel="stylesheet" type="text/css" href="stylesheets/skin.css" /> 
 
</head>
<body>
<div class="panel panel-primary">Test</div>
<div id="feedCarouselContainer">
    <ul id="navFilter">
      <li><a href="#" class="showAllFilter current">Show All</a></li>
      <li><a href="#" class="youtubeFilter">YouTube</a></li>
      <li><a href="#" class="blogsFilter">Blog Posts</a></li>
      <li><a href="#" class="twitterFilter">Twitter</a></li>
      <li><a href="#" class="flickrFilter">Flickr</a></li>
    </ul>
    <ul id="feedCarousel" class="jcarousel-skin-feed">
      <!-- The content will be dynamically loaded in here -->
    </ul>
</div>
</body>
</html>
