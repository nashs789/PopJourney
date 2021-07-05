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
#timelineTxt{
	width: 650px;
	margin: 50px auto 0px auto;
	background-color: #2e3459;
	text-align: center;
	color: white;
	text-shadow: 1px 1px 3px #FFF;
	font-size: 18pt;
	font-family: cursive;
}
#timelineBanner{
	width: 650px;
	height: 40px;
	margin: 0px auto;
	border-collapse: collapse;
	padding-top: 10px;
	border-top: 3px solid #2e3459;
	border-bottom: 3px solid #2e3459;
}
#timelineBannerTable thead tr th{
	padding: 0px;
	border-radius: 20px;
	color: white;
	background-color: #2e3459;
	border: 2px solid #2e3459;
}
#timelineTable{
	width: 650px;
	margin: 0px auto;
    border: 1px solid #e5e5e5;
    border-bottom: 0px;
	border-radius: 2px;
    box-sizing: border-box;	
}
#timelineTable table{
	border-collapse: collapse;
}
.timeline{
	height: 100px;
}
#timelineTable table tbody tr{
	background-color: red; /* 임시 */
}
#timelineTable table tbody tr:hover{
	opacity: 0.8;
}
#more{
	width: 650px;
	margin: 0px auto 50px auto;
	color: white;
	background-color: #2e3459;
	text-align: center;
	padding: 3px 0px;
	cursor: pointer;
}
#more:hover{
	opacity: 0.8;
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
         	<div id="timelineTxt">Timeline</div>
         	<div id="timelineBanner">
         		<table id="timelineBannerTable">
         			<colgroup>
         				<col width="150" />
						<col width="400" />
						<col width="100" />
         			</colgroup>
         			<thead>
         				<tr>
        					<th>이미지</th>
        					<th>내용</th>
        					<th>날짜</th>    
         				</tr>
         			</thead>
         		</table>
         	</div>
         	
         	<div id="timelineTable">
         		<table>
         			<colgroup>
         				<col width="151" />
						<col width="400" />
						<col width="101" />
         			</colgroup>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         		<tbody>
	         			<tr class="timeline">
	         				<th>이미지</th>
	       					<th>내용</th>
	       					<th>시간</th>
	         			</tr>
	         		</tbody>
	         	</table>
         	</div> <!-- timelineWrap end -->
         	
         	<div id="more">더 보기...(몇개남음)</div>
         	
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