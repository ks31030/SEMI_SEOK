<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.kh.semi.UpdateServlet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>�Խñ� ����</title>
	<link rel="stylesheet" type="text/css" href="css/rUpdate.css">
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
            <form action="UpdateServlet" method="post" enctype="multipart/form-data">
                
                <label for="REVIEW_TITLE">����</label>
                <input type="text" placeholder='������ �������ּ���.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>

                <label for="REVIEW_TEXT">����</label>
                <textarea rows="5" placeholder='������ �������ּ���.' id="REVIEW_TEXT" name="REVIEW_TEXT" required></textarea><br><br>
				
				<label for="REVIEW_NO">��ȣ</label>
                <input type="text" placeholder='������ �Խñ��� ��ȣ�� �Է����ּ���.' id="REVIEW_NO" name="REVIEW_NO" required><br><br>
                <div>
                    <button class="btn1"><a href ="review_list.jsp">���</a></button>
                    <button class="btn3" type="button" onclick="cancelbutton()">���</button>
                    <button class="btn3" type="submit" onclick="updatebutton()">����</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
