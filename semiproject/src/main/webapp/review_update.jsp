<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.semi.UpdateServlet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 수정</title>
	<link rel="stylesheet" type="text/css" href="css/rUpdate.css">
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
            <form action="UpdateServlet" method="post" enctype="multipart/form-data">
                
                <label for="REVIEW_TITLE">제목</label>
                <input type="text" placeholder='제목을 수정해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE" required><br>

                <label for="REVIEW_TEXT">내용</label>
                <textarea rows="5" placeholder='내용을 수정해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT" required></textarea><br><br>
				
				<label for="REVIEW_NO">번호</label>
                <input type="text" placeholder='수정할 게시글의 번호를 입력해주세요.' id="REVIEW_NO" name="REVIEW_NO" required><br><br>
                <div>
                    <button class="btn1"><a href ="review_list.jsp">목록</a></button>
                    <button class="btn3" type="button" onclick="cancelbutton()">취소</button>
                    <button class="btn3" type="submit" onclick="updatebutton()">수정</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
