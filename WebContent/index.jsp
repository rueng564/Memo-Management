<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>Memo Manage Program</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
	<script src="./js/jquery-3.3.1.min.js"></script>
	<script src="./js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>

<body>
	<div class="main">
		<!--search에 focus 발생시 메모화면 검정색으로 만들고 검색결과 출력-->
		<div class="searchbar">
			<input type="text" id="search" name="search" placeholder="Search...">
		</div>
		<div class="searchresult"></div>
		<div class="board">
			<!--DB에서 불러와서 이곳에 로딩-->
		</div>
		<div class="list">
			<div class="boardlist">
				<!--페이지 로딩시 DB에서 board와 memo불러와서 로딩-->
			</div>
			<div>
				<button id="addboard">Create New Board</button>
			</div>
		</div>
		<div class="modal">
			<form class="addmodal-content" action="javascript:void(0);">
				<div class="header">
					<h3>Create New Board</h3>
					<hr>
				</div>
				<div class="formforadd">
					<div class="namesec">
						<label class="name">Name
							<input type="text" name="name">
						</label>
					</div>
				</div>
				<div class="btsection">
					<input type="submit" value="Create" class="sbbtn">
					<input type="reset" value="Cancel" class="ccbtn">
				</div>
			</form>
		</div>
	</div>
	<div id="loading">
		<img id="loading-img" src="./image/loading.gif">
	</div>
</body>

</html>