import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
	private static final String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String jdbcUsername = "thirties";
	private static final String jdbcPassword = "3030";
	
	public ReviewDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public List<Review> getAllProducts(){
		List<Review> reviews = new ArrayList<>();
		try {
			Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "SELECT REVIEW_NO, REVIEW_TITLE, REVIEW_TEXT, REVIEW_TIME, ACCOUNT_ID FROM BOARD_REVIEW";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			
			while(resultSet.next()){
				int reviewNo = resultSet.getInt("REVIEW_NO");
				String reviewTitle = resultSet.getString("REVIEW_TITLE");
				String reviewText = resultSet.getString("REVIEW_TEXT");
				Timestamp reviewTime = resultSet.getTimestamp("REVIEW_TIME");
				String accountId = resultSet.getString("ACCOUNT_ID");
				
				Review review = new Review(reviewNo, reviewTitle, reviewText, reviewTime, accountId);
				reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
		
	}
	
	public Review getAccountId(String accountId) {
		Review review = null;
		List<Review> reviews = new ArrayList<>();
		try {
			Connection connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
			String sql = "SELECT REVIEW_NO, REVIEW_TITLE, REVIEW_TEXT, REVIEW_TIME, ACCOUNT_ID FROM BOARD_REVIEW WHERE ACCOUNT_ID = ?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			
			while(resultSet.next()){
				int reviewNo = resultSet.getInt("REVIEW_NO");
				String reviewTitle = resultSet.getString("REVIEW_TITLE");
				String reviewText = resultSet.getString("REVIEW_TEXT");
				Timestamp reviewTime = resultSet.getTimestamp("REVIEW_TIME");
				
				Review review1 = new Review(reviewNo, reviewTitle, reviewText, reviewTime, accountId);
				reviews.add(review1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//select해서 1만 볼 수 있는 쿼리 작성하고
		//new product 이용해서 값 가지고 오기.
		return review;
	}
}
