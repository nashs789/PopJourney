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
	margin-top: 50px;
	width: 200px;
	margin-left: 550px;
	font-size: 18pt;
	font-weight: bold;
}
.milestone{
	width: 800px;
	margin-left: 300px;
	margin-top: 50px;
	position: relative;
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
	margin-top: 80px;
	margin-left: 300px;
}
input[type='text'], input[type='password']{
	width: 200px;
	height: 30px;
	margin-top: 15px;
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
	margin-top: 10px;
	font-size: 14pt;
}
#inputAddressDetail{
	width: 400px;
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
					개인정보 입력
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
				<div class="title">아이디</div>
				<input type="text" class="input"/> 
				<input type="button" value="중복확인"/>
				
				<div class="title">비밀번호</div>
				<span><input type="password"/></span>
				<span class="pw_condition">(숫자 / 소문자 / 대문자 사용 가능)</span>
				
				<div class="title">비밀번호 재확인</div>
				<input type="password"/>
				
				<div class="title">전화번호</div>
				
				<div>
					<select>
						<option>010</option>
						<option>112</option>
						<option>114</option>
					</select>
					
					<span>-</span>
					<input type="text" maxlength="4"/>
					<span>-</span>
					<input type="text" maxlength="4"/>
					
					<select>
						<option>--통신사--</option>
						<option>KT</option>
						<option>SKT</option>
						<option>LG</option>
					</select>
				</div>
			
				<div class="title">이메일</div>
				<div>
					<input type="text"/>
					<span>@</span>
					<input type="text"/>
					
					<select>
						<option>--직접입력--</option>
						<option>naver.com</option>
						<option>nate.com</option>
						<option>gmail.com</option>
					</select>
					<input type="button" value="코드발송"/>
					<input type="button" value="재발송"/>
					<br/><br/>
					
					<input type="text" placeholder="인증번호를 입력하세요"/>
				    <input type="button" value="확 인"/>
				</div>
				
				<div class="title">키워드</div>
				<input type="text"/>
				<select>
						<option>첫 사랑의 이름은?</option>
						<option>아버지의 성함은?</option>
						<option>내가 다녔던 초등학교 이름은?</option>
				</select>
				
				<div class="title">주소(선택사항)</div>
				<input type="text"/>
				<input type="button" value="상세검색"/>
				
				<div class="title">상세주소(선택사항)</div>
				<input type="text" id="inputAddressDetail"/>
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