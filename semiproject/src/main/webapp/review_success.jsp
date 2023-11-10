<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>후기 작성에 성공하셨습니다!</title>
</head>
<body>
<h1>후기 작성에 성공!</h1>
<h2> 후기 정보 :</h2>
<p> 제목 : <%= session.getAttribute("REVIEW_TITLE") %></p>
<p> 첨부 : <%= session.getAttribute("REVIEW_FILE") %></p>
<p> 본문 : <%= session.getAttribute("REVIEW_TEXT") %></p>
<p> 작성자 : <%= session.getAttribute("ACCOUNT_ID") %></p>
</body>
</html>