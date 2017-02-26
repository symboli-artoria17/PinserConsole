package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import persistence.DBConnection;

public class TestDBConn {
	public static void main(String args[]){
		DBConnection db = new DBConnection();
		Connection conn = db.getSimpleConnection();
		if (conn!=null) System.out.println("success!");
		Statement stmt = null;
		ResultSet rs = null;
		try{
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from testtable");
			while(rs.next()){
				System.out.println(rs.getString("c1"));
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
}
