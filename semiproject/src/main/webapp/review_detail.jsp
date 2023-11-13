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
<title>���� ���</title>
<link rel="stylesheet" type="text/css" href="mainpage.css">
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>
<style>
@charset "UTF-8";

@font-face {
	font-family: 'LOTTERIACHAB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/LOTTERIACHAB.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

header {
	height: 220px;
	display: flex;
}

body {
	margin-left: 350px;
	margin-right: 350px;
}

#login-join-link {
	text-align: right;
	line-height: 0;
}

#gajimarket {
	color: #6C44BB;
	text-shadow: 10px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	font-family: 'LOTTERIACHAB';
	font-size: 80pt;
	margin-left: 275px;
	line-height: 0;
	letter-spacing: 10px;
}

#gajidori {
	width: 140px;
	margin-left: 25px;
}

nav {
	background-color: lavender;
}

ul li {
	display: inline-block;
	font-family: 'SUITE-Regular';
	font-size: 20pt;
	margin-left: 115px;
}

li {
	position: relative;
}

li a:after {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 3px;
	background-image: linear-gradient(90deg, #6C44BB, #6DA44C); /*����*/
	opacity: 0;
	-webkit-transform: translateY(5px);
	-moz-transform: translateY(5px);
	transform: translateY(5px);
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	-moz-transition: -moz-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
}

li a:hover:before, li a:focus:before {
	opacity: 0;
	-webkit-transform: translateY(-2px);
	-moz-transform: translateY(-2px);
	transform: translateY(-2px);
}

li a:hover:after, li a:focus:after {
	opacity: 1;
	-webkit-transform: translateY(0px);
	-moz-transform: translateY(0px);
	transform: translateY(0px);
}
/***************************���⼭���� ���� ��Ÿ�� �����Ͻø� �˴ϴ�~~~~*********************************/
.search-box {
	padding: 7px;
	position: absolute;
	top: 35%;
	left: 36.5%;
	height: 30px;
	border-radius: 30px;
	border: 3px solid greenyellow;
	transition: 0.5s;
	width: 450px;
}

.search-box:hover {
	box-shadow: 0 0 0.5px 1px lawngreen;
}

.search-text {
	border: none;
	outline: none;
	float: left;
	font-size: 1rem;
	line-height: 30px;
	transition: 0.4s;
	width: 400px;
}

.search-button {
	text-decoration: none;
	display: flex;
	justify-content: center;
	align-items: center;
	width: 30px;
	height: 30px;
	border-radius: 30px;
	color: lawngreen;
}
</style>
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
		���� :<%=review.getREVIEW_TITLE()%><br>
		���� :<%=review.getREVIEW_TEXT()%><br>
		����� ID :<%=review.getACCOUNT_ID()%><br>
		�ۼ� �ð� :<%=review.getREVIEW_TIME()%>
	</p>
	<%

	%>

	<form action="review_delete.jsp?REVIEW_No=<%=reviewNo%>" method="post">
		<button type="submit" id="deleteButton"
			onclick="Location.href='review_delete.jsp?REVIEW_No=<%=reviewNo%>'">����</button>
	</form>

	<button id="updateButton"
		onclick="location.href='review_update.jsp?REVIEW_No=<%=reviewNo%>'">����</button>

</body>
</body>
</html>