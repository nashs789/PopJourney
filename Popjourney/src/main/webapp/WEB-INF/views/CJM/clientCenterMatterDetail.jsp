<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객센터-문의사항-세부</title>
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
				background-color: #f9f9f9;
				height: 697px;
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
				position: relative;
				background-color: #f9f9f9;
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
				width: calc(100% - 400px);
				height: 100px;
				text-align: right;
				position: absolute;
				right: 0px;
			}
			.sidebar3 p {
				border-left: 1px solid rgb(238, 238, 238);
				color: #fcba03;
				width: 200px;
				float: right;
			}
			
			
			.matter_detail_title {
				width: 1280px;
				height: 40px;
				margin: 20px 0px 0px 0px;
				border-bottom: 2px solid #2e3459;
			}
			.matter_detail_title span {
		 		font-size: 10pt;
		 		line-height: 40px;
			}
		    .matter_detail_title span:nth-child(2n) {
		 		margin: 10px 15px 0 5px;
		 		color: #f37321;
		 	}
		 	.matter_btns {
		 		float: right;
		 		width: 200px;
		 	}
		 	.matter_btns input {
				float: right;
				width: 60px;
				height: 30px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
				margin-left: 10px;
			}
			.matter_btns .matter_edit_btn:hover, .matter_btns .matter_cmt_btn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			.matter_btns .matter_del_btn:hover {
				background-color: #F1404B;
				color: #FFFFFF;
				border: 2px solid #F1404B;
			}
		 	.matter_btns2 {
		 		float: right;
		 		width: 200px;
		 	}
		 	.matter_btns2 input {
				float: right;
				width: 60px;
				height: 30px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
				margin-left: 10px;
			}
			.matter_btns2 .matter_edit_btn2:hover, .matter_btns .matter_cmt_btn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			.matter_btns2 .matter_del_btn2:hover {
				background-color: #F1404B;
				color: #FFFFFF;
				border: 2px solid #F1404B;
			}
		 	.text_area {
	         	width: 1280px;
	         	margin: 0 auto;
	         	color: black;
	         	font-size: 12pt;
	         	border-bottom: 2px solid #2e3459;
         	}
         	
			.admin_matter_detail_title {
				width: 1280px;
				height: 40px;
				margin: 20px 0px 0px 0px;
				border-bottom: 2px solid #2e3459;
			}
			.admin_matter_detail_title span {
		 		font-size: 10pt;
		 		line-height: 40px;
			}
		    .admin_matter_detail_title span:nth-child(2n) {
		 		margin: 10px 15px 0 5px;
		 		color: #f37321;
		 	}
		 	.admin_text_area {
	         	width: 1280px;
	         	margin: 0 auto;
	         	color: black;
	         	font-size: 12pt;
	         	border-bottom: 2px solid #2e3459;
         	}
         	
			.matter_detail_btn {
				width: 1280px;
				height: 40px;
				margin: 20px auto 5px auto;
				display: block;
			}
			.matter_detail_btn input {
				float: right;
				width: 60px;
				height: 30px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
				margin-left: 10px;
			}
			/* .matter_cnt_btn {
				display: none;
			} */
			.matter_edit_btn:hover, .matter_cmt_btn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			.matter_del_btn:hover {
				background-color: #F1404B;
				color: #FFFFFF;
				border: 2px solid #F1404B;
			}
			#adminMatterDetailTitle {
				margin-bottom: 30px;
				display: none;
			}
			.cmt_area {
				display: none;
				width: 1280px;
				height: 200px;
			}
			.cmt_contents {
				margin: 0px 0px 10px 0px;
				width: 1270px;
				height: 120px;
			}
			.cmt_area div input {
				float: right;
				width: 60px;
				height: 30px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
				margin-left: 10px;
			}
			.cmt_write:hover, .cmt_edit:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			.cmt_cancel:hover {
				background-color: #F1404B;
				color: #FFFFFF;
				border: 2px solid #F1404B;
			}
			/* .back_btn {
				float: right;
			} */
			#backBtn {
				float: right;
				width: 90px;
				height: 30px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
				margin-left: 10px;
			}
			#backBtn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
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
				
				$(".logo_photo").on("click", function() {
					location.href = "main";
				});
				
				$(".logo_photo").on("click", function() {
					location.href = "main";
				});
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
					$(".back_btn").css("margin-top", "30px");
					
					// 답변있을 경우 답변창 보여주고 없을 경우 숨기기
					if($("#cmtContents").val() != "") {
						$("#adminMatterDetailTitle").css("display", "block");
						$(".matter_detail_btn").css("display", "none");
						//$("#matterBtns").hide();
					} else {
						$("#adminMatterDetailTitle").css("display", "none");
					}
					
					// 매니저로 로그인 아닌 경우 답글버튼 히든
					if("${sMEM_NO}" != 1) {
						$(".matter_detail_btn").hide();
						$("#adminMatterBtns").hide();
						
						// 회원번호와 작성번호가 같을 경우 수정/삭제 버튼 생성
						if("${sMEM_NO}" == $("#writeMemNo").val()) {
							$("#matterBtns").show();
							if($("#cmtContents").val() != "") {
								$(".matter_edit_btn").hide();
							}
						} else {
							$("#matterBtns").hide();
						}
					}
				} else {
					$(".logins").css("display", "inline-block");
					$(".btns").css("display", "none");
					$(".matter_detail_btn").css("display", "none");
					$("#matterDetailTitle").css("margin-bottom", "30px");
					$("#matterBtns").hide();
				}
				
				$(".matter_cmt_btn").on("click", function() {
					$(".cmt_area").css("display", "block");
					$(".cmt_edit").hide();
				});
				$(".cmt_cancel").on("click", function() {
					$(".cmt_area").css("display", "none");
					$(".cmt_text").val("");
				});
				
				// 답글작성
				$(".cmt_write").on("click", function() {
					if($.trim($(".cmt_contents").val()) == "") {
						alert("내용을 넣어주세요.");
						$(".cmt_contents").focus();
					} else {
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url: "clientCenterMatterDetailCmt",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
								redrawCmt(res);
								$(".matter_detail_btn").hide();
								$(".cmt_area").hide();
								$("#adminMatterDetailTitle").css("display", "block");
								location.reload();
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					}
				});
				
				// 뒤로가기 버튼
				$("#backBtn").on("click", function() {
					location.href = "clientCenterMatter";
				})
				
				// 회원이 작성한 글 수정하기
				$(".matter_edit_btn").on("click", function() {
					$("#actionForm").attr("action", "clientCenterMatterUpdate");
					$("#actionForm").submit();
				});
				// 회원이 작성한 글 삭제하기
				$(".matter_del_btn").on("click", function() {
					if(confirm("삭제하시겠습니까?")) {
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url: "clientCenterMatterDeletes",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
								if(res.msg == "success") {
									location.href = "clientCenterMatter";
								} else if(res.msg == "failed") {
									alert("삭제에 실패하였습니다.");
								} else {
									alert("삭제중 문제가 발생하였습니다.");
								}
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					}
				});
				
				// 매니저 답변 수정하기
				$("#adminMatterEditBtn").on("click", function() {
					$(".cmt_area").show();
					$(".cmt_contents").val($("#cmtContents").val());
					$(".cmt_write").hide();
				});
				$(".cmt_edit").on("click", function() {
					
					if($.trim($(".cmt_contents").val()) == "") {
						alert("내용을 넣어주세요.");
						$(".cmt_contents").focus();
					} else {
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url: "clientCenterMatterDetailCmtUpdates",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
								redrawCmt(res);
								$(".matter_detail_btn").hide();
								$(".cmt_area").hide();
								$("#adminMatterDetailTitle").css("display", "block");
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					}
				});
				
				// 매니저 답변 삭제하기
				$("#adminMatterDelBtn").on("click", function() {
					if(confirm("삭제하시겠습니까?")) {
						$("#obNo").val($(this).parent().parent().attr("name"));
						
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url : "clientCenterMatterDetailCmtDeletes",
							type : "post",
							dataType : "json",
							data : params,
							success : function(res) {
								if(res.msg == "success") {
									$("#adminMatterDetailTitle").hide();
									$(".matter_detail_btn").show();
								} else if(res.msg == "failed") {
									alert("삭제에 실패하였습니다.");
								} else {
									alert("삭제중 문제가 발생하였습니다.");
								}
							},
							error : function(request, status, error) {
								console.log(error);
							}
						});
					}
				});
				
				// 메인검색창 넘어가는 부분(동기)
				$(".search_icon").on("click", function() {
					if($("#mainSearchFilter").val() == 0) {
						$("#goSearch").attr("action", "search");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 1) {
						$("#goSearch").attr("action", "searchTravelDiary");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 2) {
						$("#goSearch").attr("action", "searchHashtag");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 3) {
						$("#goSearch").attr("action", "searchCommunity");
						$("#goSearch").submit();
					} else {
						$("#goSearch").attr("action", "searchNic");
						$("#goSearch").submit();
					}
				});
				
				
			}); // document ready end..
			
			function redrawCmt(res) {
				var html = "";
				
				html = "<p class=\"admin_text_areas\">" + res.cmt_contents + "</p>"
				
				$(".admin_text_area").html(html);
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
						<li>여행게시판</li>
						<li>자유게시판</li>
						<li id="travelWriter">여행작가</li>
						<li id="clientCenter">고객센터</li>
						<li id="admin">내부관리자</li>
					</ul>
				</nav>
				<form action="#" id="goSearch" method="post" >
					<img alt="search" src="./resources/images/search.png" class="search_icon"/>
					<input type="text" class="search" id="mainSearchTxt" name="mainSearchTxt" value="${param.mainSearchTxt}" placeholder="검색">
					<select class="filter" id="mainSearchFilter" name="mainSearchFilter" >
						<option value="0" selected="selected">통합검색</option>
						<option value="1">여행일지</option>
						<option value="2">해시태그</option>
						<option value="3">자유게시판</option>
						<option value="4">닉네임</option>
					</select>
				</form>
			</div>
			<div id="container">
				<form action="#" id="actionForm" method="post">
					<input type="hidden" id="memNo" name="memNo" value="${param.memNo}" />
					<input type="hidden" id="qNo" name="qNo" value="${param.qNo}" />
					<input type="hidden" id="nic" name="nic" value="${param.nic}" />
					<input type="hidden" id="page" name="page" value="${param.page}" />
					<input type="hidden" id="searchOldTxt" name="searchOldTxt" value="${param.searchTxt}" />
					<input type="hidden" id="writeMemNo" name="writeMemNo" value="${data.MEM_NO}" />
					<div class="sidebar">
						<div class="sidebar1">자주 묻는 질문</div><div class="sidebar2">문의사항</div>
						<div class="sidebar3">
							<p>
								고객센터 1577-8253<br/>
								365일, 24시간 운영
							</p>
						</div>
					</div>
					<div id="matterDetailTitle">
						<div class="matter_detail_title">
							<span>문의번호</span><span>${data.QNA_NO}</span>
							<span>작성자</span><span>${data.NIC}</span>
							<span>제목</span><span>${data.TITLE}</span>
							<span>작성일</span><span>${data.QNA_DATE}</span>
							<span id="matterBtns" class="matter_btns">
								<input type="button" value="삭제" class="matter_del_btn"/>
								<input type="button" value="수정" class="matter_edit_btn"/>
							</span>
						</div>
						<div class="text_area">
		       				<p>${data.CONTENTS}</p>
		         		</div>
					</div>
	         		<div id="adminMatterDetailTitle">
		         		<div class="admin_matter_detail_title">
							<span>작성자</span><span>Manager</span>
							<span>작성일</span><span>${cmtDate.CMT_DATE}</span>
							<span id="adminMatterBtns" class="matter_btns2">
								<input type="button" value="삭제" id="adminMatterDelBtn" class="matter_del_btn2"/>
								<input type="button" value="수정" id="adminMatterEditBtn" class="matter_edit_btn2"/>
							</span>
						</div>
						<div class="admin_text_area">
							<p class="admin_text_areas">${data.CMT_CONTENTS}</p>
							<input type="hidden" id="cmtContents" value="${data.CMT_CONTENTS}" />
						</div>
	         		</div>
					
					<div class="matter_detail_btn">
						<input type="button" value="답변" class="matter_cmt_btn"/>
					</div>
					<div class="cmt_area">
						<textarea class="cmt_contents" name="cmt_contents" cols="50" rows="20"></textarea>
						<div>
							<input type="button" value="취소" class="cmt_cancel"/>
							<input type="button" value="작성" class="cmt_write"/>
							<input type="button" value="수정" class="cmt_edit"/>
						</div>
					</div>
					<div class="back_btn">
						<input type="button" id="backBtn" value="뒤로가기" />
					</div>
				</form>
				
				
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