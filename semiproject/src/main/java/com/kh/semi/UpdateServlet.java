package com.kh.semi;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/UpdateServlet")
@MultipartConfig
public class UpdateServlet extends HttpServlet {
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
				String REVIEW_NO = request.getParameter("REVIEW_NO");
	            String REVIEW_TITLE = request.getParameter("REVIEW_TITLE");
	            String REVIEW_TEXT = request.getParameter("REVIEW_TEXT");
	            
	            String sql = "UPDATE BOARD_REVIEW SET REVIEW_TITLE=?, REVIEW_TEXT=? WHERE REVIEW_NO=?";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, REVIEW_NO);
	            preparedStatement.setString(2, REVIEW_TITLE);
	            preparedStatement.setString(3, REVIEW_TEXT);

	            int rowsUpdated = preparedStatement.executeUpdate();

	            if (rowsUpdated > 0) {
	                request.getSession().setAttribute("REVIEW_NO", REVIEW_NO);
	                request.getSession().setAttribute("REVIEW_TITLE", REVIEW_TITLE);
	                request.getSession().setAttribute("REVIEW_TEXT", REVIEW_TEXT);

	                response.sendRedirect("review_success.jsp");
	            } else {
	                response.sendRedirect("review_error.jsp");
	            }
	            
		} catch (SQLException e) {

			response.sendRedirect("review_error.jsp");
			e.printStackTrace();
		}
	}
}