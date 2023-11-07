
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReviewServlet")
public class ReviewServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// JDBC 불러오기
		
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
		String jdbcUsername = "thirties";
		String jdbcPassword = "3030";
		try {
			
			 Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            
			//넣고자하는 DB 값 설정
			/*
			 * CREATE TABLE MemberInfo (
				    MNO INT PRIMARY KEY,
				    MName VARCHAR(50),
				    MEmail VARCHAR(100),
				    MBirth  DATE
			);*/
			   	int rNo = Integer.parseInt(request.getParameter("REVIEW_NO"));
			   	byte rFile = request.getParameter("REVIEW_FILE");
	            String rTitle = request.getParameter("REVIEW_TITLE");
	            String rText = request.getParameter("REVIEW_TEXT");
	            Date rTime = request.getParameter("REVIEW_TIME");
	            String rId = request.getParameter("ACCOUNT_ID");
			
			//회원가입 insert 
	            String sql = "INSERT INTO BOARD_REVIEW (REVIEW_NO, REVIEW_FILE, REVIEW_TITLE, REVIEW_TEXT, REVIEW_TIME, ACCOUNT_ID) VALUES (?, ?, ?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setInt(1, rNo);
	            preparedStatement.setByte(2, rFile);
	            preparedStatement.setString(3, rTitle);
	            preparedStatement.setString(4, rText);
	            preparedStatement.setDate(5, Date.valueOf(rTime));
	            preparedStatement.setString(6, rId);

	            preparedStatement.executeUpdate();
			
			//가입 성공할 경우 회원 정보를 세션에 저장
			//세션 객체를 통해 클라이언트와 서버간에 전송할 데이터를 저장하고
			//공유하는 작업을 수행
			//session "mno"라는 이름으로 데이터를 저장하는 역할
			//request : 현재 클라이언트의 요청에 대한 정보를 제공하는 역할을 함
			//session 이란 ? 웹이나 애플리케이션 상태를 유지하고 데이터를 저장하기 위해 사용
			//getSession() : request에서 현재 세션을 가지고 옴
			//setAttribute("mno", mno) : 세션에 데이터를 저장하는 메서드
			//"mno" 데이터를 저장하고, "mno" 변수 값이 해당 데이터로 설정되게 함
			//이렇게 저장된 데이터는 다른 서블릿이나 jsp 페이지에서 접근 가능함
	            request.getSession().setAttribute("REVIEW_NO", rNo);
	            request.getSession().setAttribute("REVIEW_FILE", rFile);
	            request.getSession().setAttribute("REVIEW_TITLE", rTitle);
	            request.getSession().setAttribute("REVIEW_TEXT", rText);
	            request.getSession().setAttribute("REVIEW_TIME", rTime);
	            request.getSession().setAttribute("ACCOUNT_ID", rId);
		
			//성공할 경우 이동할 페이지 설정해주고 다시 전송
			response.sendRedirect("review_success.jsp");
			
		} catch (SQLException e) {
			// 실패할 경우 이동할 페이지 설정
			response.sendRedirect("review_error.jsp");
			e.printStackTrace();
		}
	}

}