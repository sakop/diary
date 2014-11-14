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
<link href="css/diary.css" rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="outer">
		<jsp:include page="header.jsp" />

		<section class="mainBlock">
			<section class="person_info">
				<h4 class="author_name">AIC空间</h4>
				<img class="person_image" src="pic/mayun.jpg" />
			</section>
			<section class="article_container">
				<h3 class="title">安倍领土问题</h3>
				<article>11月11日，安倍晋三前脚未离开北京，日本外相岸田文雄就迫不及待地在记者会上公开
					违背中日四点原则共识中涉及钓鱼岛内容，称日本政府在钓鱼岛问题上关于“不存在领土问题”的立场没有变化。
					日本外相的言论引发中方不满，中国驻日本使馆12日表示严重关切。
					然而，岸田13日再次就中日四点原则共识发表言论称，该共识“不具有约束力，不带国际承诺”。</article>
				<div class="meta_info float_container">
					<span class="operations">Reply</span><span class="datetime">2014-10-28
						23:48:12</span>
				</div>
			</section>

			<section class="replies float_container">
				<section class="reply article_container float_container">
					<div class="reply_author_info">
						<img class="reply_author_info_img" src="pic/mayun.jpg" /> <span
							class="reply_author_info_name">Mayun</span>
					</div>
					<div class="reply_content">
						<div class="reply_text words">胸怀这个字眼里边就是使命感。因为有使命感，你就有这种胸怀，让别人去说，
							自己知道自己在做什么，而且我一定要把它做出来，比如我胸怀超大，希望改变人 类。我希望影响别人，帮助别人，有这种使命感。</div>
						<div class="meta_info float_container">
							<span class="operations">Delete</span> <span class="datetime">2014-10-28
								23:48:12</span>
						</div>
					</div>
				</section>


				<section class="reply article_container float_container">
					<div class="reply_author_info">
						<img class="reply_author_info_img" src="pic/sunzhengyi.jpg" /> <span
							class="reply_author_info_name">Zhengyi</span>
					</div>
					<div class="reply_content">
						<div class="reply_text words">1981年，24岁的他成立软件银行，在成立软件银行（批发商）半年之内，与日本42家专卖店和94家的软件从业者交易来往，并说服东芝和富士通投资，扩大规模，但因经营不善亏本，一年后他退回财团原有投资资金。虽然孙正义一肩担起了损失的责任，却赢得了前辈们的佩服，软件银行从此声名鹊起，也为孙正义奠定了事业的信用基础。同年，成立Unison
							World日本以公司名义进行市场调查，用时1年半，40个行业展开一连串市场调查，拜访过各式各样的人、阅读了许多书籍与资料、分别编制出十年份的预估损益平衡表、资产负债表、资金周转表，以及组织图，还依时序的不同，制作出不同形态的组织图，将结果与检查项目表对照，判断这些是不是适合自己投入一生的事业。（调查报告高34公分，10多公尺宽）
							1982年，他在展会上看到HP的《个人电脑图书馆》，于是同日本最大的出版商联系出版。因出版《个人电脑图书馆》而打出名堂，让软银名声鹊起。同年，业务蒸蒸日上的日本软件银行遇到了意想不到的难题。《I/O》、《ASCII》《微软》他们却拒绝为软银刊登广告。1982年5月，孙正义创办两本杂志《Oh！PC》和《Oh！MZ》。两个月后，退货率高达85%，堆积如山的杂志被裁成了纸片。</div>
						<div class="meta_info float_container">
							<span class="operations">Delete</span> <span class="datetime">2014-10-28
								23:48:12</span>
						</div>
					</div>
				</section>
				
				
				
				<section class="reply article_container float_container">
					<div class="reply_author_info">
						<img class="reply_author_info_img" src="pic/sunzhengyi.jpg" /> <span
							class="reply_author_info_name">Zhengyi</span>
					</div>
					<div class="reply_content">
						<div class="reply_text words">1981年，24岁的他》，于是同日本最大的出版商联系出版。因出版《个人电脑图书馆》而打出名堂，让软Oh！PC》和《Oh！MZ》。两个月后，退货率高达85%，堆积如山的杂志被裁成了纸片。</div>
						<div class="meta_info float_container">
							<span class="operations">Delete</span> <span class="datetime">2014-10-28
								23:48:12</span>
						</div>
					</div>
				</section>
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