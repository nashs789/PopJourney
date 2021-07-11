<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>일지관리</title>
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
				background-color: #f9f9f9;
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
				color: #f37321;
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
				color: #f37321;
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
				background-color: #f9f9f9;
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
				color: #f37321;
			}
			.menu2 {
				color: #f37321;
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
				border: 1px solid black;
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
			.diary_delete_btn {
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
			.diary_delete_btn:hover {
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
				cursor: pointer;
			}
			tbody tr:hover {
				background-color: #FFFFFF;
			}
			tbody tr td {
				font-size: 9pt;
				font-weight: 300;
				text-align: center;
			}
			.diary_title {
				text-align: left;
			}
			.article th {
				font-size: 10pt;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #f37321;
			}
			.ckbox {
			 	height: 15px;
			 	width: 15px;
			}
			
			
			.paging { 
	            font-size: 0;
	            text-align: center;
	            margin: 40px 0px 60px 0px;
	        }  
	        .paging div {
	            display: inline-block;
	            margin-left: 10px;
	            padding: 5px 10px;
	            border-radius: 20px;
	            font-size: 12pt; 
	            font-weight: bold;
	            text-decoration: none;
	        }   
	        .paging_btn {
	            background-color: none;
	            color: #2e3459;
	            letter-spacing:-5px;
	            font-size: 12pt;
	        }
	        .paging div.num {           
	            color: #2e3459;
	        }
	        .paging div:first-child {
	            margin-left: 0;
	        } 
	        .paging div.num:hover,
	        .paging div.num.on,
	        .paging div.paging_btn:hover  {
	            color: #F1404B;
	            text-decoration: underline;
	            cursor: pointer;
	        }
	        
	        .edit_btn {
				width: 45px;
				height: 24px;
				background-color: #FFFFFF;
				color: #000000;
				font-weight: bold;
				cursor: pointer;
				text-align: center;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			.edit_btn:hover {
				background-color: #2E3459;
				color: #FFFFFF;
				border: 2px solid #2E3459;
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
				
				reloadList();
				
				// 페이지 상단 배너 메뉴
				$("#travelWriter").on("click", function() {
			  		location.href = "travelWriterRank";
			  	});
				$("#clientCenter").on("click", function() {
			  		location.href = "clientCenterQuestion";
			  	});
				$("#admin").on("click", function() {
			  		location.href = "memAdmin";
			  	});
				
				// 내부관리자 메뉴 이동
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
				
				// 셀렉터 옵션 유지
				if("${param.searchFilter}" != "") {
					$("#searchFilter").val("${param.searchFilter}");
				}
				
				// 검색 처리
				$(".search_btn").on("click", function() {
					$("#page").val(1);
					$("#searchOldTxt").val($("#searchTxt").val());
					reloadList();
				});
				
				// 페이징 처리
				$(".paging").on("click", "div", function() {
					$($("#page").val($(this).attr("page")));
					$("#searchTxt").val($("#searchTxt").val());
					$("#allCkbox").prop("checked", false);
					reloadList();
				});
				
				// 체크박스 처리
				$("#allCkbox").on("click", function() {
					if($(this).is(":checked")) {
						$(".ckbox").prop("checked", true);
					} else {
						$(".ckbox").prop("checked", false);
					}
				});
				$("tbody").on("click", ".ckbox", function() {
					if($("tbody .ckbox").length == $("tbody .ckbox:checked").length) {
						$("#allCkbox").prop("checked", true);
					} else {
						$("#allCkbox").prop("checked", false);
					}
				});
				
			});
			
			function reloadList() {
				var params = $("#actionForm").serialize();
				
				$.ajax({
					url: "TravelDiaryAdmins",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						//날짜 가져오기
						$("#searchDate1").val(res.startDay);
						$("#searchDate2").val(res.today);
						
						//내부관리자 - 여행일지
						drawList(res.list);
						drawPaging(res.pb);
					},
					error: function(request, status, error) {
						console.log(error);
					}
				});
			}
			
			function drawList(list) {
				var html = "";
				
				for(d of list) {
					html += "<tr mno=\"" + d.JOURNAL_NO + "\">";
					html += "<td><input type=\"checkbox\" class=\"ckbox\" name=\"ckMemNo\" value=\"" + d.JOURNAL_NO + "\"/></td>";
					html += "<td id=\"mNo\">" + d.JOURNAL_NO + "</td>";
					html += "<td>" + d.NIC + "</td>";
					html += "<td>" + d.CATEGORY_NAME + "</td>";
					html += "<td>" + d.SUB_CATEGORY_NAME + "</td>";
					html += "<td class=\"diary_title\">" + d.TITLE + "</td>";
					html += "<td>" + d.GRADE_NAME + "</td>";
					html += "<td>" + d.JOURNAL_DATE + "</td>";
					html += "<td>" + d.HIT + "</td>";
					html += "<td>" + d.LIKE_CNT + "</td>";
					html += "<td><input type=\"button\" class=\"edit_btn\" value=\"수정\" readonly=\"readonly\"/></td>";
					html += "</tr>";
				}
				$("#list_wrap tbody").html(html);
			}
			
			function drawPaging(pb) {
				var html = "";
				
				html += "<div class=\"paging_btn\" page=\"1\"><<</div>";
				
				if($("#page").val() == "1") {
					html += "<div class=\"paging_btn\" page=\"1\"><</div>";
				} else {
					html += "<div class=\"paging_btn\" page=\"" + ($("#page").val() - 1) + "\"><</div>";
				}
				
				for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
					if($("#page").val() == i) {
						html += "<div class=\"num on\" page=\"" + i + "\">" + i + "</div>";
					} else {
						html += "<div class=\"num\" page=\"" + i + "\">" + i + "</div>";
					}
				}
				
				if($("#page").val() == pb.maxPcount) {
					html += "<div class=\"paging_btn\" page=\"" + pb.maxPcount + "\">></div>";
				} else {
					html += "<div class=\"paging_btn\" page=\"" + ($("#page").val() * 1 + 1) + "\">></div>";
				}
				
				html += "<div class=\"paging_btn\" page=\"" + pb.maxPcount + "\">>></div>";
				
				$(".paging").html(html);
				
			}
			
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
				<div class="mem_admin_area">
				<form action="#" id="actionForm" method="post">
					<div class="admin_menu">
						<span class="menu1" id="menu1">· 회원관리 </span><span class="menu2" id="menu2"> · 일지관리 </span><span class="menu3" id="menu3"> · 게시판관리</span><span class="menu4" id="menu4"> · 공지관리</span><span class="menu5" id="menu5"> · 신고관리</span>
					</div>
					<div class="sub_search">
						검색 :
						<input type="hidden" id="page" name="page" value="${page}" />
						<input type="hidden" id="searchOldTxt" value="${param.searchTxt}" />
						<select class="search_filter" id="searchFilter" name="searchFilter">
								<option value="0" selected="selected">통합검색</option>
								<option value="1">닉네임</option>
								<option value="2">제목</option>
						</select>
						<input class="search_date" type="date" id="searchDate1" name="searchDate1" value="${param.searchDate1}" /><span>부터</span> 
						<input class="search_date" type="date" id="searchDate2" name="searchDate2" value="${param.searchDate2}" /><span>까지</span> 
						<input class="search_txt" type="text" id="searchTxt" name="searchTxt" value="${param.searchTxt}" />
						<input class="search_btn" type="button" value="검색" />
						<input class="diary_delete_btn" type="button" value="일지삭제" />
					</div>
					<div id="list_wrap">
						<table>
							<colgroup>
									<col width="32px" /> <!-- 체크박스 -->
									<col width="106px" /> <!-- 일지번호 -->
									<col width="140px" /> <!-- 닉네임 -->
									<col width="124px" /> <!-- 선호도 -->
									<col width="124px" /> <!-- 카테고리 -->
									<col width="430px" /> <!-- 제목 -->
									<col width="124px" /> <!-- 등급 -->
									<col width="161px" /> <!-- 작성일 -->
									<col width="92px" /> <!-- 조회 -->
									<col width="102px" /> <!-- 좋아요 -->
									<col width="110px" /> <!-- 비고 -->
							</colgroup>
							<thead>
								<tr class="article">
									<th><input type="checkbox" class="ckbox" id="allCkbox"/></th>
		            				<th>일지번호</th>
		            				<th>닉네임</th>
		            				<th class="click_article">선호도↕</th>
		            				<th class="click_article">카테고리↕</th>
		            				<th>제목</th>
		            				<th class="click_article">등급↕</th>
		            				<th class="click_article">작성일↕</th>
		            				<th class="click_article">조회↕</th>
		            				<th class="click_article">좋아요↕</th>
		            				<th>비고</th>
		            			</tr>
							</thead>
							<tbody></tbody>
						</table>
					</div>
				</form>
				</div> <!-- mem_admin_area end -->
				<div class="paging"></div>
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