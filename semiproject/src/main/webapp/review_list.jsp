<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>
<!DOCTYPE html>
<html>
	<head>
    	<meta charset="UTF-8">
    	<title>�Խñ� ���</title>
    	<link rel="stylesheet" type="text/css" href="css/rList.css">
		<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
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
	        <div class="aa">
	        <div class="mainform">
			<form>
			<div style="overflow-y:scroll; width: 850px; height:500px;">
				<table border="1">
        			<tr>
			            <th>��ȣ</th>
			            <th>����</th>
			            <th>����</th>
			            <th>�ۼ���</th>
			            <th>�ۼ���</th>
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
			</form>
    		<div class="allBtn">
				<button class = "btn1"><a href="review_create.jsp">����</a></button>
				<button class = "btn1"><a href="review_update.jsp">����</a></button>
				<button class = "btn1"><a href="review_delete.jsp">����</a></button>
				<button class = "btn1"><a href="review_search.jsp">�˻�</a></button><br><br><br><br><br>
			</div>
			</div>
			</div>
	</body>
</html>