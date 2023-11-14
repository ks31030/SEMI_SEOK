<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.semi.Review" %>
<%@ page import="com.kh.semi.ReviewDAO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>�Խñ� �˻�</title>
    <link rel="stylesheet" type="text/css" href="css/rSearch.css">
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
	        <!--
		<div class="wing1">
			<button class="btn2" onclick="prevButton()"><</button>
		</div>
		<div class="wing2">
			<button class="btn2" onclick="nextButton()">></button>
		</div>
		-->
		<div class="mainform">
			<form action="SearchServlet" method="post" enctype="multipart/form-data">
				
				<label for="REVIEW_TITLE">����</label>
				<input type="text" placeholder='������ �˻����ּ���.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
				
				<label for="ACCOUNT_ID">ID</label>
				<input type="text" placeholder='���̵� �˻����ּ���.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br><br>

				<div>
					<button class="btn1"><a href ="review_list.jsp">���</a></button>
				</div>
				
				<div class="canBtn">
					<button class="btn3" type="submit" onclick="cancelbutton()">���</button>
				</div>
				
				<div class="srcBtn">
					<button class="btn3" type="submit" onclick="searchbutton()">�˻�</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>