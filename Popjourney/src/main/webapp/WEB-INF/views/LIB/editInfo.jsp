<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
.join{
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
input[type='text'], input[type='password']{
	margin-top: 15px;
	height: 30px;
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
input[type='text']:focus, input[type='password']:focus,
select:focus{
	outline-color: #fcba03;
}
#selectYear, #selectMonth, #selectDay{
	width: 165px;
}
#radioWrap {
  display: inline-flex;
  align-items: center;
}
#radioWrap{
	width: 650px;
	margin: 10px auto;
}
label{
	font-size: 12pt;
	font-weight: bold;
}
#inputID{
	width: 400px;
}
#inputPW, #inputRePW{
	width: 498px;
}
select{
	height: 36px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputEmail, #inputDomain{
	width: 140px;
}
#txtAt{
	font-weight: bold;
	font-size: 12pt;
}
#inputPhone{
	width: 434px;
}
#selectDomain{
	width: 80px;
}
#selectKeyword{
	width: 506px;
	margin-top: 15px;
}
#inputKeyword, #inputName{
	width: 498px;
}
#inputKeyword{
	margin-top: 20px;
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
#editInfo{
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
	
	var popupText = "";
	var IDCheck = "";  //아이디 중복 확인용
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@\#$%<>^&*]/; //특수문자 확인용 정규식
	
	var params = $("#form").serialize();

	$.ajax({
		url: "getInfo",
		data: params,
		dataType: "json",
		type: "post",
		success:function(result)
		{
			if(result.msg == "success")
			{
				$("#inputName").val(result.NAME);
				$("#selectYear").val(result.YEAR);
				$("#selectMonth").val(result.MONTH);
				$("#selectDay").val(result.DAY);
				$(":radio[name='sex'][value='" + result.SEX + "']").attr('checked', true);
				$("#inputID").val(result.ID);
				$("#inputPW").val(result.PW);
				$("#inputRePW").val(result.PW);
				$("#inputPhone").val(result.PHONE);
				$("#inputEmail").val(result.EMAIL);
				$("#inputDomain").val(result.DOMAIN);
				$("#selectKeyword").val(result.KEYWORD_NO);
				$("#inputKeyword").val(result.KEYWORD);
				$("#sendCode").css("background-color", "#2e3459");
				$("#sendCode").css("color", "white");
				$("#sendCode").css("cursor", "default");
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
	
	$("#IDDbCkBtn").on("click", function(){  //아이디 중복체크
		$(".popup").remove();
		$(".bg").remove();
		if($.trim($("#inputID").val()) == "") //아이디가 비어있을경우
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
			$("#inputID").focus();
			return false;
		}
		
		if(pattern3.test($("#inputID").val())) //아이디에 특수문자 금지
		{
			popupText = "아이디에 특수문자는 불가능합니다.";
			commonPopup(popupText);
			$("#inputID").focus();
			$("#inputID").val("");
			return false;
		}
		
		$("#valueStorage").val($("#inputID").val());
		
		var params = $("#form").serialize();
		
		$.ajax({
			url: "IDDbCk",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					popupText = "사용 가능한 아이디입니다.";
					commonPopup(popupText);
					IDCheck = $("#inputID").val();
				}
				else
				{
					popupText = "사용 불가능한 아이디입니다.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //IdDbCkBtn click end
	
	$("#nextBtn").on("click", function(){      //다음 버튼을 눌렀을때 필수 입력필드가 전부 채워졌는지 확인
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
			$("#inputID").focus();
		}
 		else if($("#inputID").val() != IDCheck)
		{
			popupText = "아이디 중복확인을 해주세요.";
			commonPopup(popupText);
		} 
		else if($.trim($("#inputPW").val()) == "")
		{
			popupText = "비밀번호를 입력하세요.";
			commonPopup(popupText);
			$("#inputPW").focus();
		}
		else if($.trim($("#inputRePW").val()) == "")
		{
			popupText = "비밀번호 재확인을 입력하세요.";
			commonPopup(popupText);
			$("#inputRePW").focus();
		}
		else if($("#inputPW").val() != $("#inputRePW").val())
		{
			popupText = "비밀번호가 서로 일치하지 않습니다.";
			commonPopup(popupText);
			resetPW();
		}
		else if($("#inputPW").val().length < 8) //minlength가 안먹을경우를 대비한 8글자 미만 비밀번호 거르기
		{
			popupText = "비밀번호를 8~32자리로 해주세요.";
			commonPopup(popupText);
			resetPW();
		}
		else if(!pattern1.test($("#inputPW").val())||!pattern2.test($("#inputPW").val())||!pattern3.test($("#inputPW").val()))
		{
			popupText = "숫자/영문/특수문자를 조합하세요.";
			commonPopup(popupText);
			resetPW();
		}
		else if($("#selectTelcom").val() == 0)
		{
			popupText = "통신사를 선택하세요";
			commonPopup(popupText);
			$("#selectTelcom").focus();
		}
		else if($.trim($("#inputPhone").val()) == "")
		{
			popupText = "전화번호를 입력하세요.";
			commonPopup(popupText);
			$("#inputPhone").focus();
		}
		 else if($.trim($("#inputPhone").val().length) != 8)
		{
			popupText = "8자리를 입력하세요";
			commonPopup(popupText);
			$("#inputPhone").focus();
		} 
		else if($.trim($("#inputPhone").val().indexOf('-')) == 0)
		{
			popupText = "-를 제외하고 입력하세요.";
			commonPopup(popupText);
			$("#inputPhone").focus();
		}
 		else if($("#selectKeyword").val() == 0)
		{
			console.log($("#selectKeyword").val());
			popupText = "키워드를 선택 하세요.";
			commonPopup(popupText);
			$("#selectKeyword").focus();
		}
		else if($.trim($("#inputKeyword").val()) == "")
		{
			popupText = "키워드를 입력하세요.";
			commonPopup(popupText);
			$("#inputKeyword").focus();
		} 
		else
		{
			var params = $("#editInfoForm").serialize();
			
			$.ajax({
				url: "editInfos",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						location.href="main";
					}
					else if(result.msg == "failed")
					{
						popupText = "수정에 실패하였습니다.";
						commonPopup(popupText);
					}
					else
					{
						popupText = "진행도중 에러가 발생했습니다.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		}//if ~ else end
	}); //nextBtn click end
	
	$("#preBtn").on("click", function(){ //이전버튼 클릭
		location.href = "main";
	}); //preBtn click end
	
/* 	$("#profilePhoto").on({
		mouseover: function(){
			$("#profileSlidedown").css("display", "block");	
		},
		mouseleave:function(){
			$("#profileSlidedown").css("display", "none");
		},
		click:function(){
			$(this).off("mouseleave");
		}
	}); //profilePhoto on end */
	
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
	
   	$("#travelWriter").on("click", function() {
  		location.href = "travelWriterRank";
  	}); //travelWriter click end
   	
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	}); //clientCenter click end
	
  	$("#admin").on("click", function() {
  		location.href = "memAdmin";
  	}); //admin click end
  	
  	$("#editProfile").on("click", function(){
  		location.href = "editProfile";
  	}); //editProfile click end
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
function resetPW() //비밀번호 조건이 안맞을 때 초기화
{
	$("#inputPW").val("");
	$("#inputRePW").val("");
	$("#inputPW").focus();
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
                  <li>여행게시판</li>
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
			<div class="join">[회원정보 수정]</div>
			
			<form action="#" id="editInfoForm">
				<div id="infoWrap">
					<div class="title">이름</div>
					<input type="text" id="inputName" name="inputName" placeholder="이름를 입력해 주세요." disabled="disabled"/> 
					
					<div class="title">생일/성별</div>
					<select id="selectYear" name="inputYear" disabled="disabled">
						<option>연도</option>
						<c:forEach var="i" begin="1900" end="2021" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectMonth" name="inputMonth" disabled="disabled">
						<option>월</option>
						<c:forEach var="i" begin="1" end="12" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectDay" name="inputDay" disabled="disabled">
						<option>일</option>
						<c:forEach var="i" begin="1" end="31" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select><br/>
					
					<div id="radioWrap">
						<label><input type="radio" name="sex" value="0" checked disabled="disabled"/>선택없음</label>
						<label><input type="radio" name="sex" value="1" disabled="disabled"/>남자</label>
						<label><input type="radio" name="sex" value="2" disabled="disabled"/>여자</label>
					</div>
				
					<div class="title">아이디</div>
					<input type="text" id="inputID" name="inputID" placeholder="아이디 입력를 입력해 주세요."/>
					<input type="button" id="IDDbCkBtn" value="중복확인"/>
					
					<div class="title">비밀번호</div>
					<input type="password" id="inputPW" name="inputPW" placeholder="8~32자리 특수문자포함 입력해주세요 " minlength="8" maxlength="32"/>
					
					<div class="title">비밀번호 재확인</div>
					<input type="password" id="inputRePW" name="inputRePW" placeholder="비밀번호를 재입력 해주세요."  minlength="8" maxlength="32"/>
					
					<div class="title">전화번호</div>
					
					<div>
						<select id="selectTelcom" name="selectTelcom">
							<option value="0">통신사</option>
							<option value="KT">KT</option>
							<option value="SKT">SKT</option>
							<option value="LG">LG</option>
						</select>
						<input type="text" maxlength="8" placeholder="전화번호 8자리(010 / '-'제외)" id="inputPhone" name="inputPhone"/>
					</div>
				
					<div class="title">이메일</div>
					<div>
						<input type="text" id="inputEmail" name="inputEmail" disabled="disabled"/>
						<span id="txtAt">@</span>
						<input type="text" id="inputDomain" name="inputDomain" disabled="disabled"/>
						
						<select id="selectDomain" name="selectDomain" disabled="disabled">
							<option value="">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
						</select>
						<input type="button" value="코드발송" id="sendCode" disabled="disabled"/>
					</div>
					
					<div class="title">키워드</div>
					<select id="selectKeyword" name="selectKeyword">
							<option value="0">키워드 질문을 골라주세요</option>
							<option value="1">당신의 첫 사랑의 이름은?</option>
							<option value="2">기분이 우울할 때 듣는 노래 제목은?</option>
							<option value="3">좋아하는 소설의 이름은?</option>
							<option value="4">감명깊게 본 영화 이름은</option>
							<option value="5">가장 존경하는 사람의 이름은?</option>
							<option value="6">나에게 가장 큰 의미가 있는 장소는?</option>
							<option value="7">내가 좋아하는 과자 이름은?</option>
							<option value="8">나의 직업은?</option>
							<option value="9">나의 버켓리스트 목록 1번은</option>
							<option value="10">당신이 다녔던 초등학교는 어딘가요?</option>
					</select>
					<input type="text" id="inputKeyword" name="inputKeyword" placeholder="키워드를 입력하세요."/>
					<input type="hidden" name="MEM_NO" value="${sMEM_NO}"/>
				</div>
			</form>
			
			<div id="btnWrap">
				<input id="preBtn" type="button" value="Prev"/>
				<input id="nextBtn" type="button" value="Next"/>
			</div>
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