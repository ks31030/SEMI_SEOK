<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.semi.UpdateServlet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 수정</title>
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
			<div class="innerReviewUpdate">
				<form action="UpdateServlet" method="post" enctype="multipart/form-data">
					<label for="REVIEW_TITLE">제목</label>
	                <input type="text" placeholder='제목을 수정해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
	
	                <label for="REVIEW_TEXT">내용</label>
	                <textarea rows="5" placeholder='내용을 수정해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT" required></textarea><br><br>
					
					<label for="REVIEW_NO">번호</label>
	                <input type="text" placeholder='수정할 게시글의 번호를 입력해주세요.' id="REVIEW_NO" name="REVIEW_NO" required><br><br>
					<div>
						<button class="btn1"><a href ="review_list.jsp">목록</a></button>
						<button class="btn3"><a href ="review_list.jsp">취소</a></button>
						<button class="btn3" type="submit" onclick="updatebutton()">수정</button>
					</div>
	            </form>
	        </div>
		</div>
	</body>
</html>
