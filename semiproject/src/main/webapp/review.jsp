<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>후기게시판</title>
 <link rel="stylesheet" type="text/css" href="styles.css">
</head>
	<header>
		<p class="login-join-link">로그인 회원가입</p> <!-- 로그인 페이지, 회원가입 링크페이지 만들기-->
        <p class="logo">가지마켓</p>
        <p class="slogan">가지고 싶은 물건, 가지 가지 다 있다!</p>
	</header>
    	<div>
        <p class="category">카테고리 게시판1 게시판2 게시판3 찜(장바구니) 마이페이지</p> <!-- 나중에 링크로 연결 : <a>태그로 줄바꿈 없이 -->
        </div>
	<style>
		@font-face {
		    font-family: 'LOTTERIACHAB';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/LOTTERIACHAB.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'SUITE-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
		    font-weight: 400;
		    font-style: normal;
	    }
		header{
		    height:250px;
		    background-color: hotpink;
		}
		body{
		    margin-left: 350px;
		    margin-right: 350px;
		}
		.logo{
		    color: purple;
		    font-family: 'LOTTERIACHAB';
		    font-size: 60pt;
		    text-align: center;
		    line-height: 0;
		}
		.category{
		    height: 30px;
		    background-color: beige;
		    font-family: 'SUITE-Regular';
		    font-size: 20pt;
		    text-align: center;
		}
	     .btn1{
	              box-sizing: border-box;
	              background-color: transparent;
	              border: 2px solid #5C408C;
	              border-radius: 0.6em;
	              color: #5C408C;
	              cursor: pointer;
	              font-size: 0.8rem;
	              line-height: 0.3;
	              margin: 30px;
	              padding: 13px;
	              text-align: center;
	              font-weight: 700;
	              transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
         }

         .btn1:hover, .btn1:focus{
         box-shadow: 0 0 40px 40px #5C408C inset;
         color: #fff;
         outline: 0;
         }

         .btn2{
             box-sizing: border-box;
             background-color: transparent;
             border: 2px solid #1c7714;
             border-radius: 1em;
             color: #1c7714;
             cursor: pointer;
             font-size: 1.5rem;
             line-height: 0.6;
             margin: 30px;
             padding: 13px;
             text-align: center;
             font-weight: 0;
             transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
         
         }

         .btn2:hover, .btn2:focus{
         box-shadow: 0 0 40px 40px #1c7714 inset;
         color: #fff;
         outline: 0;
         }

         .btn3{
             box-sizing: border-box;
             background-color: transparent;
             border: 2px solid #5C408C;
             border-radius: 0.6em;
             color: #5C408C;
             cursor: pointer;
             font-size: 0.8rem;
             line-height: 0.3;
             margin: 20px;
             padding: 13px;
             text-align: center;
             font-weight: 700;
             transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
             margin-right: 10px;
         }

         .btn3:hover, .btn3:focus{
         box-shadow: 0 0 40px 40px #5C408C inset;
         color: #fff;
         outline: 0;
         }
	</style>
<body>
<button class="btn2" onclick="prevButton()"><</button>
<form action="ReviewServlet" method="post">

        <label for="rTitle">제목:</label>
        <input type="text" id="rTitle" name="rTitle" required><br>
        
	    <label for="rFile">첨부:</label>
        <input type="file" id="rFile" name="rFile" required><br>

        <label for="rText">내용:</label>
        <input type="text" id="rText" name="rText" required><br>
        
        <label for="rId">ID:</label>
        <input type="text" id="rId" name="rId" required><br>

		<button class="btn1" style="float: left" type="submit" id="post-button">파일첨부</button>
        <button class="btn3" style="float: right" onclick="createbutton()">등록</button>
        <button class="btn3" style="float: right" onclick="cancelbutton()">취소</button>
    </form>
</body>
<button class="btn2" onclick="nextButton()">></button>
<foot>
	<!--<button class="btn1" style="float: left" type="submit" id="post-button">파일첨부</button>
    <button class="btn3" style="float: right" onclick="cancelbutton()">취소</button>
    <button class="btn3" style="float: right" onclick="createbutton()">등록</button> -->
 </foot>
</html>