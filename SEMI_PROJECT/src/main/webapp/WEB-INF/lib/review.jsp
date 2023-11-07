<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>후기게시판</title>
 <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1>후기게시판</h1>
<form action="ReviewServlet" method="post">
	    <label for="rNo">번호:</label>
        <input type="text" id="rNo" name="rNo" required><br>

        <label for="rTitle">제목:</label>
        <input type="text" id="rTitle" name="rTitle" required><br>

        <label for="rText">내용:</label>
        <input type="text" id="rText" name="rText" required><br>

        <label for="rId">ID:</label>
        <input type="text" id="rId" name="rId" required><br>

        <input type="submit" value="작성완료">
    </form>
</body>
</html>