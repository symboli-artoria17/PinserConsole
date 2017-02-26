package domain;
import java.util.Date;

public class UVideoComment {
	int videoId;
	String video_Caption,video_Comment;
	Date comment_Created_At;
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public String getVideo_Caption() {
		return video_Caption;
	}
	public void setVideo_Caption(String video_Caption) {
		this.video_Caption = video_Caption;
	}
	public String getVideo_Comment() {
		return video_Comment;
	}
	public void setVideo_Comment(String video_Comment) {
		this.video_Comment = video_Comment;
	}
	public Date getComment_Created_At() {
		return comment_Created_At;
	}
	public void setComment_Created_At(Date comment_Created_At) {
		this.comment_Created_At = comment_Created_At;
	}

	

}
