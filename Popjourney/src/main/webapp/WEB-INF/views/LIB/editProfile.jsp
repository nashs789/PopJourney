<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{
	eight: 100%;
} 	  
body{
   margin: 0px;      
   font-family: 'Black Han Sans', sans-serif;
   min-width: 1480px;
   height: 100%;
}
#wrap{
   width: 100%;
   height: calc(100% - 0px);
   overflow-y: auto;
}
#header {
   width: 100%;
   height: 140px;
   background-color: #2e3459;
   position: relative;
   font-size: 0px;
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
   position: absolute; 
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
.search_icon {
   float: right;
   margin: 17px 20px 13px 0px;
   width: 40px;
   cursor: pointer;
}
#container{
	width: 1280px;
	margin: 0px auto;
}
.profile{
	text-align: center;
	width: 650px;
	font-size: 18pt;
	font-weight: bold;
	margin: 50px auto 10px auto;
}
#infoWrap{
	width: 650px;
	margin: 80px auto 20px auto;
	padding: 10px 50px 30px 50px;
    border: 1px solid #e5e5e5;
	border-radius: 2px;
    box-sizing: border-box;	
}
#photoArea{
	width: 120px;
	height: 120px;
	border-radius: 120px;
	border: 1px solid black;
	margin-left: 210px;
}
#findPhotoBtn{
	margin: 20px 0px 0px 232px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputNic{
	width: 400px;
	margin-top: 15px;
	height: 30px;
}
#inputIntro{
	width: 498px;
	margin-top: 15px;
	height: 300px;
}
input[type='text']:focus{
	outline-color: #fcba03;
}
input[type='button']{
	padding: 4px 0px;
	background-color: white;
	border: 2px solid #2e3459;
	border-radius: 20px;
	height: 35px;
	cursor: pointer;
	width: 80px;
	margin-left: 10px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	font-weight: bold;
}
input[type='button']:hover{
	color: white;
	background-color: #2e3459;
}
#btnWrap{
	text-align: center;
}
#preBtn{
	margin: 50px 70px 50px 0px;
}
#preBtn:hover{
	background-color: #F1404B;
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
#search {
   float: right;
   margin: 20px 20px 20px 0px; 
   width: 250px;
   height: 29px;
}   
#filter {
   float: right;
   margin: 20px 20px 20px 0px; 
   width: 100px;
   height: 35px;
}
.popup {
   display: inline-block;
   width: 300px;
   height: 150px;
   background-color: #fcfcfc;
   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   position: fixed;
   top: calc(50% - 75px); 
   left: calc(50% - 150px); 
   z-index: 500;
   border-radius: 10px;
   font-size: 0px;
   border: 0px;
}
.popup_entity_txt {
   font-size: 12pt;
   font-weight: bold;
   text-align: center;
   line-height: 50px;
   width: 265px;
   height:40px;
   margin: 30px auto 30px auto;
}
#yesBtn{
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
   cursor:pointer; 
}
#yesBtn:hover {
   background-color: #f37321;
   color: white;
}
.bg {
	display: inline-block;
	width: 100%;
	height: 1434px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
}
.btns { 
    display: inline-block;
    vertical-align: top;
    position:relative;   
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
   margin-left: 200px;
}
.timeline{
 	 display:none;
     /* display: inline-block; */
     width: 400px;
     background-color: #EAEAEA;
     box-shadow: 0px 0px 1px 1px #444444;
     position: absolute;
     margin-top: 72px;
     right: 10px;
     z-index: 300;
}
.timeline tr{
	height: 50px;
}
   
.timeline table{
	border-collapse: collapse;
}

.timeline table tr th:first-child{
	text-align: center;
}

.timeline tr th{
	text-align: left;
}

.timeline tr th img{
	height: 50px;
	widtht: 50px;
	text-align: center;
	cursor: pointer;
}

.timeline tfoot tr{
	background-color: #939597;
}
   
.timeline tfoot tr th{
	text-align: center;
	cursor: pointer;
}

.timeline table tr th span{
	text-decoration: underline;
	cursor: pointer;
}

.timeline table tr th span:hover{
	color: blue;
}
#profileSlidedown{
	display: none;
   	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   	border: 2px solid #fcba03;
   	background-color: white;
   	position: absolute;
   	padding: 0px;
   	right: 8px;
   	height: 108px;
   	width: 122px;
   	margin-top: 10px;
}
#profileSlidedown li {
   	display: inline-block;
   	border: 1px solid rgb(250,250,250);
   	font-size: 12pt;
   	width: 120px;
   	text-align: center;
   	cursor: pointer;
}
#profileSlidedown li:hover {
	background-color: #f37321;
}
#editProfile{
	background-color: #f37321;
}
.btns ul li {
        list-style: none;
		float: left;
		text-align: center;
        color: #2e3459;
		line-height: 25px;
		text-decoration: none;
		font-size: 18px;
		font-weight: 900;
}
.btns>ul>li {
	margin-right: 10px;
}
#admin{
	display:none;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${sMEM_NO}" != "")
	{	
		if("${sGRADE_NO}" == "0")
		{
			$("#admin").show();
		}
	}
	else
	{
		location.href="main";
	}
	
	var params = $("#form").serialize();
	
	$.ajax({
		url: "getInfo2",
		data: params,
		dataType: "json",
		type: "post",
		success:function(result)
		{
			if(result.msg == "success")
			{
				$("#photoPath").val(result.PHOTO_PATH);
				$("#inputNic").val(result.NIC);
				$("#inputIntro").val(result.INTRO);
			}
			else
			{
				popupText("정보를 가져오는데 실패하였습니다.")
				commonPopup(popupText);
			}
		}, //success end
		error: function(request, status, error) {
			console.log(error);
		} // error end
	}); //ajax end 
	
	var popupText = ""; //팝업 문구변경
	var nicCheck = "";  //닉네임 중복 확인용
	
	$("#nicDbCkBtn").on("click", function(){  //닉네임 중복체크
		$(".popup").remove();
		$(".bg").remove();
		if($.trim($("#inputNic").val()) == "")
		{
			popupText = "닉네임을 입력하세요.";
			commonPopup(popupText);
			$("#inputNic").focus();
			return false;
		}
		
		$("#valueStorage").val($("#inputNic").val());
		
		var params = $("#form").serialize();
		
		$.ajax({
			url: "nicDbCk",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					popupText = "사용 가능한 닉네임입니다.";
					commonPopup(popupText);
					nicCheck = $("#inputNic").val();
				}
				else
				{
					popupText = "사용 불가능한 닉네임입니다.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //nicDbCkBtn click end
	
	$("#nextBtn").on("click", function(){
		if($.trim($("#inputIntro").val()) == "") //소개글 입력 없을 시
		{
			$("#inputIntro").val("안녕하세요~ 잘 부탁드립니다.");
		}
	    /*if($("#photoPath").val() == "")
		{
			$("#photoPath").val(null);
		} 
		
		if($("#photoPath").val() != 1) //사진경로 나중에 넣을것
		{
			// 사진은 선택사항
		}*/
		if($.trim($("#inputNic").val()) == "")
		{
			popupText = "닉네임을 입력하세요.";
			commonPopup(popupText);
			$("#inputNic").focus();
		}
		else if($("#inputNic").val() != nicCheck)
		{
			popupText = "닉네임 중복확인을 해주세요.";
			commonPopup(popupText);
		}
		else
		{
			var params = $("#editInfoForm").serialize();
			
			$.ajax({
				url: "editProfiles",
				data: params,
				dataType:"json",
				type: "post",
				success:function(result)
				{
					var txt = "프로필 업데이트 되었습니다.";
					endPopup(txt)
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		} //if~ else end
	}); //nextBtn click end
	
 	$("#profilePhoto").on("click", function(){
		console.log($("#profileSlidedown").css("display"));
		if($("#profileSlidedown").css("display") == "block")
		{
			$("#profileSlidedown").css("display", "none");
		}
		else
		{
			$("#profileSlidedown").css("display", "block");
		}
	}); //profilePhoto click end
		
	$("#logoutBtn").on("click", function(){
		$.ajax({
			url: "logouts",
			type: "post",
			dataType: "json",
			success: function(result) {
				location.reload();
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} //error end
		}); //ajax end
  	}); //logoutBtn click end
	
	$("#preBtn").on("click", function(){ //이전버튼 클릭
		location.href="main";
	}); //preBtn click end
	
   	$("#travelWriter").on("click", function() {
  		location.href = "travelWriterRank";
  	}); //travelWriter click end
   	
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	}); //clientCenter click end
	
  	$("#admin").on("click", function() {
  		location.href = "memAdmin";
  	}); //admin click end
  	
	$("#editInfo").on("click", function(){
		location.href = "editInfo";
  	}); //editInfo click end
});//document ready end
function commonPopup(txt) //공통적으로 쓰이는 팝업 , txt는 팝업에 들어갈 문자열 
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <div id=\"yesBtn\">예</div>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //yesBtn click end
}
function endPopup(txt) //공통적으로 쓰이는 팝업 , txt는 팝업에 들어갈 문자열 
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <a href=\"main\" id=\"yesBtn\">예</a>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //yesBtn click end
}
</script>
</head>
<body>
<form action="#" id="form">
	<input type="hidden" id="valueStorage" name="storage"/>
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
</form>
<div id="wrap">
         <!-- header부분 고정 -->
         <div id="header">
            <div class="banner">
               <div class="top">
                  <div class="logo_area">
                     <a href="main"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
                     <div class="site_name">우리들의 여행일지</div>
                  </div>
                  <div class="btns"> <!-- 밑에 logins와 연동 -->
                     <ul>
						<li><img alt="bell" src="./resources/images/bell.png" class="bell_icon">
							<div class="timeline">
								<table border="1">
									<colgroup>
										<col width="70px">
										<col width="331.6px">
									</colgroup>
									<tr>
										<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
										<th>[여행일지]오늘도....에 <span>홍길동님</span>이 댓글을 다셨습니다
										</th>
									</tr>

									<tr>
										<th>2시간전 (오후)9:17분</th>
									</tr>

									<tr>
										<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
										<th>[여행일지]이 오늘도.... 에 <span>해리포터님</span>이 댓글을 다셨습니다
										</th>
									</tr>

									<tr>
										<th>3시간전 (오후)8:54분</th>
									</tr>

									<tr>
										<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
										<th>[여행일지]오늘도....에 <span>말포이님</span>이 댓글을 다셨습니다
										</th>
									</tr>

									<tr>
										<th>3시간전 (오후)8:49분</th>
									</tr>

									<tr>
										<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
										<th><span>사우론님</span>이회원님을 팔로우 하셨습니다</th>
									</tr>

									<tr>
										<th>3시간전 (오후)8:45분</th>
									</tr>


									<tfoot>
										<tr>
											<th colspan="2">...더보기</th>
										</tr>
									</tfoot>
								</table>
							</div></li>
							<li><img alt="bookmark" src="./resources/images/bmk.png"></li>
							<li><img alt="프로필" src="./resources/images/profile.png" id="profilePhoto">
								<ul id="profileSlidedown">
									<li>마이 페이지</li>
									<li id="editProfile">프로필 수정</li>
									<li id="editInfo">회원정보 수정</li>
									<li id="logoutBtn">로그아웃</li>
								</ul>
							</li>
						</ul>
                  </div>
               </div> <!-- top end -->
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
            <input type="text" id="search" placeholder="검색">
            <select id="filter">
			   <option value="0" selected="selected">통합검색</option>
			   <option value="1">여행일지</option>
			   <option value="2">해시태그</option>
			   <option value="3">자유게시판</option>
			   <option value="4">닉네임</option>
			</select>
         </div>
		
		<div id="container">
			<div class="profile">[프로필 설정]</div>
			
			<div id="infoWrap">
				<form action="#" id="editInfoForm">
					<div id="photoArea">
						<!-- 사진경로 추가할것 --> <!-- 절대 임시값임!!!!!!!!!!!!! -->
						<input type="hidden" id="photoPath" name="photoPath" value=""/>
						<!-- 이미지 -->
					</div>
					<input type="button" value="사진찾기" id="findPhotoBtn"/>
					
					<div class="title">닉네임</div>
					<input type="text" placeholder="닉네임을 입력하세요." id="inputNic" name="inputNic"/>
					<input type="button" value="중복확인" id="nicDbCkBtn"/>
					
					<div class="title">소개글</div>
					<input type="text" placeholder="안녕하세요~ 잘 부탁드립니다." id="inputIntro" name="inputIntro"/>
					<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
				</form>
			</div> <!-- infoWrap end -->
			
			<div id="btnWrap">
				<input id="preBtn" type="button" value="Prev"/>
				<input id="nextBtn" type="button" value="Next"/>
			</div> <!-- btnWrap -->
		</div><!-- container end -->
		<div id="footer">
            <p>
               POPJOURNEY<br/>
               GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
               Copyright© POPJOURNEY. All Rights Reserved.
            </p>
        </div>  
   </div> <!-- wrap end -->      
</body>
</html>