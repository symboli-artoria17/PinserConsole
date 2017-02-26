<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  
<head>
    
<meta charset="utf-8">
    
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
<meta name="description" content="">
    
<meta name="author" content="">
    
<link rel="icon" href="../../favicon.ico">

    
<title>About Us</title>

    
<!-- Bootstrap core CSS -->
    
<link href="dist/css/bootstrap.min.css" rel="stylesheet">


    
<!-- Custom styles for login template -->
    
<link href="login.css" rel="stylesheet">
	
	
<!-- Custom styles for navbar template -->
    
<!-- <link href="navbar-fixed-top.css" rel="stylesheet"> -->

   
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
   
 <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	
<!-- <script src="modal.js"></script>
	<script src="signup.js"></script> -->
   
 <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    
<!--[if lt IE 9]>
     
 <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
     
 <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
 <![endif]-->
  </head>
<body>
		
<nav class="navbar navbar-default navbar-fixed-top header">
			
<div class="container-fluid">
				
<div class="navbar-header">
				 
 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					
<span class="sr-only">Toggle navigation</span>
					
<span class="icon-bar"></span>
					
<span class="icon-bar"></span>
					
<span class="icon-bar"></span>
				  
</button>
				  
<!--a class="navbar-brand" href="#"/a-->
				
<a href="login.jsp"><img src="30405_pinserf.jpg" height="50" width="120"></a>				
</div>
			
</div>
		
</nav>
<div class="container" style="padding-top: 80px; padding-bottom: 100px;">
<div class="row">

<div class="col-md-7">
<div class="leftPanel">
<div class="video">
<iframe width="100%" height="360" src="https://www.youtube.com/embed/4kHYOLwSs7w" frameborder="0" allowfullscreen></iframe>
</div>
</div>
</div>

<div class="col-md-5">
<div class="rightPanel">
<h1 style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:22px;">About Us</h1>
		<div class="form-group">
		<p style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:20px;">
			Pinser enables you to discover what is currently happening in your city or on your campus. 
			Local users post short videos that only last on the Pinser network for one week. 
		</p>
		</div>
		
</div>
</div>
</div>
</div>
</body>
<footer style="background-color: #F6F6F6;">
 <%@ include file="footer.jsp" %> 
</footer>
</html>