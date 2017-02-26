package domain;

import java.util.Date;

public class VideoInfo {
int totalComment, totalView, totalCount;
String caption;
Date dateCreated;

public int getTotalComment() {
	return totalComment;
}
public void setTotalComment(int totalComment) {
	this.totalComment = totalComment;
}
public int getTotalView() {
	return totalView;
}
public void setTotalView(int totalView) {
	this.totalView = totalView;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}
public String getCaption() {
	return caption;
}
public void setCaption(String caption) {
	this.caption = caption;
}
public Date getDateCreated() {
	return dateCreated;
}
public void setDateCreated(Date dateCreated) {
	this.dateCreated = dateCreated;
}



}
