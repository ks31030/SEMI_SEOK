<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ı� �ۼ��� �����ϼ̽��ϴ�!</title>
</head>
<body>
<h1>�ı� �ۼ��� ����!</h1>
<h2> �ı� ���� :</h2>
<p> ���� : <%= session.getAttribute("REVIEW_TITLE") %></p>
<p> ÷�� : <%= session.getAttribute("REVIEW_FILE") %></p>
<p> ���� : <%= session.getAttribute("REVIEW_TEXT") %></p>
<p> �ۼ��� : <%= session.getAttribute("ACCOUNT_ID") %></p>
</body>
</html>