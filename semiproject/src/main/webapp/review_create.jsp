<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�Խñ� �ۼ�</title>
		<link rel="stylesheet" type="text/css" href="css/rCreate.css">
	</head>
	<body>
		<p id="login-join-link">�α��� ȸ������</p>
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
			<form action="CreateServlet" method="post" enctype="multipart/form-data">
				<label for="REVIEW_TITLE">����</label>
				<input type="text" placeholder='������ �ۼ����ּ���.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>
				<label for="REVIEW_FILE">÷��</label>
				<input type="file" id="REVIEW_FILE" name="REVIEW_FILE"><br>
				<label for="REVIEW_TEXT">����</label>
				<input type="textarea" placeholder='������ �ۼ����ּ���.' id="REVIEW_TEXT" name="REVIEW_TEXT"required><br><br>
				<label for="ACCOUNT_ID">ID</label>
				<input type="text" placeholder='�ۼ��Ͻô� ���� ���̵� �Է����ּ���.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br> <br>
				<div>
					<button class="btn1"><a href ="review_list.jsp">���</a></button>
				</div>
				<div class="canBtn">
					<button class="btn3" type="submit" onclick="cancelbutton()">���</button>
				</div>
				<div class="creBtn">
					<button class="btn3" type="submit" onclick="createbutton()">���</button>
				</div>
			</form>
		</div>
		</div>
	</body>
</html>