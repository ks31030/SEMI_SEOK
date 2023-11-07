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
<p> 번호 : <%= session.getAttribute("review_no") %></p>
<p> 제목 : <%= session.getAttribute("review_title") %></p>
<p> 본문 : <%= session.getAttribute("review_text") %></p>
<p> 작성자 : <%= session.getAttribute("account_id") %></p>
</body>
</html>