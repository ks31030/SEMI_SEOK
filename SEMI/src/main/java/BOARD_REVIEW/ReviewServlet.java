
import java.io.IOException;
import java.sql.Connection;
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

				int rNo = Integer.parseInt(request.getParameter("review_no"));
	            String rTitle = request.getParameter("review_title");
	            String rText = request.getParameter("review_text");
	            String rId = request.getParameter("account_id");
			
			//후기 insert 
	            String sql = "INSERT INTO BOARD_REVIEW (REVIEW_NO, REVIEW_TITLE, REVIEW_TEXT, ACCOUNT_ID) VALUES (?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setInt(1, rNo);
	            preparedStatement.setString(2, rTitle);
	            preparedStatement.setString(3, rText);
	            preparedStatement.setString(4, rId);

	            preparedStatement.executeUpdate();
			
	            request.getSession().setAttribute("REVIEW_NO", rNo);
	            request.getSession().setAttribute("REVIEW_TITLE", rTitle);
	            request.getSession().setAttribute("REVIEW_TEXT", rText);
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