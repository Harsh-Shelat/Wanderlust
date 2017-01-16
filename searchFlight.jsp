<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="./js/jquery-1.12.3.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./js/css/bootstrap.css">
<style>
#background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('/WanderlustTravel/images/Flight_Search.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100%;
    opacity: 0.70;
    filter:alpha(opacity=80);
}
#noFlight {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('/WanderlustTravel/images/Nofilght.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100%;
    opacity:0.50;
    filter:alpha(opacity=80);
   
}
th, td , tr {
	 color: #ffffff;
	}
#flightDetails_table
{
   	 border: 2px solid black;

}
h4{
 color: red;
}
</style>
<script type="text/javascript">
function check(){
	alert("You Need to Login First!!");
	window.location.replace("Home.jsp");
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight Details</title>
</head>
<body>

	<c:choose>
  <c:when test="${fn:length(list)>0}">
<div id="background">
	
<h2 align="center">Flight Details</h2>
<div class ="container">
    <table class="table table-bordered table-hover" id="flightDetails_table">
    <thead>
    <tr>
		<th>SELECT</th>
		<th>FLIGHT NAME</th>
		<th>FROM</th>
		<th>TO </th>
		<th>FLIGHT DATE</th>
		<th>FLIGHT DEPATURE TIME</th>
		<th>FLIGHT ARRIVAL TIME</th>
		<th>Price</th>
	</tr>
    </thead>
        <c:forEach items="${list}" var="lists">
            <tr>
            	<td style="padding-left: 25px"><input type="radio" name="optradio" id="selectFlight"></td>
            	<td>${ lists.flightName }</td>
                <td>${ lists.originCode }</td>
                <td>${ lists.destinationCode }</td>
                <td>${ lists.flightDate }</td>
                <td>${ lists.depatureTime }</td>
                <td>${ lists.arrivalTime }</td>
                <td>${ lists.price}</td>
              </tr>
        </c:forEach>
    </table>
       <button type="button" class="btn btn-primary" role="button" onclick="history.back()">BACK</button>
       <c:choose>
   			<c:when test="${sessionScope.currentUser != null}">
				<a href="basicQuestion.jsp" class="btn btn-primary" role="button">NEXT</a>		
			</c:when>
	 <c:otherwise>
	 		<input type="submit" class="btn btn-primary" value="NEXT" id="submit" onclick="javascript:check();"> 
<!-- 			<a href="Home.jsp" class="btn btn-primary" role="button">NEXT</a> -->
	 </c:otherwise>
</c:choose>
       
    </div>
</div> 
</c:when>
   <c:otherwise>
 <div id="noFlight">
	<div class ="container">
   		<h4 align="center">THERE IS NO FLIGHT ON THIS DATE</h4>
   		<c:choose>
   			<c:when test="${sessionScope.currentUser != null}">
			<a href="Login.jsp" class="btn btn-primary" role="button" style="margin-top:10px;margin-right:100px;">BACK</a>
		</c:when>
	 <c:otherwise>
		<a href="Home.jsp" class="btn btn-primary" role="button" style="margin-top:10px;margin-right:100px;">BACK</a>
	 </c:otherwise>
</c:choose>
	 </div>
 </div>
  </c:otherwise>
 </c:choose>
</body>
</html>