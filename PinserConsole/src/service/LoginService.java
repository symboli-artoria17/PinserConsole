package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import domain.GraphComment;
import domain.GraphVideo;
import domain.Video;
import persistence.DBConnection;

public class LoginService {

	public String getUID(String userId, String password){
	
		Statement stmt = null;
		String query = "Select * from login_smith where login_name = '"+userId+"' and password='"+password+"'";
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
		        if(rs.next()){
		        	String uid = rs.getString("user_id");
		        	return uid;
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "nothing";
	}
	public boolean isAdmin(String userId, String password){
		Statement stmt = null;
		String query = "Select * from login_smith where login_name = '"+userId+"' and password='"+password+"'";
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 
		        while(rs.next()){
		        	int Role = rs.getInt("role");
		        	if(Role == 1){
		        	return true;
		        	}
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean getUserAuthenticated(String userId, String password) {
		// TODO Auto-generated method stub
		

		// TODO Auto-generated method stub
		Statement stmt = null;
		String query = "Select * from login_smith where login_name = '"+userId+"' and password='"+password+"'";
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		        	return true;
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean isReturningUser(String userId) {
		// TODO Auto-generated method stub
		Statement stmt = null;
		String query = "select * from users where id ='"+userId+"'";
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		        	return true;
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean isReturningUserRegistered(String userId) {

		// TODO Auto-generated method stub
		Statement stmt = null;
		int id = Integer.parseInt(userId);
		String query = "select * from login_smith where user_id ="+id;
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		        	return true;
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean registerUser(String loggedinId, String userName, String fullName, String schoolName, String email, String phone,
			String password) throws SQLException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(loggedinId);
		int VOLUNTEER = 0;
		int phone_np = Integer.parseInt(phone);
		
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		PreparedStatement psmt = null;
		try {
			 psmt = con.prepareStatement("INSERT into"
					+ " login_smith values"
					+ "(?,?,?,?,?,?,?,?)");
			
			psmt.setInt(1, id);
			psmt.setString(2, userName);
			psmt.setString(3, password);
			psmt.setInt(4, VOLUNTEER);
			psmt.setString(5, fullName);
			psmt.setString(6, schoolName);
			psmt.setString(7, email);
			psmt.setInt(8, phone_np);
			
			if(psmt.executeUpdate()>0){
				return true;
			} return false;
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			psmt.close();
	        con.close();
		}
		
		return true;
	}
	

	public boolean isUserNameExisting(String userName) {
		// TODO Auto-generated method stub
		Statement stmt = null;
		String query = "select * from login_smith where login_name ='"+userName+"'";
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
		        while (rs.next()) {
		        	return true;
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public List<GraphComment> getCommentGraph() {
		// TODO Auto-generated method stub
		Statement stmt = null;
		String query = "SELECT DISTINCT monthname(v1.created_at),"+ 
						" (SELECT count(*) FROM video_comments v"+
						" WHERE monthname(v.created_at)=monthname(v1.created_at)) as 'No of Comments'"+
						" FROM video_comments v1";
		
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		/*HashMap<String,Integer> commentGraphMap = new HashMap<String, Integer>();*/
		List<GraphComment> commentGraph = null;
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 commentGraph = new ArrayList<GraphComment>();
		        while (rs.next()) {
		        	GraphComment gc = new GraphComment();
		        	gc.setMonth(rs.getString("monthname(v1.created_at)"));
		        	gc.setNumber(rs.getInt("No of Comments"));
		        	commentGraph.add(gc);
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return commentGraph;
	}

	public List<GraphVideo> getVideoGraph() {
		// TODO Auto-generated method stub
		Statement stmt = null;
		String query = "SELECT DISTINCT monthname(v1.created_at),"+ 
						" (SELECT count(user_id)"
						+ " FROM user_videos v"+
						" WHERE monthname(v.created_at)=monthname(v1.created_at)) as 'No of Videos'"+
						" FROM user_videos v1";
		
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		List<GraphVideo> videoGraph = null;
		
		try {
			stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery(query);
			 videoGraph = new ArrayList<GraphVideo>();
		        while (rs.next()) {
		        	GraphVideo gv = new GraphVideo();
		        	gv.setMonth(rs.getString("monthname(v1.created_at)"));
		        	gv.setNumber(rs.getInt("No of Videos"));
		        	videoGraph.add(gv);
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return videoGraph;
	}

}
