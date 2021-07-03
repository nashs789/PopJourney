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
   min-width: 1280px;
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
.btns { 
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
}
.login_btn:hover{
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
.join{
	text-align: center;
	width: 650px;
	font-size: 18pt;
	font-weight: bold;
	margin: 50px auto 10px auto;
}
.milestone{
	width: 650px;
	margin: 50px auto;
	position: relative;
	padding-left: 25px;
}
.milestone_title{
	width: 120px;
	height: 50px;
	display: inline-block;
	vertical-align: top;
	border: 3px solid #2e3459;
	border-radius: 5px;
	font-weight: bold;
	text-align: center;
	line-height: 50px;
	margin-top: 0px;
	background-color: #EAEAEA;
}
#milestone_on{
	color: white;
	background-color: #ff3333;
}
.arrow_img{
	display: inline-block;	
	vertical-align: top;
}
.arrow_img img{
	width:30px;
	height: 50px;
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
#codeWrap{
	width: 650px;
	margin: 0px auto;
    display: none; 
}
#inputCode{
	margin-top: 20px;
	width: 305px;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	var popupText = ""; //팝업 문구변경
	var IDCheck = "";  //아이디 중복 확인용
	var pattern = /[~!@\#$%<>^&*]/; //특수문자 확인용 정규식
	
	$("#IDDbCkBtn").on("click", function(){  //아이디 중복체크
		$(".popup").remove();
		$(".bg").remove();
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
			$("#inputID").focus();
			return false;
		}
		
		$("#valueStorage").val($("#inputID").val());
		
		var params = $("#Form").serialize();
		
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
	
	$("#inputPhone").on("keypress", function(){  //핸드폰 번호 숫자만 받기
		$(".popup").remove();
		$(".bg").remove();
		
		if(event.keyCode < 48 || event.keyCode > 57)
		{
			popupText = "숫자만 입력하세요.";
			commonPopup(popupText);
			return false;
		}
	}); //inputPhone keypress end
	
	$("#selectDomain").change(function(){  //도메인 셀렉터 선택시 텍스트창으로 값 이동
		$("#inputDomain").val("");
		$("#inputDomain").val($("#selectDomain").val());
	}); //selectDomain change end
	
	$("#nextBtn").on("click", function(){      //다음 버튼을 눌렀을때 필수 입력필드가 전부 채워졌는지 확인
		if($.trim($("#inputName").val()) == "")
		{
			popupText = "이름을 입력하세요.";
			commonPopup(popupText);
			$("#inputName").focus();
		}
		else if($("#selectYear").val() == "연도")
		{
			popupText = "년도를 입력하세요.";
			commonPopup(popupText);
			$("#selectYear").focus(); 

		}
		else if($("#selectMonth").val() == "월")
		{
			popupText = "날짜를 입력하세요.";
			commonPopup(popupText);
			$("#selectMonth").focus(); 
		}
		else if($("#selectDay").val() == "일")
		{
			popupText = "날짜를 입력하세요.";
			commonPopup(popupText);
			$("#selectDay").focus(); 
		}
		else if($(':radio[name="sex"]:checked').val() == 0)
		{
			popupText = "성별을 선택하세요.";
			commonPopup(popupText);
			$(':radio[name="sex"]:checked').focus();
		} 
		else if($.trim($("#inputID").val()) == "")
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
		else if(!pattern.test($("#inputPW").val()))
		{
			popupText = "특수문자를 넣어주세요.";
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
		else if($.trim($("#inputEmail").val()) == "")
		{
			popupText = "이메일을 입력하세요.";
			commonPopup(popupText);
			$("#inputEmail").focus();
		}
		/*else if($("#selectDomain").val() == 0)
		{
			if($.trim($("#inputDomain").val()) =="")
			{
				popupText = "이메일 주소를 입력하세요.";
				commonPopup(popupText);
				$("#inputDomain").focus();
			}
			else if($.trim($("#inputCode").val()) == "")
			{
				popupText = "이메일 인증을 해주세요.";
				commonPopup(popupText);
				$("#inputKeyCode").focus();
			}
		}*/
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
			$("#infoForm").submit();
		}//if ~ else end
	}); //nextBtn click end
	
	$("#sendCode").on("click", function(){
		$("#codeWrap").show();
	}); //sendCode click end
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
<form action="#" id="Form">
	<input type="hidden" id="valueStorage" name="storage"/>
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
			<div class="join">[회원가입]</div>
		
			<div class="milestone">
				<div class="milestone_title">
					약관 동의
				</div>
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title" id="milestone_on">
					정보입력
				</div>	
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title">
					프로필 설정
				</div>
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title">
					가입 완료
				</div>				
			</div>
			
			<form action="writeProfile" id="infoForm" method="post">
				<div id="infoWrap">
					<div class="title">이름</div>
					<input type="text" id="inputName" name="inputName" placeholder="이름를 입력해 주세요."/> 
					
					<div class="title">생일/성별</div>
					<select id="selectYear" name="inputYear">
						<option>연도</option>
						<c:forEach var="i" begin="1900" end="2021" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectMonth" name="inputMonth">
						<option>월</option>
						<c:forEach var="i" begin="1" end="12" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectDay" name="inputDay">
						<option>일</option>
						<c:forEach var="i" begin="1" end="31" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select><br/>
					
					<div id="radioWrap">
						<label><input type="radio" name="sex" value="0" checked/>선택없음</label>
						<label><input type="radio" name="sex" value="1"/>남자</label>
						<label><input type="radio" name="sex" value="2"/>여자</label>
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
							<option value="1">KT</option>
							<option value="2">SKT</option>
							<option value="3">LG</option>
						</select>
						<input type="text" maxlength="8" placeholder="전화번호 8자리(010 / '-'제외)" id="inputPhone" name="inputPhone"/>
					</div>
				
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
						<input type="button" value="코드발송" id="sendCode"/>
						<div id="codeWrap">
							<input type="text" id="inputCode" name="inputCode" placeholder="인증번호를 입력하세요"/>
					  	    <input type="button" value="확 인"/>
					    	<input type="button" value="재발송"/>
						</div>
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