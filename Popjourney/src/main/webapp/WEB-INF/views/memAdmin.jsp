<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원관리</title>
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
				min-width: 1280px;
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
				display: inline-block;
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
				display: none;
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
			
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #FFFFFF;
			}
			
			
			.mem_admin_area {
				display: block;
				width: 1280px;
				margin: 0px auto;
				padding: 20px 0px 20px 0px;
			}
			.admin_menu {
				display: block;
				height: 50px;
			}
			.admin_menu span {
				cursor: pointer;
				font-size: 15pt;
				font-weight: bold;
			}
			.admin_menu span:hover {
				color: #F37321;
			}
			.menu1 {
				color: #F37321;
			}
			.sub_search {
				display: block;
				margin: 40px auto 20px auto;
				width: 940px;
				height: 40px;
				font-size: 15pt;
				font-weight: bold;
			}
			.search_filter {
				position: relative;
				top: -2px;
				left: 0px;
				width: 100px;
				height: 40px;
			}
			.search_date {
				position: relative;
				top: -2px;
				left: 0px;
				width: 130px;
				height: 37px;
				text-align: center;
			}
			.search_txt {
				position: relative;
				top: -2px;
				width: 200px;
				height: 28px;
				padding: 5px;
				font-size: 10pt;
			}
			.search_btn {
				width: 90px;
				height: 40px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			.mem_delete_btn {
				width: 90px;
				height: 40px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			.search_btn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			.mem_delete_btn:hover {
				background-color: #F1404B;
				color: #FFFFFF;
				border: 2px solid #F1404B;
			}
			
			
			table {
				border-collapse: collapse;
			}
			thead tr {
				background-color: #FFFFFF;
				color: #000000;
				height: 40px;
				border-top: 2px solid #2e3459;
				border-bottom: 1px solid #ccc;
				text-align: center;
			}
			thead tr th {
				padding: 0px 5px;
				font-size: 10pt;
				font-weight: bold;
				text-align: center;
			}
			tbody tr{
				border-bottom: 1px solid #ccc;
				height: 40px;
				text-align: center;
			}
			tbody tr td {
				font-size: 9pt;
				font-weight: 300;
				text-align: center;
			}
			.article {
				font-size: 13pt;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #F37321;
			}
			.ckbox {
			 	height: 15px;
			 	width: 15px;
			}
			.grade_btn {
				width: 70px;
				height: 24px;
				background-color: #FFFFFF;
				color: #000000;
				font-weight: bold;
				font-size: 10pt;
				cursor: pointer;
				text-align: center;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			.grade_btn:hover {
				background-color: #2E3459;
				color: #FFFFFF;
				border: 2px solid #2E3459;
			}
			
			
			.paging_wrap {
            	width: 100%;
            	height: 100px;
            	padding-top: 50px;
	        }
	        .paging { 
	            font-size: 0;
	            text-align: center;
	            margin: 40px 0px 60px 0px;
	        }  
	        .paging a {
	            display: inline-block;
	            margin-left: 10px;
	            padding: 5px 10px;
	            border-radius: 20px;
	            font-size: 12pt; 
	            font-weight: bold;
	            text-decoration: none;
	        }   
	        .paging a.paging_btn {
	            background-color: none;
	            color: #2e3459;
	            letter-spacing:-5px;
	            font-size: 12pt;
	        }
	        .paging a.num {           
	            color: #2e3459;
	        }
	        .paging a:first-child {
	            margin-left: 0;
	        } 
	        .paging a.num:hover,
	        .paging a.num.on,
	        .paging a.paging_btn:hover  {
	            color: #F1404B;
	            text-decoration: underline;
	        }
			
			
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
				
				$("#menu1").on("click", function() {
					location.href = "memAdmin";
				});
				$("#menu2").on("click", function() {
					location.href = "TravelDiaryAdmin";
				});
				$("#menu3").on("click", function() {
					location.href = "communityAdmin";
				});
				$("#menu4").on("click", function() {
					location.href = "noticeAdmin";
				});
				$("#menu5").on("click", function() {
					location.href = "reportAdmin";
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
						<li>여행작가</li>
						<li>고객센터</li>
						<li>내부관리자</li>
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
				<div class="mem_admin_area">
					<div class="admin_menu">
						<span class="menu1" id="menu1">· 회원관리 </span><span class="menu2" id="menu2"> · 일지관리 </span><span class="menu3" id="menu3"> · 게시판관리</span><span class="menu4" id="menu4"> · 공지관리</span><span class="menu5" id="menu5"> · 신고관리</span>
					</div>
					<div class="sub_search">
						검색 :
						<select class="search_filter">
								<option value="0" selected="selected">통합검색</option>
								<option value="1">아이디</option>
								<option value="2">닉네임</option>
								<option value="3">이름</option>
						</select>
						<input class="search_date" type="date" /><span>부터</span> 
						<input class="search_date" type="date" /><span>까지</span> 
						<input class="search_txt" type="text" />
						<input class="search_btn" type="button" value="검색" />
						<input class="mem_delete_btn" type="button" value="회원삭제" />
					</div>
					<table>
						<colgroup>
							<col width="32px" /> <!-- 체크박스 -->
							<col width="95px" /> <!-- 회원번호 -->
							<col width="111px" /> <!-- 아이디 -->
							<col width="111px" /> <!-- 닉네임 -->
							<col width="111px" /> <!-- 이름 -->
							<col width="75px" /> <!-- 성별 -->
							<col width="75px" /> <!-- 나이 -->
							<col width="161px" /> <!-- 이메일 -->
							<col width="133px" /> <!-- 전화번호 -->
							<col width="100px" /> <!-- 가입일 -->
							<col width="100px" /> <!-- 등급 -->
							<col width="100px" /> <!-- 게시글 -->
							<col width="100px" /> <!-- 좋아요 -->
							<col width="100px" /> <!-- 팔로워 -->
							<col width="120px" /> <!-- 누적신고 -->
							<col width="100px" /> <!-- 접속횟수 -->
							<col width="100px" /> <!-- 승인대기 -->
							<col width="90px" /> <!-- 등급설정 -->
						</colgroup>
						<thead>
							<tr class="article">
								<th><input type="checkbox" class="ckbox"/></th>
								<th>회원번호</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>이름</th>
								<th class="click_article">성별↕</th>
								<th class="click_article">나이↕</th>
								<th>이메일</th>
								<th>전화번호</th>
								<th class="click_article">가입일↕</th>
								<th class="click_article">등급↕</th>
								<th class="click_article">게시글↕</th>
								<th class="click_article">좋아요↕</th>
								<th class="click_article">팔로워↕</th>
								<th class="click_article">누적신고↕</th>
								<th class="click_article">접속수↕</th>
								<th>등업신청</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
							<tr>
								<td>
									<input type="checkbox" class="ckbox"/>
								</td>
								<td>1</td>
								<td>dassdsa7</td>
								<td>닉네임이다</td>
								<td>홍길동동</td>
								<td>남</td>
								<td>20</td>
								<td>sadsad7@naver.com</td>
								<td>010-0000-0000</td>
								<td>21-04-29</td>
								<td>여행작가</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>999</td>
								<td>승인대기</td>
								<td><input type="button" class="grade_btn" value="등급설정" readonly="readonly"/> </td>
							</tr>
						</tbody>
					</table>
				</div> <!-- mem_admin_area end -->
				<div class="paging">
	           		<a href="#" class=paging_btn><<</a>
	           		<a href="#" class=paging_btn><</a>
	           		<a href="#" class="num on">1</a>
	           		<a href="#" class="num">2</a>
	           		<a href="#" class="num">3</a>
	           		<a href="#" class="num">4</a>
	           		<a href="#" class="num">5</a>
	           		<a href="#" class=paging_btn>></a>
	           		<a href="#" class=paging_btn>>></a>
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