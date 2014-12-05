<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<jsp:include page="header.jsp"/>
	<section class="mainBlock">
		<section class="person_info">
			<h4 class="author_name">AIC空间</h4>
			<img class="person_image" src="pic/mayun.jpg" />
			<a class="addNewDiary" href="addDiary.do">+Post</a>
		</section>
		<section class="article_container">
			<h3 class="title">问题</h3>
			<article>11月11日，前脚未离开北京，日本外相岸田文雄就迫不及待地在记者会上公开
				违背中日四点原则共识中涉及钓鱼岛内容，称日本政府在钓鱼岛问题上关于“不存在领土问题”的立场没有变化。
				日本外相的言论引发中方不满，中国驻日本使馆12日表示严重关切。
				然而，岸田13日再次就中日四点原则共识发表言论称，该共识“不具有约束力，不带国际承诺”。</article>
			<div class="meta_info float_container">
				<span class="operations view">View</span><span class="datetime">2014-10-28
					23:48:12</span>
			</div>

		</section>
		<section class="article_container">
			<h3 class="title">Youtube</h3>
			<article>Google's YouTube is starting a subscription
				service that allows users to stream ad-free music videos and to
				download them for offline use. The £9.99 monthly fee for Music Key
				also provides membership to Google Play All Access, its existing
				"all-you-can-eat" song stream and download facility.</article>
			<div class="meta_info float_container">
				<span class="operations view">View</span><span class="datetime">2014-09-17
					12:57:35</span>
			</div>

		</section>

		<section class="article_container">
			<h3 class="title">超越上海的磁悬浮？</h3>
			<article>
				２０２７年の開業を目指すリニア中央新幹線の山梨リニア実験線（山梨県上野原市―笛吹市、４２・８キロ）で１３日、
				一般向けの体験乗車会が始まった。初回は抽選で選ばれた８４人が、最高時速５００キロの新型車両「Ｌ０（エル・ゼロ）系」の速さを体感した。
				ＪＲ東海によると、乗車会の開催は７年ぶりで、１２月１０日までの計８日間の予定。
				１日に３回運行し、２４００席の定員に対して全国から応募が殺到。倍率は約１２５倍となった。</article>
			<div class="meta_info float_container">
				<span class="operation views">View</span><span class="datetime">2014-08-15
					13:28:05</span>
			</div>

		</section>
	</section>
	<footer>
		<small>&copy;AIC is a very cool company</small>
	</footer>
</body>
</html>