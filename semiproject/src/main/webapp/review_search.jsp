<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>���� ���</title>
    <link rel="stylesheet" type="text/css" href="mainpage.css">
    <script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
    <style>
    </style>
</head>
<body>
	<p id="login-join-link"><a href="login.jsp">�α���</a> &nbsp;&nbsp; <a href="register.jsp">ȸ������</a></p>
	    	<header>
	        	<div id="logo">
	            	<p id="gajimarket">��������</p>
	            </div>
	            <div id="mascot">
	            	<img src="img/gajidori.png" alt="gajidori" id="gajidori">
	            </div>
	        </header>
	        <nav>
	            <ul>
	                <li><a>�����Խ���</a></li>
	                <li><a>����Խ���</a></li>
	                <li><a>���ǰԽ���</a></li>
	                <li><a>����������</a></li>
	            </ul>
	        </nav>
	        <div class="mainform">
			<form action="ReadServlet" method="post" enctype="multipart/form-data">
    <table border="1">
        <tr>
            <th>��ȣ</th>
            <th>����</th>
            <th>����</th>
            <th>�ۼ���</th>
            <th>�ۼ���</th>
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
