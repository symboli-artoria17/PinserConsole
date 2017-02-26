package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.UserVideo;
import persistence.DBConnection;

public class UserVideoService {
	
public List<UserVideo> getVideoForUser(String userid){
	
	// TODO Auto-generated method stub
	
	String uid = userid;
	
/*public List<UserVideo> getVideoForUser (int userid){
	int uid = userid;*/
	Statement stmt = null;
	String query = "select  u.id as video_id, u.caption,"+
			"u.vote_count, concat(u.latitude,' / ', u.longitude) as location, u.view_count,"+
			"(select count(c.user_video_id)"+
			 "from video_comments as c where c.user_video_id =u.id) as comment_count, u.created_at "+
			 "from user_videos as u "+
			"where u.user_id ="+uid;
	DBConnection connection = new DBConnection();
	Connection con = connection.getSimpleConnection();
	 List<UserVideo> userVideoList = null;
	try {
		stmt = con.createStatement();
		System.out.println(query);
		 ResultSet rs = stmt.executeQuery(query);
		 userVideoList = new ArrayList<UserVideo>();
	        while (rs.next()) {
	        	UserVideo uvid = new UserVideo();
	        	uvid.setVideoID(rs.getInt("video_id"));
	        	uvid.setCaption(rs.getString("caption"));
	        	uvid.setVoteCount(rs.getInt("vote_count"));
	        	uvid.setLocation(rs.getString("location"));
	        	uvid.setViewCount(rs.getInt("view_count"));
	        	uvid.setCommentCount(rs.getInt("comment_count"));
	        	uvid.setCreatedTime(rs.getDate("created_at"));
	        	userVideoList.add(uvid);
	        }
	        rs.close();
	        con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return userVideoList;
}

}
