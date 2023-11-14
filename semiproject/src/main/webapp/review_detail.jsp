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
<title>�Խñ� ��</title>
<link rel="stylesheet" type="text/css" href="css/rDetail.css">
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<p id="login-join-link">
		<a href="login.jsp">�α���</a> &nbsp;&nbsp; <a href="register.jsp">ȸ������</a>
	</p>
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
	<h1>��ǰ �� ����</h1>
	<%
	String reviewNoValue = (String) request.getParameter("REVIEW_NO");
	int reviewNo = Integer.parseInt(reviewNoValue);
	// DAO �۾�
	ReviewDAO reviewDao = new ReviewDAO();
	Review review = reviewDao.getReviewNo(reviewNo);
	%>
	<p>
		��ȣ : <%=review.getREVIEW_NO()%><br>
		���� : <%=review.getREVIEW_TITLE()%><br>
		���� : <%=review.getREVIEW_TEXT()%><br>
		�����ID : <%=review.getACCOUNT_ID()%><br>
		�ۼ��ð� : <%=review.getREVIEW_TIME()%>
	</p>

	<form action="review_delete.jsp?REVIEW_No=<%=reviewNo%>" method="post">
		<button class="btn1" type="submit" id="deleteButton"
		onclick="Location.href='review_delete.jsp?REVIEW_No=<%=reviewNo%>'">����</button>
	</form>
		<button class="btn1" id="updateButton"
		onclick="location.href='review_update.jsp?REVIEW_No=<%=reviewNo%>'">����</button>
		<button class="btn1"><a href ="review_list.jsp">���</a></button>

</body>
</body>
</html>