package com.kh.semi;

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
import javax.servlet.http.HttpSession;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DELETE FROM BOARD_QNA WHERE ACCOUNT_ID = ?;
		// HttpSession httpSession = request.getSession();
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:XE";
		String jdbcUsername = "thirties";
		String jdbcPassword = "3030";
		Connection connection = null;
		PreparedStatement ps = null;
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

			int rNo = Integer.parseInt(request.getParameter("REVIEW_NO"));
			ReviewDAO dao = new ReviewDAO();
			int result =  dao.delete(rNo);
			
			String deleteSql = "DELETE FROM BOARD_REVIEW WHERE REVIEW_NO = ?";
			ps = connection.prepareStatement(deleteSql);
			ps.setInt(1, rNo);
			
			ps.executeUpdate();
			
			response.sendRedirect("review_success.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}