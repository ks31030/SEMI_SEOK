
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
            
			//�ְ����ϴ� DB �� ����
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
			
			//ȸ������ insert 
	            String sql = "INSERT INTO BOARD_REVIEW (REVIEW_NO, REVIEW_FILE, REVIEW_TITLE, REVIEW_TEXT, REVIEW_TIME, ACCOUNT_ID) VALUES (?, ?, ?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            preparedStatement.setInt(1, rNo);
	            preparedStatement.setByte(2, rFile);
	            preparedStatement.setString(3, rTitle);
	            preparedStatement.setString(4, rText);
	            preparedStatement.setDate(5, Date.valueOf(rTime));
	            preparedStatement.setString(6, rId);

	            preparedStatement.executeUpdate();
			
			//���� ������ ��� ȸ�� ������ ���ǿ� ����
			//���� ��ü�� ���� Ŭ���̾�Ʈ�� �������� ������ �����͸� �����ϰ�
			//�����ϴ� �۾��� ����
			//session "mno"��� �̸����� �����͸� �����ϴ� ����
			//request : ���� Ŭ���̾�Ʈ�� ��û�� ���� ������ �����ϴ� ������ ��
			//session �̶� ? ���̳� ���ø����̼� ���¸� �����ϰ� �����͸� �����ϱ� ���� ���
			//getSession() : request���� ���� ������ ������ ��
			//setAttribute("mno", mno) : ���ǿ� �����͸� �����ϴ� �޼���
			//"mno" �����͸� �����ϰ�, "mno" ���� ���� �ش� �����ͷ� �����ǰ� ��
			//�̷��� ����� �����ʹ� �ٸ� �����̳� jsp ���������� ���� ������
	            request.getSession().setAttribute("REVIEW_NO", rNo);
	            request.getSession().setAttribute("REVIEW_FILE", rFile);
	            request.getSession().setAttribute("REVIEW_TITLE", rTitle);
	            request.getSession().setAttribute("REVIEW_TEXT", rText);
	            request.getSession().setAttribute("REVIEW_TIME", rTime);
	            request.getSession().setAttribute("ACCOUNT_ID", rId);
		
			//������ ��� �̵��� ������ �������ְ� �ٽ� ����
			response.sendRedirect("review_success.jsp");
			
		} catch (SQLException e) {
			// ������ ��� �̵��� ������ ����
			response.sendRedirect("review_error.jsp");
			e.printStackTrace();
		}
	}

}