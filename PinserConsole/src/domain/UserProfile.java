package domain;

public class UserProfile {
	int totalVideoPosted,totalComments;
	String uid;
	public int getTotalVideoPosted() {
		return totalVideoPosted;
	}
	public void setTotalVideoPosted(int totalVideoPosted) {
		this.totalVideoPosted = totalVideoPosted;
	}
	public int getTotalComments() {
		return totalComments;
	}
	public void setTotalComments(int totalComments) {
		this.totalComments = totalComments;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}

	

}
