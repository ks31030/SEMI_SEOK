<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 생성</title>
		<link rel="stylesheet" type="text/css" href="css/rCreate.css">
		<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
	</head>
	<body>
		<div class="inner">
			<p class="login-join-link"><a href="login.jsp">로그인</a> &nbsp;&nbsp; <a href="register.jsp">회원가입</a></p>
	    	<header>
	        	<div class="logo">
	            	<p class="gajimarket"><a href="review_list.jsp">가지마켓</a></p>
	            </div>
	            <div class="mascot">
	            	<a href="review_list.jsp"><img src="img/gajidori.png" alt="gajidori" class="gajidori"></a>
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
	        <div class="search-box">
            <input type="text" class="search-text" placeholder="찾으시는 상품을 검색하세요.">
            <a class="search-button" href="#"><i class="fas fa-search"></i></a>
   			</div>
			<div class="innerReviewCreate">
				<form action="CreateServlet" method="post" enctype="multipart/form-data">
					<label for="REVIEW_TITLE">제목</label>
					<input type="text" placeholder='제목을 작성해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
					
					<label for="REVIEW_FILE">첨부</label>
					<input type="file" id="REVIEW_FILE" name="REVIEW_FILE"><br>
					
					<label for="REVIEW_TEXT">내용</label>
					<input type="textarea" style="white-space: pre-wrap" placeholder=' 내용을 작성해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT"required><br><br>
					
					<label for="ACCOUNT_ID">ID</label>
					<input type="text" placeholder='작성하시는 분의 아이디를 입력해주세요.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br><br>
					<div class="buttons">
						<button class="btn1"><a href ="review_list.jsp">목록</a></button>
						<button class="btn3"><a href ="review_list.jsp">취소</a></button>
						<button class="btn3" type="submit" onclick="createbutton()">등록</button>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>