<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.kh.semi.Review"%>
<%@ page import="com.kh.semi.ReviewDAO"%>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>게시글 삭제</title>
		<link rel="stylesheet" type="text/css" href="css/rDelete.css">
	</head>
	<body>
   		<p id="login-join-link">로그인 회원가입</p>
        <header>
        	<div id="logo">
            	<p id="gajimarket">가지마켓</p>
            </div>
            <div id="mascot">
                <img src="img/gajidori.png" alt="gajidori" id="gajidori">
            </div>
        </header>
        <nav>
        	<ul>
                <li><a>자유게시판</a></li>
                <li><a>리뷰게시판</a></li>
                <li><a>문의게시판</a></li>
                <li><a>마이페이지</a></li>
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
			<form action="DeleteServlet" method="post">
				<label for="REVIEW_NO"></label>
		        <input type="text" placeholder='삭제할 번호를 작성해주세요.' id="REVIEW_NO" name="REVIEW_NO" required><br>
		<div>
        	<button class="btn1"><a href ="review_list.jsp">목록</a></button>
        </div>
        <div class="canBtn">
   			<button class="btn3" type="submit" onclick="cancelbutton()">취소</button>
       	</div>
        <div class="delBtn">
       		<button class="btn3" type="submit" onclick="deletebutton()">삭제</button>
       	</div>
			</form>
		</div>
    	</div>
	</body>
</html>