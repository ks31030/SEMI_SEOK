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
<p> ��ȣ : <%= session.getAttribute("rNO") %></p>
<p> ���� : <%= session.getAttribute("rTitle") %></p>
<p> ���� : <%= session.getAttribute("rText") %></p>
<p> �ۼ��� : <%= session.getAttribute("rId") %></p>
</body>
</html>