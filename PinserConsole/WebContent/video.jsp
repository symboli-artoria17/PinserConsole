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

    
<title>Video</title>

    
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
<div class="container">
	<table width="100%">
      <tr>
        <td width="34%">
        <div class="row" style="background-color:#F9F9F9; padding-top: 5px; padding-bottom: 5px; border-bottom-width: 20px; border-bottom-color:black;">
	
        <iframe width="360" height="250" src="http://www.youtube.com/embed/4kHYOLwSs7w"></iframe></div>
        </td>
        <td width="33%">
        <div class="row" style="background-color:#F9F9F9; padding-top: 40px; padding-bottom: 50px; border-bottom-width: 20px; border-bottom-color:black;">
		
		<div class="col-md-12 col-lg-5">
		<br>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;"><strong> Video Caption: </strong></label>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493; font-size:16px;"> ${VI.caption} </label>
              <br>
               <br>
                <br>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;vertical-align: top;height:20px;font-size:16px;"><strong>Date & Time: </strong></label>
			  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif;; color:#889493;  font-size:16px;"> ${VI.dateCreated} </label>
		   <br>
           <br>
           <br>
           <br>
          </div></div>
          </td>
          <td width="33%">
          <div class="row" style="background-color:#F9F9F9; padding-top: 45px; padding-bottom: 55px; border-bottom-width: 20px; border-bottom-color:black;">
		
		  <div class="col-md-12 col-lg-5 col-lg-offset-1">
		  <br>
		    <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong> Total Vote:  </strong></label>
		    <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;"> ${VI.totalCount} </label>
              <br>
              <br>
              
            <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong>Total View:   </strong></label>
               <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;">${VI.totalView}</label>
               <br>
              <br>
              
          	  <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;  font-size:16px;"><strong> Total Comments: </strong></label>
              <label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#889493;  font-size:16px;">${VI.totalComment}</label>
              <br>
              <br>
              
		  </div>
		</div>
		</td>
        <!-- <div class="table-responsive">
             <table id="studentTable" class="table table-striped">
              <thead style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <tr>
                  <th>Video Caption</th>
                  <th>Video Count</th>		
				  <th>View Count</th>
				  <th>Comment Count</th>
                  <th>Date & Time</th>
                </tr>
              </thead>
              <tbody style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <tr>
                  <td>dummy_1</td>
                  <td>dummy_1</td>		 
				  <td>dummy_1</td>
				  <td>dummy_1</td>
                  <td>dummy_1</td>		 
				</tr>
             </tbody>
            </table> 
         </div> !-->
        </br>  <!--search/item function !-->
        </br>
        </td>
       </tr>
     </table>
     </br>
     <p class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; background-color:white;
           font-size:20px; padding-top: 40px; padding-bottom: 20px;"><strong>Comments</strong></p>
     <div class="table-responsive">
          	 <table id="studentTable" class="table table-striped dataTable homeTable">
              <thead style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
              	<tr>
                	<th>User ID</th>
                    <th>Comments</th>
                    <th>Date & Time</th>
                </tr>
                <tbody style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <c:forEach var="VC" items = "${VC}">
                <tr>
                <td><a href="userActivityController?action=user&&userid=${VC.userid}">${VC.userid}</td>
            	<td>${VC.comment}</td>
                <td>${VC.when}</td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
          </div>	
</div>
 </br>
 </br>
	 

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
<footer style="background-color: #F6F6F6;">
 <%@ include file="footer.jsp" %> 
</footer>
</html>
