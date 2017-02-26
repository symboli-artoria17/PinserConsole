package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.Video;
import persistence.DBConnection;

public class HomePageService {
	
public List<Video> getDataForDateRange(String convertedStartDate, String convertedEndDate){
	
	// TODO Auto-generated method stub
	Statement stmt = null;
	
	String query = "select u.user_id, u.id as video_id, u.caption, "
			+ "u.vote_count, (Select 'N/A' from dual) as user_Description, "
					+ "concat(u.latitude,'/', u.longitude) as location, u.view_count, "
							+ "(select count(c.user_video_id) "
							+ "from video_comments AS c where c.user_video_id =u.id) as comment_count, u.created_at "
							+ "from user_videos AS u "
							+ "where u.created_at between '"+convertedStartDate+"' and '"+convertedEndDate+"'";
	DBConnection connection = new DBConnection();
	Connection con = connection.getSimpleConnection();
	 List<Video> homePageDataList = null;
	try {
		stmt = con.createStatement();
		System.out.println(query);
		 ResultSet rs = stmt.executeQuery(query);
		 homePageDataList = new ArrayList<Video>();
	        while (rs.next()) {
	        	Video vid = new Video();
	        	vid.setUserID(rs.getInt("user_id"));
	        	vid.setVideoID(rs.getInt("video_id"));
	        	vid.setCaption(rs.getString("caption"));
	        	vid.setVoteCount(rs.getInt("vote_count"));
	        	vid.setUser_Description(rs.getString("user_Description"));
	        	vid.setLocation(rs.getString("location"));
	        	vid.setViewCount(rs.getInt("view_count"));
	        	vid.setCommentCount(rs.getInt("comment_count"));
	        	vid.setCreatedTime(rs.getDate("created_at"));
	        	homePageDataList.add(vid);
	        }
	        rs.close();
	        con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return homePageDataList;
}

}
