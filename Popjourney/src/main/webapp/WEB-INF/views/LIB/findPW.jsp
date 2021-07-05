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
#loginBtn {
   float: right;
   margin: 20px 20px 0px 5px;
   width: 50px;
   height: 30px;
   background-color: #2e3459;
   font-weight: bold;
   font-size: 12px;
   color: #FFFFFF;
   text-align: center;
   border-radius: 0px;
}
#loginBtn:hover{
   color: #FFFFFF;
   background-color: #f37321;
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
.findID{
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
input[type='text']{
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
select{
	height: 36px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputEmail, #inputDomain{
	width: 180px;
}
#txtAt{
	font-weight: bold;
	font-size: 12pt;
}
#selectDomain{
	width: 100px;
}
#selectKeyword{
	width: 506px;
	margin-top: 15px;
}
#inputKeyword, #inputName, #inputID{
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
.popup2 {
   display: inline-block;
   width: 300px;
   height: 300px;
   background-color: #fcfcfc;
   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   position: fixed;
   top: calc(50% - 150px); 
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
#yesBtn, #yesBtn2{
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
#yesBtn:hover, #yesBtn2:hover {
   background-color: #f37321;
   color: white;
}
.bg, .bg2 {
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
#inputPWOnPopup, #inputRePWOnPopup{
	height: 30px;
	margin: 0px 20px;
	width: 260px;
	padding: 0px;
}
.title2{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
	margin-left: 20px;
	margin-bottom: 10px;
}
#cancelImg{
	margin-top: 10px;
	width: 30px;
	margin-left: 135px;
	cursor: pointer;
}
#inputID2, #inputPW2 {
   float: right;
   width: 100px;
   height: 25px;
   margin-top: 20px;
   margin-left: 5px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@\#$%<>^&*]/; 
	
	$("#preBtn").on("click", function(){
		location.href="main";
	}); //preBtn click end
	
	$("#selectDomain").change(function(){  //도메인 셀렉터 선택시 텍스트창으로 값 이동
		$("#inputDomain").val("");
		$("#inputDomain").val($("#selectDomain").val());
	}); //selectDomain change end
	
	$("#nextBtn").on("click", function(){
		if($.trim($("#inputName").val()) == "")
		{
			popupText = "이름을 입력하세요.";
			commonPopup(popupText);
			$("#inputName").focus();
		}
		else if(pattern3.test($("#inputName").val()))
		{
			popupText = "이름에 특수문자 사용 불가능합니다.";
			commonPopup(popupText);
			$("#inputName").val("");
			$("#inputName").focus();
		}
		else if(pattern1.test($("#inputName").val()))
		{
			popupText = "이름에 숫자는 사용 불가능합니다.";
			commonPopup(popupText);
			$("#inputName").val("");
			$("#inputName").focus();
		}
		else if($.trim($("#inputID").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
			$("#inputID").focus();
		}
		else if(pattern3.test($("#inputID").val()))
		{
			popupText = "아이디에 특수문자는 불가능합니다.";
			commonPopup(popupText);
			$("#inputID").focus();
			$("#inputID").val("");
			return false;
		}
		else if($.trim($("#inputEmail").val()) == "")
		{
			popupText = "이메일을 입력하세요.";
			commonPopup(popupText);
			$("#inputEmail").focus();
		}
		else if($.trim($("#inputDomain").val()) == "")
		{
			popupText = "이메일 주소를 입력하세요.";
			commonPopup(popupText);
			$("#inputDomain").focus();
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
			var params = $("#infoForm").serialize();
			
			$.ajax({
				url: "findPWs",
				data: params,
				dataType:"json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						findPWPopup(result.MEM_NO);
					}
					else
					{
						popupText = "일치하는 정보가 없습니다.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		} // if ~ else end
	}); //nextBtn click end
	
	$("#inputPW2, #inputID2").on("keypress", function(){
		$(".popup").remove();
		$(".bg").remove();
		if(event.keyCode == 13)
			$("#loginBtn").click();
	});
	
	$("#loginBtn").on("click", function(){  //로그인 버튼 클릭
		if($.trim($("#inputID2").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
		}
		else if($.trim($("#inputPW2").val()) == "")
		{
			popupText = "비밀번호를 입력하세요.";
			commonPopup(popupText);
		}
		else
		{
			var params = $("#loginForm").serialize();
			
			$.ajax({
				url: "logins",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						location.href="main";
					}
					else
					{
						popupText = "ID와 PW가 일치하지 않습니다.";
						commonPopup(popupText);
						$("#inputID2").val("");
						$("#inputPW2").val("");
					} 
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		}// if ~ else end
	}); //loginBtn click end
}); //document ready end
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
function findPWPopup(MEM_NO)
{
	var html = "";
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@\#$%<>^&*]/; 
	                                 
	html += "<div class=\"popup2\">";
	html += "	<div class=\"popup_entity_txt\">[비밀번호변경]</div>";
	html += "    <div class=\"btn_list\">";
	html += "			<div class=\"title2\">비밀번호</div>";
	html += "			<input type=\"password\" id=\"inputPWOnPopup\" placeholder=\"8~32자리 특수문자포함 입력해주세요\" minlength=\"8\" maxlength=\"32\"/>";
	html += "			<div class=\"title2\">비밀번호 재확인</div>";
	html += "		    <input type=\"password\" id=\"inputRePWOnPopup\" placeholder=\"비밀번호를 재입력 해주세요.\"  minlength=\"8\" maxlength=\"32\"/>";
	html += "       <div id=\"yesBtn2\">확인</div>";
	html += "       <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html += "    </div>";
	html += "</div>";
	html += "<div class=\"bg2\"></div>";

	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup2").remove();
		$(".bg2").remove();
	}); //cancelImg click end
	
	$("#yesBtn2").on("click", function(){
		if($.trim($("#inputPWOnPopup").val()) == "")
		{
			popupText = "비밀번호를 입력하세요.";
			commonPopup(popupText);
			$("#inputPWOnPopup").focus();
		}
		else if($.trim($("#inputRePWOnPopup").val()) == "")
		{
			popupText = "비밀번호 재확인을 입력하세요.";
			commonPopup(popupText);
			$("#inputRePWOnPopup").focus();
		}
		else if($("#inputPWOnPopup").val() != $("#inputRePWOnPopup").val())
		{
			popupText = "비밀번호가 서로 일치하지 않습니다.";
			commonPopup(popupText);
			resetPW2();
		}
		else if($("#inputPWOnPopup").val().length < 8) //minlength가 안먹을경우를 대비한 8글자 미만 비밀번호 거르기
		{
			popupText = "비밀번호를 8~32자리로 해주세요.";
			commonPopup(popupText);
			resetPW2();
		}
		else if(!pattern1.test($("#inputPWOnPopup").val())||!pattern2.test($("#inputPWOnPopup").val())||!pattern3.test($("#inputPWOnPopup").val()))
		{
			popupText = "숫자/영문/특수문자를 조합하세요.";
			commonPopup(popupText);
			resetPW2();
		}
		else
		{
			$("#MEM_NO").val(MEM_NO);
			$("#PW").val($("#inputPWOnPopup").val());
			
			var params = $("#infoForm2").serialize();
			
			$.ajax({
				url: "updateInputPWs",
				data: params,
				dataType:"json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						location.href="main";
					}
					else if(result.msg == "failed")
					{
						popupText = "변경에 실패하였습니다.";
						commonPopup(popupText);
					}
					else
					{
						popupText = "변경중 에러가 발생했습니다.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		} //if ~ else end
	}); //yesBtn click end
}          
function resetPW() //비밀번호 조건이 안맞을 때 초기화
{
	$("#inputPW").val("");
	$("#inputRePW").val("");
	$("#inputPW").focus();
}
function resetPW2() //팝업에 비밀번호 조건이 안맞을 때 초기화
{
	$("#inputPWOnPopup").val("");
	$("#inputRePWOnPopup").val("");
	$("#inputPWOnPopup").focus();
}
</script>
</head>
<body>
<form action="" id="infoForm2">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value=""/>
	<input type="hidden" id="PW" name="inputPW" value=""/>
</form>
<div id="wrap">
         <!-- header부분 고정 -->
         <div id="header">
            <div class="banner">
               <div class="top">
                  <div class="logo_area">
                     <a href="#"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
                     <div class="site_name">우리들의 여행일지</div>
                  </div>
                  <div class="logins">
                     <div class="sub_login1">
                        <form action="#" id="loginForm">
	                        <input type="button" id="loginBtn" value="로그인" />
	                        <input type="password" id="inputPW2" name="inputPW" placeholder="PW" />
	                        <input type="text" id="inputID2" name="inputID" placeholder="ID" />
                        </form>
                     </div>
                     <div class="sub_login2">
                        <span>회원가입</span>
                        <span>ID/PW 찾기</span>
                     </div>
                  </div>
               </div>
            </div>
            <nav class="menu">
               <ul>
                  <li>여행게시판</li>
                  <li>자유게시판</li>
                  <li>여행작가</li>
                  <li>고객센터</li>
                  <li>내부관리자</li>
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
			<div class="findID">[비밀번호 찾기]</div>
			
			<form action="#" id="infoForm">
				<div id="infoWrap">
					<div class="title">이름</div>
					<input type="text" id="inputName" name="inputName" placeholder="이름를 입력해 주세요."/> 
					
					<div class="title">아이디</div>
					<input type="text" id="inputID" name="inputID" placeholder="아이디 입력를 입력해 주세요."/> 
				
					<div class="title">이메일</div>
					<div>
						<input type="text" id="inputEmail" name="inputEmail"/>
						<span id="txtAt">@</span>
						<input type="text" id="inputDomain" name="inputDomain"/>
						
						<select id="selectDomain" name="selectDomain">
							<option value="">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
						</select>
					</div>
					
					<div class="title">키워드</div>
					<select id="selectKeyword" name="selectKeyword">
							<option value="0">키워드 질문을 골라주세요</option>
							<option value="1">첫 사랑의 이름은?</option>
							<option value="2">아버지의 성함은?</option>
							<option value="3">내가 다녔던 초등학교 이름은?</option>
					</select>
					<input type="text" id="inputKeyword" name="inputKeyword" placeholder="키워드를 입력하세요."/>
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