<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href='http://fonts.googleapis.com/css?family=Exo+2:400,800'
	rel='stylesheet' type='text/css'>
<link href="css/common.css" rel='stylesheet' type='text/css' />
<link href="css/index.css" rel='stylesheet' type='text/css' />

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section class="mainBlock">
		<h1>
			<spring:message code="company_name" />
		</h1>

		<form:form modelAttribute="person" id="register_form" action="./register">
			<div class="attributeDiv">
				<span class="attribute"> <spring:message code="email" />
				</span>
				<form:input path="email" />
			</div>
			<form:errors path="email" cssClass="errorMsg" />

			<div class="attributeDiv">
				<span class="attribute"> <spring:message code="name" />
				</span>
				<form:input path="name" />
			</div>
			<form:errors path="name" cssClass="errorMsg"/>

			<div class="attributeDiv">
				<span class="attribute"> <spring:message code="password" />
				</span>
				<form:password path="password" />
			</div>
			<form:errors path="password" cssClass="errorMsg" />

			<div class="attributeDiv">
				<span class="attribute"> <spring:message code="password2" />
				</span>
				<form:password path="confirmPassword" />
			</div>
			<form:errors path="confirmPassword" cssClass="errorMsg" />

			<div id="submit">
				<a href="#">submit</a>
			</div>

		</form:form>
	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>