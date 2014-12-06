<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>My Diaries</title>

<link href='http://fonts.googleapis.com/css?family=Exo+2:400,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Handlee'
	rel='stylesheet' type='text/css'>
<link href="css/common.css" rel='stylesheet' type='text/css'>
<link href="css/diary_common.css" rel='stylesheet' type='text/css'>
<link href="css/add_post.css" rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="outer">
		<jsp:include page="header.jsp" />

		<section class="mainBlock">

			<section class="post_diary">
				<h4 class="notice">Add a new Post</h4>
				<form id="post_diary_form" action="add_post.do" method="post" >
					<label for="title">Title:</label><input id="title"
						placeholder="Insert title here" name="title" size="40" /> <br />
					<textarea rows="12" cols="70" placeholder="Write sth plz"
						name="content" class="content"></textarea><br /><br/>
					<input type="submit" style="display: block;margin:0 auto" />
				</form>
			</section>


		</section>

		<!--
        <form action="#" id="replyForm">
               <textarea rows="20" cols="80">
               </textarea>
        </form>
 -->

		<footer>
			<small>&copy;AIC is a very cool company</small>
		</footer>
	</div>
</body>
</html>