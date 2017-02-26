<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="dist/datatables/css/dataTables.bootstrap.css" />
<link rel="stylesheet" href="//cdn.datatables.net/plug-ins/1.10.10/integration/font-awesome/dataTables.fontAwesome.css" type="text/css"/>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="dist/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
<meta name="description" content="">
<meta name="author" content="">
    
<!-- <link rel="icon" href="../../favicon.ico"> -->

<title>Pinser Console</title>
<!-- Custom styles for login template -->
    
<link href="login.css" rel="stylesheet">

<!-- Custom Style for date picking -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS and bootstrap datepicker CSS used for styling the demo pages-->
        <link rel="stylesheet" href="dist/css/datepicker.css">
   
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
   
 <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
 <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    
<!--[if lt IE 9]>
     
 <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
     
 <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   
 <![endif]-->
  <div>	
<nav class="navbar navbar-default navbar-fixed-top header">
			<%@ include file="header.jsp" %>
</nav>
</div>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

</head>
  
<body>
    <div class="container" style="padding: 80px;">
		<div class="row">
		<div class="col-md-12"  style="padding-top: 20px">
		<div>
		<!-- <button class="btn btn-lg btn-primary btn-block" type="button" id="signUp" style="background-color:#16B7A1"><font face="Eras ITC", "Eras Light ITC",  sans-serif>Analyze Trends</font></button> -->
        <table class="modal-table">
			      <tr>
			        <td style="padding: 20px"><div id="video-time_graph"></div></td>
			        <td style="padding: 20px"><div id="comment-time_graph"></div></td>
			      </tr>
		</table>
        </div>
		<form action="homePageController" method="post">
			<div class="input-daterange" id="datepicker">
  
			<label class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; background-color:white; font-size:16px; margin:0"><b> Select Date Range </b></label>
                   
			<input type="text" class="input-small" name="startDate" required/>
                    
			<span class="add-on" style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1;vertical-align: top;height:20px;background-color:white;font-size:16px;"><b>-</b></span>
                    
			<input type="text"  name="endDate" required/>
								
			</div>
		<input type="submit" class="btn btn-lg" style="background-color:#16B7A1; font-family: Eras ITC, Eras Light ITC,  sans-serif; color:white; padding:3px 3px;font-size:15px" value="Submit"/>
		</form>
		
		</div>
	</div>  
		</br>
	<div>
            <table id="dataTable" class="table table-striped dataTable hometable">
              <thead style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                <tr>
                  <th>User id</th>
                  <th>Video</th>
                  <th>Video Caption</th>
                  <th>Vote Count</th>
                  <th>User Description</th>
                  <th>Location (Lat/Long)</th>
                  <th>Views Counts</th>
				  <th>Comment Count</th>
				  <th>Date & Time</th>				  
                </tr>
              </thead>
              <tbody style="font-family: Eras ITC, Eras Light ITC,  sans-serif; color:#16B7A1; font-size:16px;">
                 <c:forEach var="data" items="${data}">
                <tr>
                  <td><a href="userActivityController?action=user&&userid=${data.userID}">${data.userID}</a></td>
                  <td><a href="videoController?action=video&&videoid=${data.videoID}">${data.videoID}</a></td>
                  <td>${data.caption}</td>
				  <td>${data.voteCount}</td>
				  <td>${data.user_Description}</td>
				  <td>${data.location}</td>
				  <td>${data.viewCount}</td>
				  <td>${data.commentCount}</td>
				  <td>${data.createdTime}</td>
                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
    </div>
<div id ="analyticsModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
			<div class="modal-content">
			  <div class="modal-body">
				
			  </div>
			</div>
		  </div>
</div>
<!-- Load jQuery and bootstrap datepicker scripts -->


<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        
<script src="dist/datatables/js/jquery.dataTables.js"></script>
<script src="dist/js/dataTables.bootstrap.js"></script>
<script src="dist/js/jquery.validate.js"></script>
<script src="dist/js/jquery.form.js"></script>

<script type="text/javascript" src="dist/js/jquery.flexisel.js"></script>
<script type="text/javascript" src="dist/js/jquery.easy-autocomplete.min.js" ></script>
     
<script src="dist/js/bootstrap-datepicker.js"></script>

<script type="text/javascript">
	google.load('visualization', '1', {
		packages : [ 'line' ]
	});
	  
	 google.setOnLoadCallback(draw_Chart);
	function draw_Chart() {
		
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Date');
		data.addColumn('number', 'Number of Videos Posted');
		
		data.addRows([ 
		       <c:forEach var="list2" items = "${list2}">
					['${list2.month}', <c:out value="${list2.number}"/>],
				</c:forEach>
					]);
		
		var options = {
			chart : {
				title : 'Analysis on the Basis Of Number of Video Received',
				subtitle : 'Number of Video - Time'
			},
			width:700,
			height:600
					
		};

		var chart = new google.charts.Line(document
				.getElementById('video-time_graph'));

		chart.draw(data, options);
		
	} 

	function drawChart1() {
		
		var data1 = new google.visualization.DataTable();
		data1.addColumn('string', 'Date');
		data1.addColumn('number',
				'Number of Comments');

		data1.addRows([ 
				       <c:forEach var="list1" items = "${list1}">
							['${list1.month}', <c:out value="${list1.number}"/>],
						</c:forEach>
							]);
		var options1 = {
			chart : {
				title : 'Analysis on the Basis Of Number of Comments Received',
				subtitle : 'Number of Comments over Time'
			},
			width:650,
			height:600
		};

		var chart1 = new google.charts.Line(document
				.getElementById('comment-time_graph'));

		chart1.draw(data1, options1);
	}
</script>

<script type="text/javascript">
            // When the document is ready
           
	$(document).ready(function() {
		drawChart1();
		
		$('.input-daterange').datepicker({
			todayBtn : "linked"
		});
		$('.dataTable').DataTable();
		$('.datetime').datetimepicker();
	});
	$('#signUp').click(function(){
		$('#analyticsModal').modal();
	});
</script>


</body>
<footer style="background-color: #F6F6F6;">
 <%@ include file="footer.jsp" %>  
</footer>
</html>
