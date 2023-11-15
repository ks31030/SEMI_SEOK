<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	        <div class="innerReviewList">
				<div style="overflow-y:scroll; width: 850px; height:500px;">
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
							<%
							}
							%>
					</table>
				</div>
			</div>
			<foot>
				<div>
					<button class = "btn1"><a href="review_create.jsp">생성</a></button>
				</div>
			</foot>
		</div>
	</body>
</html>