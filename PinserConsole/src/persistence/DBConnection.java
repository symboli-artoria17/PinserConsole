/**
 * Created by gjm19_000 on 3/23/2016.
 */
package persistence;
import java.sql.*;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;

public class DBConnection {
	private int port = 3306;
	private String url = "jdbc:mysql://localhost";
	private String db = "pinser";
	private String user = "root";
	private String password = "root";
    /*static int lport = 4321;//æœ¬åœ°ç«¯å�£
    static String rhost = "localhost";//è¿œç¨‹MySQLæœ�åŠ¡å™¨
    static int rport = 3306;//è¿œç¨‹MySQLæœ�åŠ¡ç«¯å�£
*/
    /*public static void getSession() {
        String user = "root";//SSHè¿žæŽ¥ç”¨æˆ·å��
        String password = "h30oTP113TwqTjaXQtdEw";//SSHè¿žæŽ¥å¯†ç �
        String host = "104.236.230.208";//SSHæœ�åŠ¡å™¨
        int port = 22;//SSHè®¿é—®ç«¯å�£
        try {
            JSch jsch = new JSch();
            Session session = jsch.getSession(user, host, port);
            session.setPassword(password);
            session.setConfig("StrictHostKeyChecking", "no");
            session.connect();
            System.out.println(session.getServerVersion());//è¿™é‡Œæ‰“å�°SSHæœ�åŠ¡å™¨ç‰ˆæœ¬ä¿¡æ�¯
            int assinged_port = session.setPortForwardingL(lport, rhost, rport);
            System.out.println("localhost:" + assinged_port + " -> " + rhost + ":" + rport);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }*/

    public Connection getSimpleConnection() {
    	/*getSession();*/
        Connection conn = null;
      
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return conn = DriverManager.getConnection(url+":"+port+"/"+db, user,password );
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}