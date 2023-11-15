<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="com.kh.semi.Review"%>
<%@ page import="com.kh.semi.ReviewDAO"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 상세</title>
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
		<%
			String reviewNoValue = (String) request.getParameter("REVIEW_NO");
			int reviewNo = Integer.parseInt(reviewNoValue);
			ReviewDAO reviewDao = new ReviewDAO();
			Review review = reviewDao.getReviewNo(reviewNo);
		%>
			<p>
				번호 : <%=review.getREVIEW_NO()%><br>
				제목 : <%=review.getREVIEW_TITLE()%><br>
				내용 : <%=review.getREVIEW_TEXT()%><br>
				사용자ID : <%=review.getACCOUNT_ID()%><br>
				작성시간 : <%=review.getREVIEW_TIME()%>
			</p>
			<div class="buttons">
				<button class="btn1"><a href ="review_list.jsp">목록</a></button>
				<form action="review_delete.jsp?REVIEW_No=<%=reviewNo%>" method="post">
					<button class="btn1" type="submit" id="deleteButton" onclick="Location.href='review_delete.jsp?REVIEW_NO=<%=reviewNo%>'">삭제</button>
				</form>
				<button class="btn1" id="updateButton" onclick="location.href='review_update.jsp?REVIEW_No=<%=reviewNo%>'">수정</button>
			</div>
		</div>
	</body>
</html>