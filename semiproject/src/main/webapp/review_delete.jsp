<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.semi.Review"%>
<%@ page import="com.kh.semi.ReviewDAO"%>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 삭제</title>
		<link rel="stylesheet" type="text/css" href="css/rDelete.css">
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
        </div>
        	<%
			String reviewNoValue = (String)request.getParameter("REVIEW_No");
	        int reviewNo = Integer.parseInt(reviewNoValue);
			ReviewDAO rDAO = new ReviewDAO();
			int result =  rDAO.deleteReview(reviewNo);
	        if(result>0){
	       	%>
	        	<script type="text/javascript">
	        		alert("글 삭제 성공");
	        		location.href="review_list.jsp";
	        	</script>
	        <%
	        } else {
	        %>
	        
	        <script type="text/javascript">
	        	alert("글 삭제 실패");
	        	location.href="review_list.jsp";
	        </script>
	        <%
	        }
	        %>
	</body>
</html>