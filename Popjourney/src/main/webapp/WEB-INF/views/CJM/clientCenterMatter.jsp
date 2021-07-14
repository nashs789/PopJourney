<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객센터-문의사항</title>
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
			
			.popup_write {
			   display: none; /* 클릭 시 inline-block */
			   width: 300px;
			   height: 150px;
			   background-color: #fcfcfc;
			   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
			   position: fixed;
			   top: calc(50% - 75px); 
			   left: calc(50% - 150px); 
			   z-index: 500;
			   font-size: 16pt;
			   border-radius: 10px;
			   font-size: 0px;
			   border: 0px;
			}
			.popup_write .popup_entity_txt {
			   font-size: 12pt;
			   font-weight: bold;
			   text-align: center;
			   line-height: 50px;
			   width: 265px;
			   height:40px;
			   margin: 30px auto 30px auto;
			}
			.popup_write .btn_list span{
			   text-decoration: none;
			   display:inline-block;
			   text-align:center;
			   width: 270px;
			   height:30px;
			   padding: 10px 15px 10px 15px;
			   font-size: 12pt;
			   color: #f37321;
			   font-weight: bold;
			   line-height: 30px;
			   border-radius: 0 0 10px 10px;
			}
			.popup_write .btn_list span:hover {
			   background-color: #f37321;
			   color: white;
			   cursor: pointer;
			}
			.bg_write { /* 클릭 시 inline-block */
				display: none;
				width: 100%;
				height: 1523px;
				position: absolute;
				top: 0px;
				left: 0px;
				background-color: #000000;
				z-index: 400;
				opacity: 0.2;
			}
			
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #f9f9f9;
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
				background-color: #f9f9f9;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.sidebar2 {
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
			
			
			
			table {
				border-collapse: collapse;
				margin: 50px auto 0px auto;
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
			.article {
				font-size: 13pt;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #F37321;
			}
			.matter_title {
				text-align: left;
			}
			.matter_write_btn {
				width: 840px;
				height: 40px;
				margin: 20px auto;
			}
			.matter_write_btn input {
				float: right;
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
			.matter_write_btn input:hover {
				background-color: #2e3459;
				color: #FFFFFF;
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
			
			#session {
				font-size: 50pt;
				color: black;
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
				
				// 로그인 정보 유지
				if("${sMEM_NO}" != "") {
					$(".logins").css("display", "none");
					$(".btns").css("display", "inline-block");
				} else {
					$(".logins").css("display", "inline-block");
					$(".btns").css("display", "none");
				}
				
				// 작성버튼 클릭 시
				$("#writeBtn").on("click", function() {
					if("${sMEM_NO}" != "") {
						$("#actionForm").attr("action", "clientCenterMatterWrite");
						$("#actionForm").submit();
					} else {
						makePopup("로그인이 필요합니다.", function() {
							console.log("작성 팝업");
						});
					}
				});
				
				
			}); // document ready end..
			
			function makePopup(title, func) {
				
				var html = "";
				
				html += "<div class=\"popup_write\">"                                  
			   	html += "	<div class=\"popup_entity_txt\">" + title + "</div>"
			    html += "    <div class=\"btn_list\">"                               
				html += "    	<span id=\"ok\">OK</span>"                           
				html += "    </div>"                                               
				html += "</div>"                                                   
				html += "<div class=\"bg_write\"></div>" 
				
				$("body").prepend(html);
				
				$(".bg_write").hide();
				$(".popup_write").hide();
				$(".bg_write").fadeIn();
				$(".popup_write").fadeIn();
				
				$(".popup_write #ok").off("click");
				$(".popup_write #ok").on("click", function() {
					if(func != null) {
						func.call();
					}
					closePopup();
				});
			}
			
			function closePopup() {
				$(".bg_write").fadeOut(function() {
					$(".bg_write").remove();
				});
				$(".popup_write").fadeOut(function() {
					$(".popup_write").remove();
				});
			}
			
			function reloadList() {
				var params = $("#actionForm").serialize();
				
				$.ajax({
					url: "memAdmins",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						//날자 가져오기
						$("#searchDate1").val(res.startDay);
						$("#searchDate2").val(res.today);
						
						//내부관리자-회원관리
						drawList(res.list);
						drawPaging(res.pb);
					},
					error: function(request, status, error) {
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});
			}
			
			function drawList(list) {
				var html = "";
				
				for(d of list) {
					if(d.LEAVE_DATE == "-") {
						html += "<tr mno=\"" + d.MEM_NO + "\" class=\"not_leave\">";
					} else {
						html += "<tr mno=\"" + d.MEM_NO + "\" class=\"leave\">";
					}				
					html += "<td><input type=\"checkbox\" class=\"ckbox\" name=\"ckJournalNo\" value=\"" + d.MEM_NO + "\"/></td>";
					html += "<td id=\"mNo\">" + d.MEM_NO + "</td>";
					html += "<td>" + d.ID + "</td>";
					html += "<td>" + d.NIC + "</td>";
					html += "<td>" + d.NAME + "</td>";
					html += "<td>" + d.SEX + "</td>";
					html += "<td>" + d.AGE + "</td>";
					html += "<td>" + d.EMAIL + "</td>";
					html += "<td>" + d.PHONE + "</td>";
					html += "<td>" + d.GRADE_NAME + "</td>";
					html += "<td>" + d.JOIN_DATE + "</td>";
					html += "<td>" + d.LEAVE_DATE + "</td>";
					html += "<td></td>"; // 게시글수
					html += "<td></td>"; // 좋아요수
					html += "<td></td>"; // 팔로워수
					html += "<td></td>"; // 누적신고수
					html += "<td>" + d.ACC_CNT + "</td>";
					html += "<td></td>"; // 등업신청유무
					html += "<td><input type=\"button\" class=\"grade_btn\" value=\"등급설정\" readonly=\"readonly\"/></td>";
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
			
			function resetVal() {
				$("#page").val(1);
				$("#searchFilter").val("0");
				$("#searchTxt").val("");
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
				<form action="#" id="actionForm" method="post">
					<input type="hidden" id="memNo" name="memNo" value="${sMEM_NO}" />
					<input type="hidden" id="nic" name="nic" value="${sNIC}" />
					<input type="hidden" id="matterNo" name="matterNo" />
					<input type="hidden" id="page" name="page" value="${page}" />
					<input type="hidden" id="searchOldTxt" value="${param.searchTxt}" />
				</form>
				<div class="client_center_search">
					<div class="client_center_name">
						<div>고객센터</div>					
					</div>
					<div class="question_search">
						<input type="text" id="searchFilter" name="searchFilter" placeholder="문의사항 검색" />
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
				
				
				<table>
					<colgroup>
						<col width="100px" /> <!-- 문의번호 -->
						<col width="120px" /> <!-- 작성자(닉네임) -->
						<col width="500px" /> <!-- 제목 -->
						<col width="120px" /> <!-- 작성일 -->
					</colgroup>
					<thead>
						<tr class="article">
							<th>문의번호</th>
							<th>작성자</th>
							<th>제목</th>
							<th class="click_article">작성일↕</th>
						</tr>
					</thead>
					<tbody>
						<tr matterNo="d.MATTER_NO">
							<td>1</td>
							<td>닉네임</td>
							<td class="matter_title">제목</td>
							<td>21-04-29</td>
						</tr>
					</tbody>
				</table>	
				<div class="matter_write_btn">
					<input type="button" id="writeBtn" value="작성" />
				</div>
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