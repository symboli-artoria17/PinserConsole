package domain;

import java.util.Date;


public class VideoComment {
String userid, comment;
Date when;

public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
public Date getWhen() {
	return when;
}
public void setWhen(Date when) {
	this.when = when;
}

}
