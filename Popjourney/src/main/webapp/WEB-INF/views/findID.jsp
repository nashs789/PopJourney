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
#inputID, #inputPW {
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
   cursor: pointer;
}
#yesBtn:hover {
   background-color: #f37321;
   color: white;
}
.bg {
	display: inline-block;
	width: 100%;
	height: 927.4px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
}
.popup2 {
   display: inline-block;
   width: 600px;
   height: 180px;
   background-color: #fcfcfc;
   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   position: fixed;
   top: calc(50% - 75px); 
   left: calc(50% - 300px); 
   z-index: 500;
   font-size: 16pt;
   border-radius: 10px;
   font-size: 0px;
   border: 0px;
}
.list{
	font-size: 12pt;
}
#listTable{
	text-align: center;
}
#listTable tr{
	height: 35px;
}
#cancelImg{
	margin-top: 20px;
	width: 40px;
	margin-left: 280px;
	cursor: pointer;
}
.send_finish{
	display: none;
	color: red;
	padding-bottom: 3px;
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
				url: "findIDs",
				data: params,
				dataType:"json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						findIDPopup(result.ID, result.NAME);
					}
					else
					{
						popupText = "일치하는 아이디가 없습니다.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		} // if ~ else end
	}); //nextBtn click end
	
	$("#loginBtn").on("click", function(){  //로그인 버튼 클릭
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
		}
		else if($.trim($("#inputPW").val()) == "")
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
						location.href="main";
					else
					{
						popupText = "ID와 PW가 일치하지 않습니다.";
						commonPopup(popupText);
						$("#inputID").val("");
						$("#inputPW").val("");
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
function findIDPopup(ID, name)
{
	var html = "";
	
	html+="  <div class=\"popup2\">";
	html+=" 	   <div class=\"popup_entity_txt\">[아이디 이메일 전송]</div>";
	html+="      <div class=\"list\">";
	html+="	       <table id=\"listTable\">";
	html+="		       	<colgroup>";
	html+="					<col width=\"360\" />";
	html+="					<col width=\"60\" />";
	html+="					<col width=\"80\" />";
	html+="				</colgroup>";
	html+="				<thead>";
	html+="	       			<tr>";
	html+="	       				<th>아이디</th>";
	html+="	       				<th>이름</th>";
	html+="	       			</tr>";
	html+="	       		</thead>";
	html+="	       		<tbody>";
	html+="	       			<tr>";
	html+="	       				<td>"+ ID  +"</td>";
	html+="	       				<td>"+ name +"</td>";
	html+="	       				<td><input type=\"button\" class=\"send_btn\" value=\"전송\"/></td>";
	html+="						<td class=\"send_finish\">전송완료</td>";
	html+="	       			</tr>";
	html+="	       		</tbody>";
	html+="	       	</table>";
	html+="      </div>";
	html+="      <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html+=" </div>";
	html+=" <div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("table").on("mouseover", ".send_btn", function(){
		$(this).parent().parent().children(":nth-child(1)").css("background-color", "#d1e0e0");
	}); //table send_btn mouseover end 
	
	$("table").on("mouseout", ".send_btn", function(){
		$(this).parent().parent().children(":nth-child(1)").css("background-color", "#fcfcfc");
	}); //table send_btn mouseover end 
	
	$("table").on("click", ".send_btn", function(){
		$(this).attr("disabled", true);
		$(this).css("cursor", "default");
		$(this).css("color", "white");
		$(this).css("background-color", "#2e3459");
		$(this).parent().parent().children(":nth-child(4)").css("display", "inline")
	}); //table send_btn click end
	
	$("#cancelImg").on("click", function(){ 
		$(".popup2").remove();
		$(".bg").remove();
		location.href="main";
	}); //yesBtn click end
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
                  <div class="logins">
                     <div class="sub_login1">
                         <form action="#" id="loginForm">
	                        <input type="button" id="loginBtn" value="로그인" />
	                        <input type="password" id="inputPW" name="inputPW" placeholder="PW" />
	                        <input type="text" id="inputID" name="inputID" placeholder="ID" />
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
			<div class="findID">[아이디 찾기]</div>
			
			<div id="infoWrap">
				<div class="title">이름</div>
				<form action="#" id="infoForm">
					<input type="text" id="inputName" name="inputName" placeholder="이름를 입력해 주세요."/> 

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
				</form>
			
				<div id="btnWrap">
					<input id="preBtn" type="button" value="Prev"/>
					<input id="nextBtn" type="button" value="Next"/>
				</div>
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