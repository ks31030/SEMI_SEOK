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
<p> ��ȣ : <%= session.getAttribute("review_no") %></p>
<p> ���� : <%= session.getAttribute("review_title") %></p>
<p> ���� : <%= session.getAttribute("review_text") %></p>
<p> �ۼ��� : <%= session.getAttribute("account_id") %></p>
</body>
</html>