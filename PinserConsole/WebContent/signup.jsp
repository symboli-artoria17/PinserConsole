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

    
<title>Sign Up</title>

    
<!-- Bootstrap core CSS -->
    
<link href="dist/css/bootstrap.min.css" rel="stylesheet">

   
<link href="login.css" rel="stylesheet">
	   
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

  <body style="padding:0px;">

		
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
      <div class="form-signup">
      <div>
				<h1 class="form-signup-heading">Sign Up</h1>
			  </br>
			  
				<form action="LoginController?action=signUp" method="post">
					<input type="hidden" id="loggedinId" name="loggedinId" value="${loggedinId}">
					<label for="UserName" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">User Name</label> &nbsp; <span id="err"> </span>
					<input type="text" class="form-control" id="userName" name="userName" onkeyup="checkUserName();"  placeholder="Enter min 5 characters" required></br>
				  	 
					<label for="fullName" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">Full Name</label>
					<input type="text" class="form-control" id="fullName" name="fullName" required></br>
				
				 
					<label for="school" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">School</label>
					<input type="text" class="form-control" name="schoolName" id="school"></br>
			
					<label for="email" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">Email</label>
					<input type="email" class="form-control" name="email" id="email"></br>
				  
					<label for="phone" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">Phone</label>
					<input type="text" class="form-control" id="phone" name="phone"></br>
				  
					<label for="password" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;">Password</label>
					<input type="password" class="form-control" id="password" name ="password" required></br>
	
					<p align="center">
					<a href="login.jsp">			
					<button class="btn btn-default" type="button" style="color:white;width:150px;height:40px;background-color:#16B7A1;">
					<font face="Eras ITC", "Eras Light ITC",  sans-serif>Cancel</font>
					</button>
					</a>			  
					<button class="btn btn-primary" type="submit" id="submit" style="width:150px;height:40px;background-color:#16B7A1;">
					<font face="Eras ITC", "Eras Light ITC",  sans-serif>Sign up</font>
					</button>
					</p>
				</form>
		</div>	</div>
		
<script  type="text/javascript">
function checkUserName()
{
var xmlhttp;
var k=document.getElementById("userName").value;
var urls="LoginController?action=checkForExistingUserName&&userName="+k;
if(k.length > 3){
if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4)
    {
        document.getElementById("err").innerHTML = xmlhttp.responseText;
        console.log(xmlhttp.responseText)
        var data = xmlhttp.responseText;
        data = data.trim();
        if( data.indexOf("Name") != -1){
          	  document.getElementById("submit").disabled = true;
          	  test = false;
        }else{
        	 document.getElementById("submit").disabled = false;
        	 test = true;
        }
    	 
  }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
}

</script>
</body>
<footer style="background-color: #F6F6F6">
 <%@ include file="footer.jsp" %> 
</footer>
</html>
