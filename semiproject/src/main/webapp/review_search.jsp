<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 목록</title>
    <link rel="stylesheet" type="text/css" href="mainpage.css">
    <script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
    <style>
    </style>
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
	        <div class="mainform">
			<form action="ReadServlet" method="post" enctype="multipart/form-data">
    <table border="1">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>본문</th>
            <th>작성일</th>
            <th>작성자</th>
        </tr>

        <% 
            // Retrieve review list from the database
            ReviewDAO reviewDAO = new ReviewDAO();
            List<Review> reviewList = reviewDAO.getReviewByAccountId();

            for (Review review : reviewList) {
        %>
        <tr>
            <td><%= review.getREVIEW_NO() %></td>
            <td><%= review.getREVIEW_TITLE() %></td>
            <td><%= review.getREVIEW_TEXT() %></td>
            <td><%= review.getREVIEW_TIME() %></td>
            <td><%= review.getACCOUNT_ID() %></td>
        </tr>
        <% } %>
    </table>
    </form>
    </div>
</body>
</html>