<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ı�Խ���</title>
 <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1>�ı�Խ���</h1>
<form action="ReviewServlet" method="post">
	    <label for="rNo">��ȣ:</label>
        <input type="text" id="rNo" name="rNo" required><br>
        
	    <label for="rFile">÷��:</label>
        <input type="file" id="rFile" name="rFile" required><br>

        <label for="rTitle">����:</label>
        <input type="text" id="rTitle" name="rTitle" required><br>

        <label for="rText">����:</label>
        <input type="text" id="rText" name="rText" required><br>
        
        <label for="rTime">�Ͻ�:</label>
        <input type="text" id="rTime" name="rTime" required><br>

        <label for="rId">ID:</label>
        <input type="text" id="rId" name="rId" required><br>

        <input type="submit" value="�ۼ��Ϸ�">
    </form>
</body>
</html>