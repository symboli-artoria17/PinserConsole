package service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.UVideoComment;
import persistence.DBConnection;

public class UVideoCommentService {
	
public List<UVideoComment> getVCommentForUser(String userid){
	
	// TODO Auto-generated method stub
	
	String uid = userid;
	
/*public List<UVideoComment> getVCommentForUser(int userid){
	int uid = userid;*/
	
	Statement stmt = null;
	String query = "select v.user_video_id as Video_ID, u.caption as Video_Caption, v.comment as Video_Comment, v.created_at as Comment_Created_At "+
					"from video_comments as v, user_videos as u "+
					"where u.id = v.user_video_id and v.user_id="+uid;
	DBConnection connection = new DBConnection();
	Connection con = connection.getSimpleConnection();
	 List<UVideoComment> uvCommentList = null;
	try {
		stmt = con.createStatement();
		System.out.println(query);
		 ResultSet rs = stmt.executeQuery(query);
		 uvCommentList = new ArrayList<UVideoComment>();
	        while (rs.next()) {
	        	UVideoComment uvc = new UVideoComment();
	        	uvc.setVideoId(rs.getInt("Video_ID"));
	        	uvc.setVideo_Caption(rs.getString("Video_Caption"));
	        	uvc.setVideo_Comment(rs.getString("Video_Comment"));
	        	uvc.setComment_Created_At(rs.getDate("Comment_Created_At"));
	        	uvCommentList.add(uvc);
	        }
	        rs.close();
	        con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return uvCommentList;
}

}
