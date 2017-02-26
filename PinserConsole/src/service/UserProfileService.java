package service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import domain.UserProfile;

import persistence.DBConnection;
public class UserProfileService {
	public UserProfile getProfile(String userid){
	
		String uid = userid;
		/*int uid = Integer.parseInt(U);*/
		
/*public UserProfile getProfile(int userid){*/
		/*int uid = userid;*/
		UserProfile up = new UserProfile();
		Statement stmt1,stmt2;
		String query1 = "select count(*)as totalComment from video_comments where user_id ="+uid;
		String query2 = "select count(*) as totalVideo from user_videos where user_id ="+uid;
		DBConnection connection = new DBConnection();
		Connection conn = connection.getSimpleConnection();
		try{
			stmt1 = conn.createStatement();
			stmt2 = conn.createStatement();
			System.out.println(query2);
			ResultSet rs1 = stmt1.executeQuery(query1);
			ResultSet rs2 = stmt2.executeQuery(query2);
			up.setUid(userid);
			while(rs2.next()){
			up.setTotalVideoPosted(rs2.getInt("totalVideo"));
			}
			while(rs1.next()){
			up.setTotalComments(rs1.getInt("totalComment"));
			}
			rs1.close();
			rs2.close();
			conn.close();
		}
		
		catch(SQLException e){
			e.printStackTrace();
		}
		return up;
	}

}
