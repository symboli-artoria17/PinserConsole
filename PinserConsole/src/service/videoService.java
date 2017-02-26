package service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import domain.UserVideo;
import domain.VideoInfo;
import domain.VideoComment;
import persistence.DBConnection;

public class videoService {
	public VideoInfo getProfile(String videoid){
		VideoInfo Vi = new VideoInfo();
		Statement stmt1,stmt2;
		String query2 = "select count(*) from video_comments where user_video_id="+videoid;
		String query1 = "select vote_count,view_count,created_at,caption from user_videos where id="+videoid;
	

		DBConnection connection = new DBConnection();
		Connection conn = connection.getSimpleConnection();
		try{
			stmt1 = conn.createStatement();
			stmt2 = conn.createStatement();
			
			System.out.println(query1);
			System.out.println(query2);
			
			ResultSet rs1 = stmt1.executeQuery(query1);
			ResultSet rs2 = stmt2.executeQuery(query2);
			
			
			while(rs1.next()){
			Vi.setCaption(rs1.getString("caption"));
			Vi.setDateCreated(rs1.getDate("created_at"));
			Vi.setTotalCount(rs1.getInt("vote_count"));
			Vi.setTotalView(rs1.getInt("view_count"));
			}
			while(rs2.next()){
			Vi.setTotalComment(rs2.getInt("count(*)"));
			}
			rs1.close();
			rs2.close();
			conn.close();
		}
		
		catch(SQLException e){
			e.printStackTrace();
		}
		return Vi;
	}
	
	public List<VideoComment> getVideoComment(String videoid){
		Statement stmt = null;
		String query = "select user_id, comment, created_at from video_comments where user_video_id="+videoid;
				
		DBConnection connection = new DBConnection();
		Connection con = connection.getSimpleConnection();
		 List<VideoComment> videoComment = null;
		try {
			stmt = con.createStatement();
			System.out.println(query);
			 ResultSet rs = stmt.executeQuery(query);
			 videoComment = new ArrayList<VideoComment>();
		        while (rs.next()) {
		        	VideoComment VC = new VideoComment();
		        	VC.setUserid(rs.getString("user_id"));
		        	VC.setComment(rs.getString("comment"));
		        	VC.setWhen(rs.getDate("created_at"));
		        	videoComment.add(VC);
		        }
		        rs.close();
		        con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return videoComment;
	}

}
