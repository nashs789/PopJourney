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
	width: 410px;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#sendCode").on("click", function(){
		$("#codeWrap").show();
	}); //sendCode click end
});//document ready end 
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
			
			<div id="infoWrap">
				<div class="title">이름</div>
				<input type="text" id="inputName" placeholder="이름를 입력해 주세요."/> 
				
				<div class="title">생일/성별</div>
				<select id="selectYear">
					<option>연도</option>
					<c:forEach var="i" begin="1900" end="2021" step="1" >
						<option value="${i}}">${i}</option>
					</c:forEach>
				</select>
				<select id="selectMonth">
					<option>월</option>
					<c:forEach var="i" begin="1" end="12" step="1" >
						<option value="${i}}">${i}</option>
					</c:forEach>
				</select>
				<select id="selectDay">
					<option>일</option>
					<c:forEach var="i" begin="1" end="31" step="1" >
						<option value="${i}}">${i}</option>
					</c:forEach>
				</select><br/>
				
				<div id="radioWrap">
					<label><input type="radio" name="sex" value="0" checked/>선택없음</label>
					<label><input type="radio" name="sex" value="1"/>남자</label>
					<label><input type="radio" name="sex" value="2"/>여자</label>
				</div>
			
				<div class="title">아이디</div>
				<input type="text" id="inputID" placeholder="아이디 입력를 입력해 주세요."/> 
				<input type="button" value="중복확인"/>
				
				<div class="title">비밀번호</div>
				<input type="password" id="inputPW" placeholder="8~32자리 특수문자포함 입력해주세요"/>
				
				<div class="title">비밀번호 재확인</div>
				<input type="password" id="inputRePW" placeholder="비밀번호를 재입력 해주세요."/>
				
				<div class="title">전화번호</div>
				
				<div>
					<select>
						<option>--통신사--</option>
						<option>KT</option>
						<option>SKT</option>
						<option>LG</option>
					</select>
					<input type="text" placeholder="전화번호 8자리" id="inputPhone"/>
				</div>
			
				<div class="title">이메일</div>
				<div>
					<input type="text" id="inputEmail"/>
					<span id="txtAt">@</span>
					<input type="text" id="inputDomain"/>
					
					<select id="selectDomain">
						<option>직접입력</option>
						<option>naver.com</option>
						<option>nate.com</option>
						<option>gmail.com</option>
					</select>
					<input type="button" value="코드발송" id="sendCode"/>
					<div id="codeWrap">
						<input type="text" id="inputCode" placeholder="인증번호를 입력하세요"/>
				  	    <input type="button" value="확 인"/>
				    	<input type="button" value="재발송"/>
					</div>
				</div>
				
				<div class="title">키워드</div>
				<select id="selectKeyword">
						<option>첫 사랑의 이름은?</option>
						<option>아버지의 성함은?</option>
						<option>내가 다녔던 초등학교 이름은?</option>
				</select>
				<input type="text" id="inputKeyword" placeholder="키워드를 입력하세요."/>
			</div>
			
			<div id="btnWrap">
				<input id="preBtn" type="button" value="Prev"/>
				<input type="button" value="Next"/>
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