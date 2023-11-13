package com.kh.semi;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/ReadServlet")
@MultipartConfig
public class ReadServlet extends HttpServlet {
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
				String rNo = request.getParameter("REVIEW_NO");
	            String rTitle = request.getParameter("REVIEW_TITLE");
	            Part rFile = request.getPart("REVIEW_FILE");
	            String rText = request.getParameter("REVIEW_TEXT");
	            Timestamp rTime = ((ResultSet) request).getTimestamp("REVIEW_TIME");
	            String rId = request.getParameter("ACCOUNT_ID");
			//리뷰 insert
	            String sql = "SELECT * FROM BOARD_REVIEW WHERE ACCOUNT_ID='%?%' OR REVIEW_TEXT='%?%' ";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setString(1, rNo);
	            preparedStatement.setString(2, rTitle);
	            preparedStatement.setBinaryStream(3, rFile.getInputStream(),(int) rFile.getSize());
	            preparedStatement.setString(4, rText);
	            preparedStatement.setTimestamp(5, rTime);
	            preparedStatement.setString(6, rId);

	            preparedStatement.executeUpdate();
	            ResultSet resultSet = preparedStatement.executeQuery();
	           
	            request.getSession().setAttribute("REVIEW_NO", rNo);
	            request.getSession().setAttribute("REVIEW_TITLE", rTitle);
	            request.getSession().setAttribute("REVIEW_FILE", rFile);
	            request.getSession().setAttribute("REVIEW_TEXT", rText);
	            request.getSession().setAttribute("REVIEW_TIME", rTime);
	            request.getSession().setAttribute("ACCOUNT_ID", rId);

	            response.sendRedirect("review_detail.jsp");
		} catch (SQLException e) {

			response.sendRedirect("review_error.jsp");
			e.printStackTrace();
		}
	}
}