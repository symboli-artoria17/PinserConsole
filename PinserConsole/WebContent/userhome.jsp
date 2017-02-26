<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<link rel="stylesheet" type="text/css" href="dist/datatables/css/dataTables.bootstrap.css" />
<link rel="stylesheet" href="//cdn.datatables.net/plug-ins/1.10.10/integration/font-awesome/dataTables.fontAwesome.css" type="text/css"/>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 <link href="login.css" rel="stylesheet">
  
<head>
    
<meta charset="utf-8">
    
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
<meta name="description" content="">
    
<meta name="author" content="">
    
<link rel="icon" href="../../favicon.ico">

    
<title>User HomePage</title>

    
<!-- Bootstrap core CSS -->
    
<link href="dist/css/bootstrap.min.css" rel="stylesheet">


    
<!-- Custom styles for login template -->
    
<link href="login.css" rel="stylesheet">


<!-- Custom Style for date picking -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS and bootstrap datepicker CSS used for styling the demo pages-->
        <link rel="stylesheet" href="dist/css/datepicker.css">
	
	

<!-- Custom styles for navbar template -->
    
<link href="navbar-fixed-top.css" rel="stylesheet">

   
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
   
 <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
<script src="modal.js"></script>
	<script src="signup.js"></script>
   
 <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    
<!--[if lt IE 9]>
     
 <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
     
 <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
 <![endif]-->
  
</head>
  
<body>

<nav class="navbar navbar-default navbar-fixed-top header">
<%@ include file="header.jsp" %>
</nav>
</br>
</br>

    <div class="container" style="padding-bottom: 100px;">
		<div class="row" style="background-color:#F9F9F9; padding-top: 20px; padding-bottom: 20px; border-bottom-width: 20px; border-bottom-color:black;">
		<div class="col-md-12 col-lg-5">
		
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;"><strong>My ID: </strong></label>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493; font-size:16px;"> ${UP.uid} </label>
              <br>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;vertical-align: top;height:20px;font-size:16px;"><strong>My Description:</strong></label>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif;; color:#889493;  font-size:16px;"> N/A </label>
		  </div>
		  <div class="col-md-12 col-lg-5 col-lg-offset-1">
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong> My Score: </strong></label>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;"> N/A </label>
              <br>
            <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong> Total Video: </strong></label>
               <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;">${UP.totalVideoPosted}</label>
               <br>
          	  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong> Total Comments: </strong></label>
              <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;">${UP.totalComments}</label>
		  </div>
		</div>
	  <p class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; background-color:white;
           font-size:22px; padding-top: 40px; padding-bottom: 20px;"><strong>My Stats</strong></p>
	<div class="table-responsive">
            <table id="dataTable" class="table table-striped dataTable homeTable">
              <thead style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                
                <tr>
                 <th>Video Caption</th>
				  <th>Vote Count</th>
				  <th>View Count</th>
				  <th>Comment Count</th>
				  <th>Date & Time</th>
                </tr>
              </thead>
              <tbody style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <c:forEach var="uservideo" items="${uservideo}">
                <tr>
                  <td>${uservideo.caption}</td>
				  <td>${uservideo.voteCount}</td>
				  <td>${uservideo.viewCount}</td>
				  <td>${uservideo.commentCount}</td>
				  <td>${uservideo.createdTime}</td>
                </tr>
                </c:forEach>
            
              </tbody>
            </table>
          </div>
          <p class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; background-color:white;
           font-size:22px; padding-top: 50px; padding-bottom: 20px;"><strong>My Comments</strong></p>
          <div class="table-responsive">
            <table id="studentTable" class="table table-striped dataTable homeTable">
              <thead style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                
                <tr> 
				  <th>Video Caption</th>
				  <th>Comment</th>
                  <th>Date & Time of Comment</th>
            
                </tr>
                
              </thead>
              <tbody style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <c:forEach var="uservideocomment" items="${uservideocomment}">
                <tr>
                  <td>${uservideocomment.video_Caption}</td>
				  <td>${uservideocomment.video_Comment}</td>
				  <td>${uservideocomment.comment_Created_At}</td>
                </tr>
                </c:forEach>
               
              </tbody>
            </table>
          </div>
    </div>
	
	 

<!-- Load jQuery and bootstrap datepicker scripts -->
        
<script src="dist/js/jquery-1.11.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        
<script src="dist/datatables/js/jquery.dataTables.js"></script>
<script src="dist/js/dataTables.bootstrap.js"></script>
<script src="dist/js/jquery.validate.js"></script>
<script src="dist/js/jquery.form.js"></script>

<script type="text/javascript" src="dist/js/jquery.flexisel.js"></script>
<script type="text/javascript" src="dist/js/jquery.easy-autocomplete.min.js" ></script>
     
<script src="dist/js/bootstrap-datepicker.js"></script>
        
<script type="text/javascript">
            // When the document is ready
            
	$(document).ready(function () {

		$('.input-daterange').datepicker({todayBtn: "linked"});
		    $('.dataTable').DataTable();
		    $('.datetime').datetimepicker();
            });
	
</script>
</body>
</body>
<footer style="background-color: #F6F6F6;">
 <%@ include file="footer.jsp" %> 
</footer>
</html>
