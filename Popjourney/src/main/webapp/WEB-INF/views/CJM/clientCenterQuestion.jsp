<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객센터-자주 묻는 질문</title>
		<style type="text/css">
			/*  #fcba03 노랑
				#2e3459 남색
				#f37321 주황
				#294a37 초록
			*/
			body {
				margin: 0px;
				font-size: 0px;
				font-family: 'Black Han Sans', sans-serif;
				min-width: 1480px;
			}
			
			/* 여기서부터 헤더 레이아웃 */
			#wrap {
				width: 100%;
				height: 100%;
			}
			#header {
				width: 100%;
				height: 140px;
				background-color: #2e3459;
				position: relative;
			}
			.top {
				display: block;
				width: 100%;
				height: 70px;
				background-color: #FFFFFF;
			}
			.site_name {
				display: inline-block;
				vertical-align: top;
				position: absolute; /* 추가하기 */
				width: 200px;
				font-size: 16px;
				font-weight: bold;
				line-height: 70px;
				color: #2e3459;
			}
			.logo_area {
				display: inline-block;
			    width: calc(100% - 470px);
			    height: 70px;
			    background-color: #FFFFFF;
			    text-indent: 40px;
			}
			.logo_photo {
				height: 35px;
				margin-top: 18px;
			}
			.btns { /* .logins와 연동  */
				display: none;
			    vertical-align: top;
			    width: 470px;
			    height: 70px;
			    text-align: right;
			    background-color: #FFFFFF;
			}
			.btns img {
				width: 40px;
				margin-right: 20px;
				margin-top: 15px;
				cursor: pointer;
			}
			.bell_icon {
				margin-left: 160px;
			}
			.logins {
				display: inline-block;
				vertical-align: top;
				width: 470px;
				height: 70px;
				text-align: right;
				background-color: #FFFFFF;
			}
			.sub_login1 {
				display: block;
				position: relative;
				width: 100%;
				height: 55px;
			}
			.sub_login2 {
				display: block;
			    width: calc(100% - 75px);
			    height: 15px;
			    line-height: 10px;
			    text-align: right;
			    padding-right: 75px;
			}
			.sub_login2 span {
				position: relative;
				width: 10px;
				font-size: 12px;
				font-weight: 600;
				cursor: pointer;
				margin-left: 10px;
			}
			.sub_login2 span:hover {
				color: #F37321;
			}
			.login {
				float: right;
				width: 100px;
				height: 25px;
				margin-top: 20px;
				margin-left: 5px;
			}
			.login_btn {
				float: right;
				margin: 20px 20px 0px 5px;
				width: 50px;
				height: 30px;
				background-color: #2e3459;
				font-weight: bold;
				font-size: 12px;
				color: #FFFFFF;
				text-align: center;
				line-height: 26px;
				cursor: pointer;
			}
			.login_btn:hover{
				background-color: #294a37;
			}
			.banner {
				width: 100%;
				height: 70px;
			}
			.menu {
				position: absolute;
				height: 70px;
			    left: 20px;
			}
			.menu ul li {
				list-style: none;
				float: left;
				color: white;
				font-size: 23px;
				font-weight: bold;	
				margin-right: 100px;
				line-height: 70px;
				text-decoration: none;
				cursor: pointer;
			}
			.menu ul li:hover {
				color: #F37321;
			}
			.search {
				float: right;
				margin: 20px 20px 20px 0px; 
				width: 250px;
				height: 29px;
			}
			.filter {
				float: right;
				margin: 20px 20px 20px 0px; 
				width: 100px;
				height: 35px;
			}
			.search_icon {
				float: right;
				margin: 17px 20px 13px 0px;
				width: 40px;
				cursor: pointer;
			}
			input[type='text']:focus, input[type='password']:focus, input[type="date"], select:focus {
				outline-color: #fcba03;
			}
			/* 여기까지 헤더 레이아웃 !!! */
			
			/* 컨테이너 레이아웃 */
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #FFFFFF;
			}
			
			
			
			.client_center_search {
				display: block;
				margin: 50px auto 0px auto;
				width: 100%;
				height: 120px;
				background-color: #fcba03;
				border-radius: 20px;
				border: 0px;
			}
			.client_center_name {
				display: inline-block;
				vertical-align: top;
				color: #FFFFFF;
				font-weight: bold;
				font-size: 30pt;
				width: 30%;
				height: 100%;
				margin-left: 50px;
			}
			.client_center_name div {
				width: 54%;
				margin: 0px auto;
				line-height: 120px;
			}
			.question_search {
				display: inline-block;
				vertical-align: top;
				width: 700px;
				height: 64px;
				margin-top: 30px;
			}
			.question_search input {
				width: 600px;
				height: 60px;
				line-height: 100px;
				font-size: 15pt;
				text-align: left;
				border-radius: 5px;
				border: 0px;
			}
			.question_search div {
				display: inline-block;
				vertical-align: top;
				width: 70px;
				height: 70px;
				margin: -3px 0px 0px 10px;
			}
			.question_search img {
				width: 70px;
				height: 70px;
				line-height: -30px;
				cursor: pointer;
			}
			
			.sidebar {
				display: block;
				width: 100%;
				height: 100px;
				background-color: #FFFFFF;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.sidebar1 {
				color: #f37321;
			}
			.sidebar1, .sidebar2 {
				display: inline-block;
				vertical-align: top;
				font-size: 15pt;
				font-weight: bold;
				width: 200px;
				line-height: 100px;
				cursor: pointer;
				text-align: center;
				margin-left: 20px;
			}
			.sidebar1:hover, .sidebar2:hover {
				color: #f37321;
			}
			.sidebar3 {
				display: inline-block;
				vertical-align: top;
				font-size: 15pt;
				font-weight: bold;
				width: 250px;
				height: 100px;
				text-align: center;
				float: right;
			}
			.sidebar3 p {
				border-left: 1px solid rgb(238, 238, 238);
				color: #fcba03;
			}
			.question_sidebar {
				display: block;
				width: 100%;
				height: 160px;
				margin: 30px auto 0px auto;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.question_sidebar ul {
			    list-style: none;
			    margin: 0px;
			    padding: 0px;
			}
			.question_sidebar ul li {
				margin: 0px 0px 0px 0px;
			    padding: 10px 20px;
			    border : 1px solid rgb(238, 238, 238);
			    float: left;
			    font-size: 15pt;
			    font-weight: bold;
			    cursor: pointer;
			    width: 278px;
			    height: 78px;
			    text-align: center;
			    background-color: rgb(250, 250, 250);
			    line-height: 75px;
			}
			
			.question_area {
				display: block;
				width: 100%;
				padding: 0px;
			}
			.question_area ul {
				padding: 0px;
			}
			.question {
				font-size: 14pt;
				padding: 25px 34px;
				cursor: pointer;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.question img {
				float: right;
				width: 24px;
				height: 24px;
			}
			.answer {
				display: none;
				font-size: 14pt;
				padding: 25px 34px;
				cursor: pointer;
				background-color: rgb(250, 250, 250);
			}
			.qna {
				text-align: center;
				color: #fcba03;
				margin-right: 10px;
				font-weight: bold;
			}
			.more {
				display: block;
				height: 20px;
				font-size: 14pt;
				color: #fcba03;
				text-align: center;
				line-height: 20px;
				padding: 16px;
				border-bottom: 1px solid rgb(238, 238, 238);
				cursor: pointer;
				margin-bottom: 50px;
			}
			.more img {
				width: 16px;
				height: 16px;
			}
			
			/* 컨테이너 레이아웃 끝 */
			#footer {
				display: block;
				width: 100%;
				height: 100px;
				background-color: #2e3459;
				color: #FFFFFF;
				font-size: 15px;
			}
			#footer p {
				margin: 0px auto;
				padding-top: 20px;
				padding-left: 250px;
				width: 600px;
				height: 80px;
			}
		</style>
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				$("#travelWriter").on("click", function() {
			  		location.href = "travelWriterRank";
			  	});
				$("#clientCenter").on("click", function() {
			  		location.href = "clientCenterQuestion";
			  	});
				$("#admin").on("click", function() {
			  		location.href = "memAdmin";
			  	});
				
				$("#question").on("click", function() {
					location.href = "clientCenterQuestion";
				});
				$("#matter").on("click", function() {
					location.href = "clientCenterMatter";
				});
				
			});
			
		</script>
	</head>
	<body>
		<div id="wrap">
			<!-- header부분 고정 -->
			<div id="header">
				<div class="banner">
					<div class="top">
						<div class="logo_area">
							<a href="#"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
							<div class="site_name">우리들의 여행일지</div>
						</div>
						<div class="btns"> <!-- 밑에 logins와 연동 -->
							<img alt="bell" src="./resources/images/bell.png" class="bell_icon">
							<img alt="bookmark" src="./resources/images/bmk.png">
							<img alt="프로필" src="./resources/images/profile.png">
						</div>
						<div class="logins">
							<div class="sub_login1">
								<input type="button" class="login_btn" value="로그인" />
								<input type="password" class="login" placeholder="PW" />
								<input type="text" class="login" placeholder="ID" />
							</div>
							<div class="sub_login2">
								<span>회원가입</span>
								<span>ID/PW 찾기</span>
							</div>
						</div>
					</div>
					<!-- 호버시 메뉴 생성 -->
				</div>
				<nav class="menu">
					<ul>
						<li>여행일지</li>
						<li>자유게시판</li>
						<li id="travelWriter">여행작가</li>
						<li id="clientCenter">고객센터</li>
						<li id="admin">내부관리자</li>
					</ul>
				</nav>
				<img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" placeholder="검색">
				<select class="filter">
					<option value="0" selected="selected">통합검색</option>
					<option value="1">여행일지</option>
					<option value="2">해시태그</option>
					<option value="3">자유게시판</option>
					<option value="4">닉네임</option>
				</select>
			</div>
			<div id="container">
				<div class="client_center_search">
					<div class="client_center_name">
						<div>고객센터</div>					
					</div>
					<div class="question_search">
						<input type="text" placeholder="자주 묻는 질문 검색" />
						<div><img alt="검색" src="./resources/images/search.png"></div>
					</div>
				</div>
				<div class="sidebar">
					<div class="sidebar1" id="question">자주 묻는 질문</div><div class="sidebar2" id="matter">문의사항</div>
					<div class="sidebar3">
						<p>
							고객센터 1577-8253<br/>
							365일, 24시간 운영
						</p>
					</div>
				</div>
				<div class="question_sidebar">
					<ul>
						<li>회원서비스</li>
						<li>여행일지</li>
						<li>등급/랭킹</li>
						<li>신고</li>
					</ul>
				</div>
				<div class="question_area">
					<ul>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[회원서비스] 회원가입은 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[회원서비스] 회원탈퇴는 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[여행일지] 일지작성은 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[신고] 신고를 받게 되면 어떤 제재가 있나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[등급/랭킹] 여행작가가 되기 위한 조건은 어떻게 되나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[여행일지] 여행일지 경로추가는 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[등급/랭킹] 랭킹은 어떻게 산정 되나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[회원서비스] 회원탈퇴는 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[회원서비스] 회원탈퇴는 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
						<li>
							<div class="question">
								<span class="qna">Q</span>
								<span class="entity">[회원서비스] 회원탈퇴는 어떻게 하나요?</span>
								<img alt="답변" src="./resources/images/under.png">
							</div>
							<div class="answer">
								<span class="qna">A</span>
								<span class="entity">내용</span>
							</div>
						</li>
					</ul>
					<div class="more">
						더보기 <img alt="더보기" src="./resources/images/under_y.png">
					</div>
				</div>
			</div> <!-- container end -->
			<div id="footer">
				<p>
					POPJOURNEY<br/>
					GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
					Copyright© POPJOURNEY. All Rights Reserved.
				</p>
			</div>			
		</div>
	</body>
</html>