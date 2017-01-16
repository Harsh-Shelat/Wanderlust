<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="./js/jquery-1.12.3.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/alertify.min.js"></script>
<link rel="stylesheet" href="./js/css/bootstrap.css">
<link rel="stylesheet" href="./js/css/alertify.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Question</title>
<style type="text/css">
#question {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('/WanderlustTravel/images/booking.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100%;
    opacity: 0.90;
    filter:alpha(opacity=80);
}
</style>
<script type="text/javascript"></script>
</head>
<body>
	<div id="question">
			<c:if test="${sessionScope.currentUser != null}">
					<a href="Login.jsp" class="btn btn-primary" role="button" style="margin-top:10px; margin-left:10px;">BACK TO HOME</a>
				</c:if>
		<div class="container">
		<h3 align="center">Basic Details</h3>
			<form name="basicQues">
			<div class = "form-group">
				<input type="hidden" name="user_Id" id="user_Id" value="${sessionScope.user_Id}" />
			</div>
				<div class="form-group">
					<label for="Question 1">Question 1 : What is your Passport
						Number?</label> <input type="Text" class="form-control" id="Ques_1"
						aria-describedby="Ques_1" placeholder="Answer to Question 1" required="">
				</div>
				<div class="form-group">
					<label for="Question 2">Question 2 : What is your Nationality?
						</label> <input type="Text" class="form-control" id="Ques_2"
						aria-describedby="Ques_2" placeholder="Answer to Question 2" required="">
				</div>
				<div class="form-group">
					<label for="Question 3">Question 3 : Do u have any Physical/Mental disability?
					</label> <input type="Text" class="form-control" id="Ques_3"
						aria-describedby="Ques_3" placeholder="Answer to Question 3" required="">
				</div>
				<div class="form-group">
					<label for="Question 4">Question 4 : Are u Asian/Hispaic/Latino?
					</label><input type="Text" class="form-control" id="Ques_4"
						aria-describedby="Ques_4" placeholder="Answer to Question 4" required="">
				</div>
				<div class="form-group">
					<label for="Question 5">Question 5 : Are u a veteran?</label> 
					<input type="Text" class="form-control" id="Ques_5"
						aria-describedby="Ques_5" placeholder="Answer to Question 5" required="">
				</div>
				
				<div class="form-group">
					<label for="Question 1">Question 6 : Are you carrying physical Cash/Gold with you?</label> 
					<input type="Text" class="form-control" id="Ques_6"
						aria-describedby="Ques_6" placeholder="Answer to Question 6"  required="">
				</div>
			</form>
			<button type="button" class="btn btn-primary" role="button" name="back" onclick="history.back()">BACK</button>
			<a href="base?module=blackuser&action=check&user_Id=<%=session.getAttribute("userId")%>" class="btn btn-success" role="button">BOOK NOW</a>
		</div>
	</div>
</body>
</html>