<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
   margin: 0px;      
   font-family: 'Black Han Sans', sans-serif;
   min-width: 1480px;
   background-color: #f9f9f9;
}
#wrap {
   width: 100%;
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
    position:relative;   
    width: 470px;
    height: 70px;
    text-align: right;
    background-color: #FFFFFF;
}
#bookmarkPhoto, #notificationPhoto {
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
}
#profilePhoto {
    height: 40px;
    width: 40px;
	border-radius: 50%;
    margin-top: 15px;
    cursor: pointer;
}
#notificationPhoto {
   margin-left: 200px;
}
input[type='text']:focus, input[type='password']:focus{
	outline-color: #fcba03;
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
#admin{
	display:none;
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
#container{
	width: 1280px;
	margin: 0px auto;
	text-align: center;
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
#notification{
 	 display:none;
     width: 600px;
     box-shadow: 0px 0px 1px 1px #444444;
     position: absolute;
     margin-top: 72px;
     right: 10px;
     z-index: 300;
     font-size: 10pt;
}
.read{
    background-color: #d1d1e0;
	height: 50px;
	border-bottom: 1px solid black;
}
.notRead{
	background-color: #a3a3c2;
	height: 50px;
	border-bottom: 1px solid black;
}
#profileSlidedown{
	display: none;
   	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   	border: 2px solid #fcba03;
   	background-color: white;
   	position: absolute;
   	padding: 0px;
   	right: 8px;
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
#notificationWrap{
	width: 650px;
	margin: 50px auto;
}
#notificationWrap thead th{
	text-align: center;
}
#notificationWrap table{
	border-collapse: collapse;
}

#notificationWrap table tr th:first-child{
	text-align: center;
}

#notificationWrap tbody tr th{
	text-align: left;
}

#notificationWrap tr th img{
	height: 50px;
	width: 50px;
	text-align: center;
	cursor: pointer;
    margin-top: 5px;
    border-radius: 50%;
}

#notificationWrap tfoot tr{
	background-color: #48486a;
	color: white;
}
   
#notificationWrap tfoot tr th{
	text-align: center;
	cursor: pointer;
}

#notificationWrap tfoot tr th:hover{
	background-color: #a4a4c1;
}

#notificationWrap table tr th span{
	text-decoration: underline;
	cursor: pointer;
}

#notificationWrap table tr th span:hover{
	color: blue;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	var popupText = "";
	
	//????????? ?????? ??????
	if("${sMEM_NO}" != "")
	{
		if("${sGRADE_NO}" == "0")
		{
			$("#admin").show();
		}
		var path = ""; //???????????? ????????? ??????
		
		if("${sPHOTO_PATH}" != "")
		{
			path = "resources/upload/" + "${sPHOTO_PATH}";
			
			$("#profilePhoto").attr("src", path);
		}
		else
		{
			path = "./resources/images/profile.png";

			$("#profilePhoto").attr("src", path);
		}//if ~ else end
		var params = $("#memForm").serialize();
		
		$.ajax({
			url: "pageCnts",
			data: params,
			dataType: "json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					$("#pageCnt").val(result.pageCnt);
					$("#notificationMore").click();
				}
				else
				{
					popupText = "????????? ??????????????????.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	} //if end
	
	$("#notificationWrap tbody").on("click", "span, tr, img", function(){
		if($(this).attr("class") == "notRead")
		{
			$("#NOTF_NO").val($(this).attr($(this).attr("class")));
	
		    var params = $("#notificationForm").serialize();
			
			$.ajax({
				url: "reads",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end  
		} //if end ?????? ???????????? ?????????, ??? ??????, ????????? ?????? ????????? ????????? ????????????
		
		if($(this).attr("class") == "user")
		{
			$("#userNo").val($(this).attr($(this).attr("class")));
			console.log($("#userNo").val());
			$("#userForm").submit();
		}
		else if($(this).attr("class") == "journal")
		{
			$("#journalNo").val($(this).attr($(this).attr("class")));
			$("#journalForm").submit();
		}
		else if($(this).attr("class") == "post")
		{
			$("#postNo").val($(this).attr($(this).attr("class")));
			$("#postForm").submit();
		}//if ~ else end ????????? ?????? ????????? ?????? ????????? or ?????? ??????
	}); //notification tbody span tr click end
	
	$("#profilePhoto").on("click", function(){
		$("#notification").css("display", "none");
		if($("#profileSlidedown").css("display") == "block")
		{
			$("#profileSlidedown").css("display", "none");
		}
		else
		{
			$("#profileSlidedown").css("display", "block");
		}
	}); //profilePhoto click end
	
	$("#journalBoard").on("click", function(){
    	location.href = "journalBoard";
    });//postBoard click end
    
    $("#community").on("click", function(){
    	location.href = "community";
    });//community click end
	
	$("#travelWriter").on("click", function() {
  		location.href = "travelWriterRank";
  	}); //travelWriter click end
   	
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	}); //clientCenter click end
	
  	$("#admin").on("click", function() {
  		location.href = "memAdmin";
  	}); //admin click end
  	
  	$("#myPage").on("click", function(){
  		location.href = "myPage";
	}); //find click endmyPage
  	
  	$("#timeline").on("click", function(){
  		location.href = "timeline";
  	}); //timeline click end
  	
  	$("#editProfile").on("click", function(){
  		location.href = "editProfile";
  	}); //editProfile click end
  	
	$("#editInfo").on("click", function(){
		location.href = "editInfo";
  	}); //editInfo click end
  	
  	$("#bookmarkPhoto").on("click", function(){
		location.href = "myPageBMK";
	}); //bookmarkPhoto click end
	
  	$("#notificationMore").on("click", function(){
		
  		var params = $("#memForm").serialize();
		
		$.ajax({
			url: "notifications",
			data: params,
			dataType: "json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					$("#page").val(result.page);
					$("#firstPage").val(result.firstPage);
					makeNotificationTable(result.notification, result.page);
				}
				else if(result.msg == "failed")
				{
					popupText = "????????? ??????????????????.";
					commonPopup(popupText);
				}
				else
				{
					popupText = "????????? ?????????.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //notificationMore click end
  	
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
  	
	// ??????????????? ???????????? ??????
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
}); // document ready end
function commonPopup(txt) //??????????????? ????????? ?????? , txt??? ????????? ????????? ????????? 
{
	var html = "";
	
	html 	 +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <div id=\"yesBtn\">???</div>";
	html	 +="     </div>";
	html	 +="</div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
	}); //yesBtn click end
}
function makeNotificationTable(notification, page)
{
	var html = "";
	
	for(noti of notification)
	{
		if(noti.READ == 1)
		{
			html += "<tr class=\"notRead\" notRead=\"" + noti.NOTF_NO + "\">";
		}
		else
		{
			html += "<tr class=\"read\">";
		}
		
		var path ="";
		
		if(noti.PHOTO_PATH != null)
		{
			path = "resources/upload/"+noti.PHOTO_PATH;
		}
		else
		{
			path = "./resources/images/profile.png";
		}
		
		switch(noti.EVENT_NO)
		{
			case 0:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th><span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST +"</span>?????? ????????? ????????? ???????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 1:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[????????????]<span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;	
			case 2:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[?????????]<span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 3:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[????????????]<span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JCTITLE + "</span>???  <span class=\"user\" user=" + noti.NOTF_MEM_NO + ">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JUP_CONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 4:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[?????????]<span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BCTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BUP_CONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 5:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.JCCMEM_NO + "\"></th>";
				html +=" 	<th>??? ??????<span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.UPJCONTENTS + "</span>???  <span class=\"user\" user=\"" + noti.JCCMEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.DOWNJCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 6:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.BCCMEM_NO + "\"></th>";
				html +=" 	<th>??? ??????<span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.UPBCONTENTS + "</span>???  <span class=\"user\" user=\"" + noti.BCCMEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.DOWNBCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 7:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>???????????? ?????? ?????? [????????????]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 8:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>???????????? ?????? ?????? [????????????]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>??? ????????? ?????? ???????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 9:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>?????? ????????? [????????????]<span class=\"journal\" journal=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE + "</span> ??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 10:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>?????? ????????? [?????????]<span class=\"post\" post=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE2 + "</span> ??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			default:
				console.log("?????? ?????????????");
		}
	}
	
	$("#notificationWrap tbody").append(html);
}
</script>
</head>
<body>
<form action="#" id="memForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
	<input type="hidden" id="page" name="page" value="${page}"/>
	<input type="hidden" id="firstPage" name="firstPage" value="${firstPage}"/>
	<input type="hidden" id="GBN" name="GBN" value="2"/>
	<input type="hidden" id="pageCnt" name="pageCnt"/>
</form>
<form action="userPage" id="userForm" method="post">
	<input type="hidden" id="userNo" name="userNo" value=""/>
</form>
<form action="journal" id="journalForm" method="post">
	<input type="hidden" id="journalNo" name="journalNo" value=""/>
	<input type="hidden" id="memNo" name="memNo" value="${sMEM_NO }"/>
</form>
<form action="post" id="postForm" method="post">
	<input type="hidden" id="postNo" name="postNo" value=""/>
	<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
	<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}" />
</form>
<form action="#" id="notificationForm">
	<input type="hidden" id="NOTF_NO" name="NOTF_NO" value=""/>
</form>
<div id="wrap">
         <!-- header?????? ?????? -->
         <div id="header">
            <div class="banner">
               <div class="top">
                  <div class="logo_area">
                     <a href="main"><img alt="??????" src="./resources/images/logo.png" class="logo_photo"></a>
                     <div class="site_name">???????????? ????????????</div>
                  </div>
                  <div class="btns"> <!-- ?????? logins??? ?????? -->
                     <ul>
						<li><img alt="bell" src="./resources/images/bell.png" id="notificationPhoto">
						</li>
							<li><img alt="bookmark" src="./resources/images/bmk.png" id="bookmarkPhoto"></li>
							<li><img alt="?????????" src="./resources/images/profile.png" id="profilePhoto">
								<ul id="profileSlidedown">
									<li id="myPage">?????? ?????????</li>
									<li id="timeline">????????????</li>
									<li id="editProfile">????????? ??????</li>
									<li id="editInfo">???????????? ??????</li>
									<li id="logoutBtn">????????????</li>
								</ul>
							</li>
						</ul>
                  </div>
               </div>
            </div>
            <nav class="menu">
               <ul>
                  <li id="journalBoard">???????????????</li>
                  <li id="community">???????????????</li>
                  <li id="travelWriter">????????????</li>
				  <li id="clientCenter">????????????</li>
				  <li id="admin">???????????????</li>
               </ul>
            </nav>
            <form action="#" id="goSearch" method="post" >
				<img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" id="mainSearchTxt" name="mainSearchTxt" value="${param.mainSearchTxt}" placeholder="??????">
				<select class="filter" id="mainSearchFilter" name="mainSearchFilter" >
					<option value="0" selected="selected">????????????</option>
					<option value="1">????????????</option>
					<option value="2">????????????</option>
					<option value="3">???????????????</option>
					<option value="4">?????????</option>
				</select>
			</form>
         </div> <!-- header end -->

		<div id="container">
			 	<div id="notificationWrap">
					<table>
						<colgroup>
							<col width="100px">
							<col width="350px">
							<col width="200px">
						</colgroup>
						<thead>
							<tr>
								<th>??????</th>
								<th>??????</th>
								<th>??????</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
						<tfoot>
							<tr>
								<th colspan="3" id="notificationMore">...?????????</th>
							</tr>
						</tfoot>
					</table>
			</div>	 
		</div> <!-- container end -->
		
		<div id="footer">
            <p>
               POPJOURNEY<br/>
               GDJ-35??? LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
               Copyright?? POPJOURNEY. All Rights Reserved.
            </p>   
        </div> 
	</div> <!-- wrap end -->
</body>
</html>