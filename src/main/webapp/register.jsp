<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		<form id="register_form" action="diary_list.do">

			<label>Email</label><input type="text" />
			 <label>Username</label><input	type="text" />
			 <label>Password</label><input type="password" />
			<label>Password2</label><input type="password" />
			<div id="submit">
				<a href="#">submit</a>
			</div>

		</form>
	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>