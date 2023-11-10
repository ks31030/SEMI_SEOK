import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
@MultipartConfig
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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

            // REVIEW_NO만 입력해서 데이터 삭제
            String rNo = request.getParameter("REVIEW_NO");
            String sql = "DELETE FROM BOARD_REVIEW WHERE REVIEW_NO=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, rNo); // Set REVIEW_NO parameter
            preparedStatement.executeUpdate();

            response.sendRedirect("review_list.jsp");
        } catch (SQLException e) {
            response.sendRedirect("review_error.jsp");
            e.printStackTrace();
        }
    }
}