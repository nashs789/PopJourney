<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>문의사항 작성</title>
		<style type="text/css">
			body {
				margin: 0px;
				font-size: 0px;
				font-family: 'Black Han Sans', sans-serif;
				min-width: 1480px;
				background-color: #f9f9f9;
			}
			#container {
				display: block;
				width: 1480px;
				margin: 0 auto;
				background-color: #f9f9f9;
			}
			#contents {
				display: inline-block;
				vertical-align: top;
				font-size: 12pt;
				color: black;
			}
			#addBtn, #backBtn {
				width: 90px;
				height: 40px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			#addBtn:hover, #backBtn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
		</style>
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript"
				src="resources/script/ckeditor/ckeditor.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				CKEDITOR.replace("matterContents", {
					resize_enabled : false,
					language : "ko",
					enterMode : "2",
					width : "600",
					height : "300"
				});
				
				$("#backBtn").on("click", function() {
					$("#goForm").submit();
				});
				
				$("#addForm").on("keypress", "input", function(event) {
					if(event.keyCode == 13) {
						return false;
					}
				});
				
				$("#addBtn").on("click", function() {
					var params = $("#addForm").serialize();
					
					if($.trim($("#matterTitle").val()) == "") {
						alert("제목을 입력해 주세요.");
						$("#matterTitle").focus();
					} else if($.trim($("#matterContents").val()) == "") {
						alert("내용을 입력해 주세요.");
						$("#matterContents").focus();
					}
					
					$.ajax({
						url: "clientCenterMatterWrites",
						type: "post",
						dataType: "json",
						data: params,
						success: function(res) {
							if(res.msg == "success") {
								location.href = "clientCenterMatter";
							} else if(res.msg == "failed") {
								alert("작성에 실패하였습니다.");
							} else {
								alert("작성중 문제가 발생하였습니다.");
							}
						},
						error: function(request, status, error) {
							console.log(error);
						}
					});
				});
				
				
			}); // document ready end..
			
		</script>
	</head>
	<body>
		<div id="container">
			<form action="clientCenterMatter" id="goForm" method="post">
				<input type="hidden" name="page" value="${param.page}" />
				<input type="hidden" name="searchFilter" value="${param.searchFilter}" />
				<input type="hidden" name="searchTxt" value="${param.searchTxt}" />
			</form>
			<form action="#" id="addForm" method="post">
				<div id="contents">
					작성자 : ${param.NIC}<br/>
					제목 : <input type="text" id="matterTitle" name="matterTitle" /><br/>
					<textarea id="matterContents" name="matterContents"></textarea><br/>
				</div>
			</form>
			<input type="button" value="등록" id="addBtn" />
			<input type="button" value="뒤로가기" id="backBtn" />
		</div>
	</body>
</html>