<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 검색</title>
    <link rel="stylesheet" type="text/css" href="css/rSearch.css">
    <script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
</head>
<body>
	<p id="login-join-link"><a href="login.jsp">로그인</a> &nbsp;&nbsp; <a href="register.jsp">회원가입</a></p>
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
		<div class="wing1">
			<button class="btn2" onclick="prevButton()"><</button>
		</div>
		<div class="wing2">
			<button class="btn2" onclick="nextButton()">></button>
		</div>
		<div class="mainform">
			<form action="SearchServlet" method="post" enctype="multipart/form-data">
				
				<label for="REVIEW_TITLE">제목</label>
				<input type="text" placeholder='제목을 검색해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
				
				<label for="ACCOUNT_ID">ID</label>
				<input type="text" placeholder='아이디를 검색해주세요.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br><br>

				<div>
					<button class="btn1"><a href ="review_list.jsp">목록</a></button>
				</div>
				
				<div class="canBtn">
					<button class="btn3" type="submit" onclick="cancelbutton()">취소</button>
				</div>
				
				<div class="srcBtn">
					<button class="btn3" type="submit" onclick="searchbutton()">검색</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>