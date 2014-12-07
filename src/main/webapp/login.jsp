<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href='http://fonts.googleapis.com/css?family=Exo+2:400,800'
	rel='stylesheet' type='text/css'>
<link href="css/common.css"  rel='stylesheet' type='text/css'/>
<link href="css/index.css"  rel='stylesheet' type='text/css'/>

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<section class="mainBlock">
		<h1>AIC Diary</h1>
		
		<c:choose>
			<c:when test="${error != null}">
				<div class="errorMsg">${error}</div>				
			</c:when>
			<c:otherwise>
				<div>No error</div>
			</c:otherwise>
		</c:choose>		

		<form id="login_form" action="login.do" method="post">

			<label>Username</label><input type="text" name="username" value="${username}"/>
			<label>Password</label><input type="password" name="password"/>
			<input type="submit" style="display: block;margin:0 auto"/>
			<!--  
			<div id="submit">
				<a href="#">submit</a>
			</div>
-->
		</form>
	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>