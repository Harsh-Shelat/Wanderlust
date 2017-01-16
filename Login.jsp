<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<script src="js/jquery-1.12.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/vTicker.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="./js/css/bootstrap.min.css">
<link rel="stylesheet" href="./js/css/font-awesome.css">
<link rel="stylesheet" href="./js/css/HomePage.css">
<link rel="stylesheet" href="./js/css/datepicker.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">Wanderlust Airways</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#managebooking">MANAGE BOOKING</a></li>
        <li><a href="#specialoffer">SPECIAL OFFERS</a></li>
        <li><a href="#contact">CONTACT US</a></li>
        <li><a href="#aboutus">ABOUT US</a></li>
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li>
          <a href="#"><%
      	if(session.getAttribute("currentUser")!=null){
    	  out.println(session.getAttribute("currentUser"));
    	  }
    	%></a>
    	</li>
		<li><a href="#" data-toggle="modal" data-target="#editprofile">Edit Profile</a></li>
		<li><a href="base?module=user&action=signout"><span class="glyphicon glyphicon-log-out"></span> Sign out</a></li>          
	    </ul>
      </li>
  </ul>
		</div>
      </div>
 </nav>
<!-- Slider Implementation -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="images/Carousel0.jpg" alt="travel1" width="1200" height="700">
      </div>
      <div class="item">
        <img src="images/Carousel1.jpg" alt="travel2" width="1200" height="700">
      </div>

      <div class="item">
         <img src="images/Carousel2.jpg" alt="travel3" width="1200" height="700">
      </div>
    
      <div class="item">
 		<img src="images/Carousel3.jpg" alt="Travel4" width="1200" height="700">
      </div>
      <div class="item">
 		<img src="images/Carousel4.jpg" alt="Travel5" width="1200" height="700">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (MANAGE BOOKING) -->
	
<div id="managebooking">
		<br> <br>
		<div class="panel with-nav-tabs panel-info">
			<div class="panel-heading">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1default" data-toggle="tab">Book</a></li>
					<li><a href="#tab2default" data-toggle="tab">Flight Status</a></li>
				</ul>
			</div>
			<div class="panel-body">
				<div class="tab-content">
					<div class="tab-pane fade in active" id="tab1default">
						<div class="row form-group">
							<form class="form-horizontal" method="post"
								action="base?module=book&action=search">
								<div class="form-group">
								<input type="hidden" id="user_Id" value=""/>
								</div>
								<div class="col-md-5 control-label">
									<div class="col-md-3">
										<div class="radio">
											<label><input type="radio" name="optradio"
												id="one-way">One-Way</label>
										</div>
									</div>
									<div class="col-md-3">
										<div class="radio">
											<label><input type="radio" name="optradio"
												id="two-way">Two-Way</label>
										</div>
									</div>
								</div>
								<div class="col-md-8 control-label">
									<div class="col-md-4">
										<input id="from" name="from" type="text" placeholder="From"
											class="form-control input-md" required="">
									</div>
								</div>
								<div class="col-md-8 control-label">
									<div class="col-md-4">
										<input id="To" name="To" type="text" placeholder="To"
											class="form-control input-md" required="">
									</div>
								</div>
								<div class="col-md-9 control-label">
									<div class="col-md-3">
										<div class="input-group date" data-provide="datepicker" >
											<span class="input-group-addon"><i
												class="fa fa-calendar"></i></span> <input type="text"
												placeholder="Depature Date" id="depdate" name="depdate" />
										</div>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="col-md-3">
										<div class="input-group date" data-provide="datepicker">
											<span class="input-group-addon"><i
												class="fa fa-calendar"></i></span> <input type="text"
												placeholder="Returning Date" id="retdate" name="retdate" />
										</div>
									</div>
								</div>
								<div class="col-md-8 control-label">
									<div class="col-md-2">
										<div class="input-group passenger" data-provide="passenger">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<select class="form-control" id="passenger"
												palceholder="Passengers">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-6 control-label">
									<div class="col-md-3 ">
										<input type="submit" name="book" id="book" value="Book"
											class="form-control btn btn-success">
									</div>
									<div class="col-sm-3 col-md-3">
										<input type="reset" value="Cancel"
											class="form-control btn btn-primary" />
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="tab-pane fade" id="tab2default">
						<div class="row form-group">
							<form class="form-horizontal" method="post" action="#">
								<div class="col-md-8 control-label">
									<div class="col-md-2">
										<div class="input-group operater" data-provide="operater">
											<span class="input-group-addon"><i class="fa fa-plane"></i></span>
											<select class="form-control" id="sel1"
												palceholder="Passengers">
												<option>WL</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-8 control-label">
									<div class="col-md-4">
										<input id="To" name="To" type="text"
											placeholder="Flight Number" class="form-control input-md"
											required="">
									</div>
								</div>
								<div class="col-md-6 control-label">
									<div class="col-md-3">
										<div class="input-group date" data-provide="datepicker">
											<span class="input-group-addon"><i
												class="fa fa-calendar"></i></span> <input type="text"
												placeholder="Flight Date" id="flightdate" />
										</div>
									</div>
								</div>
								<div class="col-md-7 control-label">
									<div class="col-md-3 ">
										<input type="submit" name="Search" id="search" value="search"
											class="form-control btn btn-danger">
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


<!-- Container (Special Offer) -->
<div id="specialoffer">
  <ul>
    	<li><img src="images/offer1.jpg" alt="travel1" width="2000" height="700"></li>
        <li><img src="images/offer2.jpg" alt="travel2" width="2000" height="700"></li>
        <li><img src="images/offer3.jpg" alt="travel3" width="2000" height="700"></li>
        <li><img src="images/offer4.jpg" alt="travel4" width="2000" height="700"></li>
        <li><img src="images/offer5.jpg" alt="travel5" width="1400" height="700"></li>
        <li><img src="images/offer6.jpg" alt="travel6" width="1500" height="700"></li>
        <li><img src="images/offer7.jpg" alt="travel7" width="1500" height="700"></li>
        <li><img src="images/offer8.jpg" alt="travel8" width="1500" height="700"></li>
        <li><img src="images/offer9.jpg" alt="travel9" width="1400" height="700"></li>
        <li><img src="images/offer11.jpg" alt="travel11" width="1500" height="700"></li>
        <li><img src="images/offer12.jpg" alt="travel12" width="2000" height="700"></li>
               
        
  </ul>
</div>
<br><br><br>
<!-- Container (CONTACT US ) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our Customer</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Customer? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>NEW YORK, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: wanderlustairways@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
   </div>
</div>
<br><br><br>
  <!-- Container (About US ) -->
  <div id="aboutus" class="bg-1">
  <div class="container text-center">
  <h3>Wanderlust Airways</h3>
  <p><em>Experience the sky life</em></p>
  <p>Wanderlust airways started in 2016, allows you to reach your dream destinations. Our world's biggest fleets of Airbus A380s and Boeing 777s offering our customers the comfort of latest and most efficient wide body aircrafts in the skies.
We inspire the travels around the world with our growing network of worldwide destinations, industry leading inflight entertainment, regionally inspire cuisine and world class service.
With a fleet of more than 250 aircraft, we fly over 150 destination in more than 30 countries around the world and our network is expanding constantly. Along with safety we provide the superior in flight experience.  </p>
  <br>
</div>
  <br>
<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Wanderlust Airways Made By Technocrats++</p>
</footer>
</div>
 <!-- Modal -->
   <div class="modal fade" id="editprofile" role="dialog" style="display: none; padding-left:0px ;padding-top: 35px;">
    <div class="modal-dialog">
   <div class="modal-content">
   			<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h5 class="modal-title" id="myModalLabel">Edit Profile</h5>
      		</div>
        <div class="modal-body">
       				<form class="form-horizontal" id="register-form"
								action="" method="post">

								<!-- Current Password-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="password">Current Password:</label>
									<div class="col-md-6">
										<input id="currentpwd" name="currentpwd" type="password"
											placeholder="Enter your current Password"
											class="form-control input-md" required="">
									</div>
								</div>

								<!-- New Password input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="password">New Password:</label>
									<div class="col-md-6">
										<input id="newpwd" name="newpwd" type="password"
											placeholder="Enter your New Password"
											class="form-control input-md" required="">
									</div>
								</div>
								<!-- confirm Password input-->
								<div class="form-group">
									<label class="col-md-4 control-label" for="password">Confirm Password:</label>
									<div class="col-md-6">
										<input id="cnfrmpwd" name="cnfrmpwd" type="password"
											placeholder="Confirm Password"
											class="form-control input-md" required="">
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-3 col-md-offset-3">
											<input type="submit" name="update-login" id="update-login"
												value="Update" class="form-control btn btn-success">
										</div>
										<div class="col-sm-2 col-md-3">
											<input type="reset" value="Cancel"
												class="form-control btn btn-primary" />
										</div>
									</div>
								</div>
							</form>	
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      </div>
   </div>   
   </div>
<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip();
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
});
$(function() {
	$('#specialoffer').vTicker();
});
$(document).ready(function() {
	$('.modal').on('hidden.bs.modal', function() {
		$(this).find('form')[0].reset();
	});
});
$(document).ready(function() {
	$('.modal').on('hidden.bs.modal', function() {
		$(this).find('form')[1].reset();
	});
});

	$.fn.datepicker.defaults.format = "yyyy/mm/dd";
$(function() {
	$('#depdate').datepicker({
		format : 'yyyy/mm/dd'
	});
});

$(function() {
	$('#retdate').datepicker({
		format : 'YYYY-MM-DD'
	});
});
$(function() {
	$('#flightdate').datepicker({
		format : 'YYYY-MM-DD'
	});
});
$('#depdate').datepicker({
	onSelect : function(date, inst) {
		$("input[name='depdate']").val(date);
	}
});
$('#one-way').click(function() {

	if ($(this).is(':checked')) {
		$("#retdate").prop("disabled", true);
	}
});
$('#two-way').click(function() {

	if ($(this).is(':checked')) {
		$("#retdate").prop("disabled", false);
	}
});
</script>
</body>
</html>