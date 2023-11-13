<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 작성</title>
<style>
body {
	margin: 0;
	text-align: center;
}

@font-face {
	font-family: 'LOTTERIACHAB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/LOTTERIACHAB.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

header {
	height: 220px;
	margin: auto;
	text-align: center;
}

form {
	background-color: #fff;
	border-radius: 5px;
	padding: 100px;
	width: 35%;
	display: inline-block;
	text-align: center;
	margin: auto;
	color: #5C408C;
	font-weight: 700;
}

label {
	display: block;
	margin-bottom: 5px;
}

#login-join-link {
	text-align: right;
	line-height: 0;
}

#gajimarket {
	color: #6C44BB;
	text-shadow: 10px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	font-family: 'LOTTERIACHAB';
	font-size: 80pt;
	margin: auto;
	margin-top: 10%;
	line-height: 0;
	letter-spacing: 10px;
}

#gajidori {
	width: 9%;
	margin: auto;
	margin-top: -7%;
	margin-right: -45%;
	line-height: 0;
	letter-spacing: 10px;
}

nav {
	background-color: lavender;
}

ul li {
	display: inline-block;
	font-family: 'SUITE-Regular';
	font-size: 20pt;
	margin: 3%;
	text-align: center;
}

li {
	position: relative;
}

li a:after {
	content: '';
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 3px;
	background-image: linear-gradient(90deg, #6C44BB, #6DA44C);
	opacity: 0;
	-webkit-transform: translateY(5px);
	-moz-transform: translateY(5px);
	transform: translateY(5px);
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	-moz-transition: -moz-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
}

li a:hover:before, li a:focus:before {
	opacity: 0;
	-webkit-transform: translateY(-2px);
	-moz-transform: translateY(-2px);
	transform: translateY(-2px);
}

li a:hover:after, li a:focus:after {
	opacity: 1;
	-webkit-transform: translateY(0px);
	-moz-transform: translateY(0px);
	transform: translateY(0px);
}

input[type="text"], input[type="email"], input[type="date"] {
	width: 90%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1.5px solid #1c7714;
	border-radius: 5px;
	display: inline-block;
	text-align: left;
	font-weight: 700;
}

textarea {
	width: 96%;
	height: 15em;
	border: 1.5px solid #1c7714;
	border-radius: 5px;
	font-weight: 700;
}

.btn1 {
	box-sizing: border-box;
	background-color: transparent;
	border: 2px solid #5C408C;
	border-radius: 0.6em;
	color: #5C408C;
	cursor: pointer;
	font-size: 0.8rem;
	line-height: 0.3;
	margin: auto;
	padding: 13px;
	font-weight: 700;
	transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
	display: inline-block;
	float: left;
}

.btn1:hover, .btn1:focus {
	box-shadow: 0 0 40px 40px #5C408C inset;
	color: #fff;
	outline: 0;
}

.btn2 {
	box-sizing: border-box;
	background-color: transparent;
	border: 2px solid #1c7714;
	border-radius: 1em;
	color: #1c7714;
	cursor: pointer;
	font-size: 1.5rem;
	line-height: 0.6;
	margin: 1%;
	padding: 13px;
	text-align: center;
	font-weight: 0;
	transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
}

.btn2:hover, .btn2:focus {
	box-shadow: 0 0 40px 40px #1c7714 inset;
	color: #fff;
	outline: 0;
}

.btn3 {
	box-sizing: border-box;
	background-color: transparent;
	border: 2px solid #5C408C;
	border-radius: 0.6em;
	color: #5C408C;
	cursor: pointer;
	font-size: 0.8rem;
	line-height: 0.3;
	margin: auto;
	padding: 13px;
	font-weight: 700;
	transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
	float: right;
}

.btn3:hover, .btn3:focus {
	box-shadow: 0 0 40px 40px #5C408C inset;
	color: #fff;
	outline: 0;
}

.btn_play {
	float: right;
	text-align: right;
}

.aa {
	width: 100%;
	text-align: center;
	margin: auto;
	position: absolute;
}

.wing1 {
	width: 25%;
	text-align: center;
	margin: auto;
	float: left;
	position: absolute;
	left: 22%;
	bottom: 50%;
}

.wing2 {
	width: 25%;
	text-align: center;
	margin: auto;
	float: right;
	position: absolute;
	right: 22%;
	bottom: 50%;
}

.mainform {
	width: 50%;
	text-align: center;
	margin: auto;
}
</style>
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
		<div class="wing1">
			<button class="btn2" onclick="prevButton()"><</button>
		</div>
		<div class="wing2">
			<button class="btn2" onclick="nextButton()">></button>
		</div>
		<div class="mainform">
			<form action="CreateServlet" method="post" enctype="multipart/form-data">

				<label for="REVIEW_TITLE">제목</label> <input type="text"
					placeholder='제목을 작성해주세요.' id="REVIEW_TITLE" name="REVIEW_TITLE"
					required><br>
					<label for="REVIEW_FILE">첨부</label>
					<input type="file" id="REVIEW_FILE" name="REVIEW_FILE" required><br>

				<label for="REVIEW_TEXT">내용</label> <input type="textarea"
					placeholder='내용을 작성해주세요.' id="REVIEW_TEXT" name="REVIEW_TEXT"
					required><br> <br> <label for="ACCOUNT_ID">ID</label>
				<input type="text" placeholder='작성하시는 분의 아이디를 입력해주세요.' id="ACCOUNT_ID" name="ACCOUNT_ID" required><br> <br>

				<div>
					<button class="btn1"><a href ="review_create.jsp">초기화</a></button>
				</div>
				<div class="canBtn">
					<button class="btn3" type="submit" onclick="cancelbutton()">취소</button>
				</div>
				<div class="creBtn">
					<button class="btn3" type="submit" onclick="createbutton()">등록</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>