<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="EUC-KR">
			<title>가지고 싶은 물건, 가지가지 다~ 있다! 가지마켓</title>
	       
	        <style>
	        	body{
				    margin: 0;
					text-align: center;
				}
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
				    height:220px;
				    margin: auto;
				    text-align: center;
				}
				
				form {
				    background-color: #fff;
				    border: 1px solid #ccc;
				    border-radius: 5px;
				    padding: 100px;
					margin: auto;
				    margin-top: 80px;
				    width: 320px;
				    display: inline-block;
		          	text-align: center;
					margin: auto;
				}
				label {
				    display: block;
				    margin-bottom: 5px;
				}
				#login-join-link{
				    text-align: right;
				    line-height: 0;
				}
				#gajimarket{
				    color: #6C44BB;
				    text-shadow: 10px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
				    font-family: 'LOTTERIACHAB';
				    font-size: 80pt;
				    margin: auto;
				    margin-top: 10%;
				    line-height: 0;
				    letter-spacing: 10px;
				}
				#gajidori{
				    width: 9%;
				    margin: auto;
				    margin-top: -7%;
				    margin-right: -45%;
				    line-height: 0;
				    letter-spacing: 10px;
				}
				nav{
				    background-color: lavender;
				}
				ul li{
    				display: inline-block;
				    font-family: 'SUITE-Regular';
				    font-size: 20pt;
				    margin: 3%;
				    text-align: center;
				}
				.logo{
				    color: purple;
				    font-family: 'LOTTERIACHAB';
				    font-size: 60pt;
				    text-align: center;
				    line-height: 0;
				    margin: auto;
				}
				.category{
				    height: 30px;
				    background-color: beige;
				    font-family: 'SUITE-Regular';
				    font-size: 20pt;
				    text-align: center;
				}
				input[type="text"],
				input[type="email"],
				input[type="date"] {
				    width: 300px;
				    padding: 10px;
				    margin-bottom: 15px;
				    border: 1px solid #ccc;
				    border-radius: 5px;
				    display: inline-block;
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
		            margin: auto;
		            padding: 13px;
		            text-align: left;
		            font-weight: 700;
		            transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
		            display : inline-block;
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
		            margin: auto;
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
		            margin: auto;
		            padding: 13px;
		            text-align: center;
		            font-weight: 700;
		            transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
		         }
		         .btn3:hover, .btn3:focus{
					box-shadow: 0 0 40px 40px #5C408C inset;
					color: #fff;
					outline: 0;
		         }
		         .btn_play{
		         	float : right;
		         	text-align : right;
		         }
		         .aa {
		         	width:100%;
		         	text-align: center;
					margin: auto;
		         }
		         .wing1{
		          	width:33%;
					text-align: right;
					margin: auto;
					float: left;
		         }
		         .wing2{
		         	width:33%;
					text-align: left;
					margin: auto;
					float: right;
		         }
		         .mainform{
		         	width:34%;
					text-align: center;
					margin: auto;
		         }
			</style>
		</head>

	
<body>
	<!-- <p id="login-join-link">로그인 회원가입</p>
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
                <li>자유게시판</li>
                <li>리뷰게시판</li>
                <li>문의게시판</li>
                <li>마이페이지</li>
            </ul>
        </nav> -->
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
                <li>자유게시판</li>
                <li>리뷰게시판</li>
                <li>문의게시판</li>
                <li>마이페이지</li>
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
				<form action="ReviewServlet" method="post">
					
						<label for="rTitle">제목</label>
				        <input type="text" id="rTitle" name="rTitle" required><br>
				        
					    <label for="rFile">첨부</label>
				        <input type="file" id="rFile" name="rFile" required><br>
				
				        <label for="rText">내용</label>
				        <input type="text" id="rText" name="rText" required><br>
				        
				        <label for="rId">ID</label>
				        <input type="text" id="rId" name="rId" required><br><br>
					
					<div>
				        <button class="btn1" style="float: left" type="submit" id="post-button">파일첨부</button>
			        </div>
			        <div>
			       		<button class="btn3" style="float: right" type="submit" onclick="cancelbutton()">취소</button>
			       	</div>
			        <div>
			        	<button class="btn3" style="float: right" type="submit" onclick="createbutton()">등록</button>
			       	</div>
			    </form>
			</div>
	    	
    	</div>
</body>
		
<foot>
		
 </foot>
</html>