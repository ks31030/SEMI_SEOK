package com.kh.semi;

import java.io.IOException;
import java.sql.Blob;
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
		// JDBC �ҷ�����
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
	            String rTitle = request.getParameter("REVIEW_TITLE");
	            Part rFile = request.getPart("REVIEW_FILE");
	            String rText = request.getParameter("REVIEW_TEXT");
	            String rId = request.getParameter("ACCOUNT_ID");
			//���� insert
	            String sql = "UPDATE BOARD_REVIEW SET REVIEW_TITLE = ?, REVIEW_TEXT = ? WHERE REVIEW_NO = ?";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, rTitle);
	            preparedStatement.setBinaryStream(2, rFile.getInputStream(),(int) rFile.getSize());
	            preparedStatement.setString(3, rText);
	            preparedStatement.setString(4, rId);

	            preparedStatement.executeUpdate();
	           
	            request.getSession().setAttribute("REVIEW_TITLE", rTitle);
	            request.getSession().setAttribute("REVIEW_FILE", rFile);
	            request.getSession().setAttribute("REVIEW_TEXT", rText);
	            request.getSession().setAttribute("ACCOUNT_ID", rId);

	            response.sendRedirect("review_success.jsp");
		} catch (SQLException e) {

			response.sendRedirect("review_error.jsp");
			e.printStackTrace();
		}
	}
}