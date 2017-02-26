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

    
<title>Login</title>

    
<!-- Bootstrap core CSS -->
    
<link href="dist/css/bootstrap.min.css" rel="stylesheet">


    
<!-- Custom styles for login template -->
    
<link href="login.css" rel="stylesheet">
	
	
<!-- Custom styles for navbar template -->
    
<!-- <link href="navbar-fixed-top.css" rel="stylesheet"> -->

   
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
   
 <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="modal.js"></script>
	<script src="signup.js"></script>
	
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
				
 <a href="aboutUs.jsp"><img src="30405_pinserf.jpg" height="50" width="120"></a>			
</div>
			
</div>
		
</nav>
	  
      
<form class="form-signin" action="LoginController?action=login" method="post">
        
<h2 class="form-signin-heading">Login</h2>

<label style="color: red">${error}</label>

<label class="sr-only">Username</label>
        
<input type="text" name="userId" id="userId" class="form-control" placeholder="Username" style="focus:#16B7A1; box-shadow: 0 0 8px #16B7A1;" required><br>
        
<label for="inputPassword" class="sr-only">Password</label>
        
<input type="password" name="password" id="inputPassword" class="form-control" style=" box-shadow: 0 0 8px #16B7A1;" placeholder="Password" required>
<div id="signUp">
          <a style = "font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:20px;">Volunteer Sign Up</a>
</div><br>
<button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color:#16B7A1"><font face="Eras ITC", "Eras Light ITC",  sans-serif>Sign in</font></button>
</form>

<div id ="signupModal" class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-body">
				<form action="LoginController?action=signUpVolunteer" method="post">
				  <div class="form-group">
					<label for="userid" class="control-label">Enter User id</label>
					<input type="text" class="form-control" id="userId" name="userId" required>
					<!-- <input type="hidden" name="action" value="signUpVolunteer"> -->
				  </div>
				  <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"><font face="Eras ITC", "Eras Light ITC",  sans-serif>Close</font></button>
				<button type="submit" class="btn btn-primary" style="background-color:#16B7A1"><font face="Eras ITC", "Eras Light ITC",  sans-serif>Enter</font></button>
			  </div>
				</form>
			  </div>
			</div>
		  </div>
		</div>
</body>

<footer style="background-color: #F6F6F6">
 <%@ include file="footer.jsp" %> 
</footer>
</html>
