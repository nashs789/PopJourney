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
.profile{
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
#att{
	display:none;
}
#photoArea{
	width: 120px;
	height: 120px;
	border-radius: 50%;
	border: 1px thin rgb(242, 242, 242, 0.6);
	margin-left: 200px;
}
#photo{
	width: 140px;
	height: 120px;
	border-radius: 50%;
	border: 1px solid black;
	box-sizing: border-box;
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
.btn_list a{
   text-decoration: none;
   display:inline-block;
   text-align:center;
   width: 120px;
   height:30px;
   padding: 10px 15px 10px 15px;
   font-size: 12pt;
   color: #f37321;
   font-weight: bold;
   line-height: 30px;
}
.btn_list a:first-child {
   border-radius: 0 0 0 10px; 
}
.btn_list a:last-child {
   border-radius: 0 0 10px 0; 
}
.btn_list a:hover {
   background-color: #f37321;
   color: white;
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
#inputID, #inputPW {
   float: right;
   width: 100px;
   height: 25px;
   margin-top: 20px;
   margin-left: 5px;
}
#cancelImg{
	margin-top: 10px;
	width: 30px;
	margin-left: 135px;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${sMEM_NO}" != "" || "${data.marketing}" == "")
	{	
		location.href="main";
	}
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
		
		var params = $("#Form").serialize();
		
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
	
	$("#findPhotoBtn").on("click", function() {
		$("#att").click();
	});
	
	$("#att").on("change", function() {
		$("#fileName").html($(this).val().substring($(this).val().lastIndexOf("\\") + 1));
		
		var fileForm = $("#fileForm");
		
		fileForm.ajaxForm({
				success : function(res) {
				if(res.result == "SUCCESS") {
					// 올라간 파일명 저장
					if(res.fileName.length > 0) 
					{
						$("#photoPath").val(res.fileName[0]);
						
						var path = "resources/upload/"+res.fileName[0];
						
						$("#photo").attr("src", path);
					}
				} 
				else 
				{
					alert("파일 업로드중 문제 발생");
				}
			},
			error : function() {
				alert("파일 업로드중 문제 발생");
			}
		}); // ajaxForm end
		fileForm.submit();
	}); //att change end
	
	$("#nextBtn").on("click", function(){
		var fileForm = $("#fileForm");
		
		fileForm.ajaxForm({
			beforeSubmit : function() { // 파일이 있던 없던 유효성 체크.
				if($.trim($("#inputIntro").val()) == "") //소개글 입력 없을 시
				{
					$("#inputIntro").val("안녕하세요~ 잘 부탁드립니다.");
				}
				if($.trim($("#inputNic").val()) == "")
				{
					popupText = "닉네임을 입력하세요.";
					commonPopup(popupText);
					$("#inputNic").focus();
					return false;
				}
				else if($("#inputNic").val() != nicCheck)
				{
					popupText = "닉네임 중복확인을 해주세요.";
					commonPopup(popupText);
					return false;
				}
			},success : function(res) {
				if(res.result == "SUCCESS") {
					// 올라간 파일명 저장
					if(res.fileName.length > 0) {
						$("#photoPath").val(res.fileName[0]);
					}
					// 글 저장
					var params = $("#infoForm").serialize();
					
					$.ajax({
						url: "joins",
						data: params,
						dataType:"json",
						type: "post",
						success:function(result)
						{
							if(result.msg = "success")
							{
								popupText = "회원가입 되셨습니다!!!";
								endPopup(popupText);
							}
							else if(result.msg = "failed")
							{
								popupText = "회원가입에 실패아였습니다.";
								commonPopup(popupText);
							}
							else
							{
								popupText = "가입중 문제가 발생하였습니다.";
								commonPopup(popupText);
							}
						}, //success end
						error: function(request, status, error) {
							console.log(error);
						} // error end
					}); //ajax end
				} else {
					alert("파일 업로드중 문제 발생");
				}
			},
			error : function() {
				alert("파일 업로드중 문제 발생");
			}
		}); // ajaxForm end
		fileForm.submit();
	}); //nextBtn click end
	
	$("#preBtn").on("click", function(){ //이전버튼 클릭
		history.back();
	}); //preBtn click end
	
	$("#inputPW, #inputID").on("keypress", function(){
		$(".popup").remove();
		$(".bg").remove();
		if(event.keyCode == 13)
			$("#loginBtn").click();
	});
	
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
	
	$("#join").on("click", function(){  //회원가입 버튼 클릭
		location.href="terms";
	}); // join click end
	
	$("#find").on("click", function(){
		findBtnPopup();
	}); //find click end
	
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	}); //clientCenter click end
	
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
function findBtnPopup()
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html +="	   <div class=\"popup_entity_txt\">무엇이 필요하십니까?</div>";
	html +="       <div class=\"btn_list\">";
	html +="       		<a href=\"findID\">ID찾기</a>";
	html +="      		<a href=\"findPW\">PW찾기</a>";
	html +="       <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html +="    </div>";
	html +="</div>";
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //cancelImg click end
}
</script>
</head>
<body>
<form id="fileForm" action="fileUploadAjax" method="post" enctype="multipart/form-data">
	<input type="file" name="att" id="att" /> <!-- attach : 첨부 -->
</form>
<form action="#" id="Form">
	<input type="hidden" id="valueStorage" name="storage"/>
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
                  <div class="logins">
                     <div class="sub_login1">
                        <form action="#" id="loginForm">
	                        <input type="button" id="loginBtn" value="로그인" />
	                        <input type="password" id="inputPW" name="inputPW" placeholder="PW" />
	                        <input type="text" id="inputID" name="inputID" placeholder="ID" />
                        </form>
                     </div>
                     <div class="sub_login2">
                        <span id="join">회원가입</span>
                        <span id="find">ID/PW 찾기</span>
                     </div>
                  </div>
               </div>
            </div>
            <nav class="menu">
               <ul>
                  <li>여행게시판</li>
                  <li>자유게시판</li>
                  <li id="travelWriter">여행작가</li>
                  <li id="clientCenter">고객센터</li>
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
		
			<div class="milestone">
				<div class="milestone_title">
					약관 동의
				</div>
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title">
					정보입력
				</div>	
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title" id="milestone_on">
					프로필 설정
				</div>
				<div class="arrow_img"><img src="./resources/images/milestone.png"></div>
				<div class="milestone_title">
					가입 완료
				</div>				
			</div> <!-- milestone end -->
			
			<div id="infoWrap">
				<form action="#" id="infoForm">
					<input type="hidden" name="inputName" value="${data.inputName}"/>
					<input type="hidden" name="birth" value="${data.birth}"/>
					<input type="hidden" name="phone" value="${data.phone}"/>
					<input type="hidden" name="email" value="${data.email}"/>
					<input type="hidden" name="inputID" value="${data.inputID}"/>
					<input type="hidden" name="inputPW" value="${data.inputPW}"/>
					<input type="hidden" name="inputCode" value="${data.inputCode}"/>
					<input type="hidden" name="inputKeyword" value="${data.inputKeyword}"/>
					<input type="hidden" name="sex" value="${data.sex}"/>
					<input type="hidden" name="selectTelcom" value="${data.selectTelcom}"/>
					<input type="hidden" name="selectKeyword" value="${data.selectKeyword}"/>
					<input type="hidden" name="marketing" value="${data.marketing}"/>	
				
					<div id="photoArea">
						<img id="photo" src="./resources/images/profile.png">
						<input type="hidden" id="photoPath" name="photoPath" value=""/>
					</div>
					<input type="button" value="사진찾기" id="findPhotoBtn"/><span id="fileName"></span>
					
					<div class="title">닉네임</div>
					<input type="text" placeholder="닉네임을 입력하세요." id="inputNic" name="inputNic"/>
					<input type="button" value="중복확인" id="nicDbCkBtn"/>
					
					<div class="title">소개글</div>
					<input type="text" placeholder="안녕하세요~ 잘 부탁드립니다." id="inputIntro" name="inputIntro"/>
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