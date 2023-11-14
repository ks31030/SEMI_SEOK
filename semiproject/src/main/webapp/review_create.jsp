<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 작성</title>
		<link rel="stylesheet" type="text/css" href="css/rCreate.css">
	</head>
	<body>
		<p id="login-join-link">로그인 회원가입</p>
		<header>
			<div id="logo">
			<p id="gajimarket">가지마켓</p>
			</div>
			<div id="mascot">
			<img src="img/gajidori.png" alt="gajidori" id="gajidori">
			</div>
		</header>
		<nav>
			<ul>
				<li><a>자유게시판</a></li>
				<li><a>리뷰게시판</a></li>
				<li><a>문의게시판</a></li>
				<li><a>마이페이지</a></li>
			</ul>
		</nav>
		<div class="aa">
		<!--
		<div class="wing1">
			<button class="btn2" onclick="prevButton()"><</button>
		</div>
		<div class="wing2">
			<button class="btn2" onclick="nextButton()">></button>
		</div>
		  -->
		<div class="mainform">
			<form action="CreateServlet" method="post" enctype="multipart/form-data">
				<label for="REVIEW_TITLE">제목</label>
				<input type="text" placeholder='제목을 작성해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
				<label for="REVIEW_FILE">첨부</label>
				<input type="file" id="REVIEW_FILE" name="REVIEW_FILE"><br>
				<label for="REVIEW_TEXT">내용</label>
				<input type="textarea" style="white-space: pre-wrap" placeholder=' 내용을 작성해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT"required><br><br>
				<label for="ACCOUNT_ID">ID</label>
				<input type="text" placeholder='작성하시는 분의 아이디를 입력해주세요.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br> <br>
				<div>
					<button class="btn1"><a href ="review_list.jsp">목록</a></button>
				</div>
				<div class="canBtn">
					<button class="btn3" type="submit" onclick="cancelbutton()">취소</button>
				</div>
				<div class="creBtn">
					<button class="btn3" type="submit" onclick="createbutton()">등록</button>
				</div>
			</form>
		</div>
		</div>
	</body>
</html>