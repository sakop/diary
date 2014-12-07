<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">

<title>My Diaries</title>

<link href='http://fonts.googleapis.com/css?family=Exo+2:400,800'
	rel='stylesheet' type='text/css'>
<link href="css/common.css" rel='stylesheet' type='text/css'>
<link href="css/diary_common.css" rel='stylesheet' type='text/css'>

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/diary_list.js"></script>
</head>
<body>

	<jsp:include page="header.jsp" />
	<section class="mainBlock">
		<section class="person_info">
			<h4 class="author_name">AIC空间</h4>
			<img class="person_image" src="pic/mayun.jpg" /> <a
				class="addNewDiary" href="add_post.do">+Post</a>
		</section>
		<c:forEach items="${diaries}" var="diary">
			<section class="article_container">
				<h3 class="title">${diary.title}</h3>
				<article>${diary.content}</article>
				<div class="meta_info float_container">
					<span class="operations view">View</span><span class="datetime">2014-10-28
						23:48:12</span>
				</div>

			</section>
		</c:forEach>

	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>