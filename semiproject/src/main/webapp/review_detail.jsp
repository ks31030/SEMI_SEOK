<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="com.kh.semi.Review"%>
<%@ page import="com.kh.semi.ReviewDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<link rel="stylesheet" type="text/css" href="css/rDetail.css">
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<p id="login-join-link">
		<a href="login.jsp">로그인</a> &nbsp;&nbsp; <a href="register.jsp">회원가입</a>
	</p>
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
	<h1>제품 상세 정보</h1>
	<%
	String reviewNoValue = (String) request.getParameter("REVIEW_NO");
	int reviewNo = Integer.parseInt(reviewNoValue);
	// DAO 작업
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

	<form action="review_delete.jsp?REVIEW_No=<%=reviewNo%>" method="post">
		<button class="btn1" type="submit" id="deleteButton"
		onclick="Location.href='review_delete.jsp?REVIEW_No=<%=reviewNo%>'">삭제</button>
	</form>
		<button class="btn1" id="updateButton"
		onclick="location.href='review_update.jsp?REVIEW_No=<%=reviewNo%>'">수정</button>
		<button class="btn1"><a href ="review_list.jsp">목록</a></button>

</body>
</body>
</html>