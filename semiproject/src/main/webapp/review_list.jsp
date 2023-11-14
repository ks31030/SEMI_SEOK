<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 목록</title>
    <link rel="stylesheet" type="text/css" href="css/rList.css">
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
	        <div class="mainform">
	        <form>
    	<table border="1">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>본문</th>
            <th>작성일</th>
            <th>작성자</th>
        </tr>

        <%
            ReviewDAO reviewDAO = new ReviewDAO();
            List<Review> reviewList = reviewDAO.getAllReviews();

            for (Review review : reviewList) {
        %>
        
        <tr>
			<td><center><a href="review_detail.jsp?REVIEW_NO=<%=review.getREVIEW_NO()%>"> <%= review.getREVIEW_NO() %> </a></center></td>
			<td><center><a href="review_detail.jsp?REVIEW_NO=<%=review.getREVIEW_NO()%>"> <%= review.getREVIEW_TITLE() %></a></center></td>
			<td><center><a href="review_detail.jsp?REVIEW_NO=<%=review.getREVIEW_NO()%>"> <%= review.getREVIEW_TEXT() %></a></center></td>
			<td><center><%= review.getREVIEW_TIME() %></center></td>
			<td><center><a href="review_detail.jsp?REVIEW_NO=<%=review.getREVIEW_NO()%>"> <%= review.getACCOUNT_ID() %></a></center></td>
		</tr>
		<% } %>
    </table>
    </form>
    <button class = "btn1"><a href="review_create.jsp">생성</a></button>
    <button class = "btn1"><a href="review_update.jsp">수정</a></button>
    <button class = "btn1"><a href="review_delete.jsp">삭제</a></button>
    <button class = "btn1"><a href="review_search.jsp">검색</a></button><br><br><br><br><br>
	</div>
	</div>
</body>
</html>