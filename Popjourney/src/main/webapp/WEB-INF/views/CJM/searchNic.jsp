<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>통합검색-닉네임</title>
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
				color: #fcba03;
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
				color: #fcba03;
			}
			.menu ul li a {
				display: inline-block;
				height: 30px;
				text-decoration: none;
				color: white;
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
			input[type='text']:focus, input[type='password']:focus, select:focus {
				outline-color: #fcba03;
			}
			/* 여기까지 헤더 레이아웃 !!! */
			
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #FFFFFF;
			}
			.search_area {
				display: block;
				width: 1240px;
				margin: 0px auto;
				padding: 20px;
			}
			.sub_search {
				display: block;
				margin: 40px auto 5px auto;
				width: 482px; /* 476 */
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
			.search_txt {
				position: relative;
				top: -2px;
				width: 200px;
				height: 28px;
				padding: 5px;
				font-size: 10pt;
				border: 1px solid black;
			}
			.search_btn {
				width: 90px;
				height: 40px;
				background-color: #2e3459;
				font-size: 11pt;
				font-weight: bold;
				color: #FFFFFF;
				cursor: pointer;
				border-radius: 5px;
			}
			.search_btn:hover {
				background-color: #294a37;
			}
			.pop_search {
				display: block;
				font-size: 12pt;
				font-weight: 600;
				width: 480px;
				margin: 0px auto;
			}
			.pop_search span {
				cursor: pointer;
			}
			.pop_search span:hover {
				color: #fcba03;
			}
			
			
			
			.line {
				width: 100%;
				height: 5px;
				margin: 30px auto 15px auto;
				border-bottom: 5px solid #fcba03;
			}
			.search_category {
				font-size: 18pt;
				font-weight: bold;
			}
			.search_category_cnt {
				font-size: 12pt;
				font-weight: 600;
				margin: 5px 0px 20px 0px;
			}
			
			
			.search_nic {
				width: 520px;
				margin: 0px auto;
			}
			.search_nic table {
				border-collapse: collapse;
			}
			.article {
				color: #000000;
				height: 40px;
				border-top: 2px solid #2e3459;
				border-bottom: 1px solid #ccc;
			}
			.article th {
				padding: 0px 17px;
				font-size: 12pt;
				font-weight: 600;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #fcba03;
			}
			.search_nic table > tbody > tr{
				border-bottom: 1px solid #ccc;
				height: 40px;
				text-align: center;
			}
			.search_nic table > tbody > tr > td {
				font-size: 10pt;
				font-weight: 300;
			}
			.nic {
				cursor: pointer;
			}
			.nic:hover {
				color: #fcba03;
			}
			

			.paging {
	         	margin: 50px auto 50px auto; 
	         	text-align: center;
	        }  
	        .paging a {
	         	display: inline-block;
	         	margin-left: 10px;
	         	padding: 5px 10px;
	         	border-radius: 5px;
	         	font-size: 12pt; 
	        }   
	        .paging a.paging_btn {
	         	background-color: none;
	         	color: #2e3459;
	         	letter-spacing:-5px;
	         	font-size: 15pt;
	         	font-weight: bold;
	         	text-decoration: none;
	        }
	        .paging a.num {        	
	         	border: 1px solid #2e3459;
	         	background-color: #2e3459;
	         	color: white;
	         	font-weight: bold;
	         	text-decoration: none;
	        }
	        .paging a:first-child {
	         	margin-left: 0;
	        } 
	        .paging a.num:hover {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
	         	color: #2e3459;
	        }
	        .paging a.paging_btn:hover {
	         	color: #fcba03;
	        }
	        .paging a.num.on {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
	         	color: #2e3459;
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
	</head>
	<body>
		<div id="wrap">
			<!-- header부분 고정 -->
			<div id="header">
				<div class="banner">
					<div class="top">
						<div class="logo_area">
							<a href="#"><img alt="로고" src="./img/logo.png" class="logo_photo"></a>
							<div class="site_name">우리들의 여행일지</div>
						</div>
						<div class="btns"> <!-- 밑에 logins와 연동 -->
							<img alt="bell" src="./img/bell.png" class="bell_icon">
							<img alt="bookmark" src="./img/bmk.png">
							<img alt="프로필" src="./img/profile.png">
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
						<li>내부관리자</li>
					</ul>
				</nav>
				<img alt="search" src="./img/search.png" class="search_icon"/>
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
				<div class="search_area">
					<div class="sub_search">
						검색 :
						<select class="search_filter">
								<option value="0" selected="selected">통합검색</option>
								<option value="1">여행일지</option>
								<option value="2">해시태그</option>
								<option value="3">자유게시판</option>
								<option value="4">닉네임</option>
						</select>
						<input class="search_txt" type="text" />
						<input class="search_btn" type="button" value="검색" />
					</div>
					<div class="pop_search">
						인기검색어 : <span>국내여행</span>, <span>한적한 곳</span>, <span>기차여행</span>, <span>도보여행</span>, <span>자전거여행</span>
					</div>
					<!-- 닉네임 검색결과 시작 -->		
					<div class="line"></div>		
					<div class="search_category">닉네임</div>
					<div class="search_category_cnt">50개의 닉네임이 검색되었습니다.</div>
					
					
					
					<div class="search_nic">
						<table>
							<colgroup>
								<col width="100px" /> <!-- 회원번호 -->
								<col width="120px" /> <!-- 닉네임 -->
								<col width="100px" /> <!-- 등급 -->
								<col width="100px" /> <!-- 좋아요 -->
								<col width="100px" /> <!-- 팔로워 -->
							</colgroup>
							<thead>
								<tr class="article">
									<th class="click_article">회원번호</th>
									<th class="click_article">닉네임</th>
									<th class="click_article">등급</th>
									<th class="click_article">좋아요</th>
									<th class="click_article">팔로워</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr>
									<td>100</td>
									<td class="nic">닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 닉네임 검색결과 끝 -->
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
				</div> <!-- search area end -->
			</div>
			
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