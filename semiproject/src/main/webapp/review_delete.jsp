<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.kh.semi.Review"%>
<%@ page import="com.kh.semi.ReviewDAO"%>   
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="EUC-KR">
			<title>�Խñ� ����</title>
			<link rel="stylesheet" type="text/css" href="css/rDelete.css">
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
			 <div class="wing1">
		    	<button class="btn2" onclick="prevButton()"><</button>
	    	</div>
	    	<div class="wing2">
	    		<button class="btn2" onclick="nextButton()">></button>
	    	</div>
	    	<div class="mainform">
				<form action="DeleteServlet" method="post">
					
						<label for="REVIEW_NO"></label>
				        <input type="text" placeholder='������ ��ȣ�� �ۼ����ּ���.' id="REVIEW_NO" name="REVIEW_NO" required><br>
					<div>
                    <button class="btn1"><a href ="review_list.jsp">���</a></button>
                </div>
			        <div class="canBtn">
			       		<button class="btn3" type="submit" onclick="cancelbutton()">���</button>
			       	</div>
			        <div class="delBtn">
			        	<button class="btn3" type="submit" onclick="deletebutton()">����</button>
			       	</div>
			    </form>
			</div>
    	</div>
</body>
</html>