<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<!-- 
		<div><%=request.getAttribute("welcome")%></div>
		<div>${requestScope.welcome}</div>
		<div>${welcome}</div>
		 -->
		 
		<c:choose>
			<c:when test="${error != null}">
				<div class="error_msg">
					${error}
				</div>
			</c:when>
			<c:otherwise>
				<div class="error_msg">
					No error!!
				</div>
			</c:otherwise>
		</c:choose>

		<form id="register_form" action="register.do" method="post">


			<label>Email</label><input type="email" name="email" placeholder="name@domain.com" required/>
			<label>Username</label><input placeholder="aic" type="text"  name="username" value="${username}" required/>
			<label>Password</label><input type="password" name="password"/>
			<label>Password2</label><input type="password" name="password2" required/>
			<input type="submit" style="display: block;margin:0 auto"/>


		</form>
	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>