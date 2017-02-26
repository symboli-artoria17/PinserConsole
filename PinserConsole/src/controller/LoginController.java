package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.GraphComment;
import domain.GraphVideo;
import domain.UVideoComment;
import domain.UserProfile;
import domain.UserVideo;

import java.util.List;

import service.LoginService;
import service.UVideoCommentService;
import service.UserProfileService;
import service.UserVideoService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		System.out.println("ACTION: "+action);
		if(action.equals("checkForExistingUserName")){
			String userName = request.getParameter("userName");
			LoginService service = new LoginService();
			PrintWriter out = response.getWriter(  );
			if(service.isUserNameExisting(userName)){
				System.out.println("Name Taken");
				response.setContentType("text/html");
				out.println("<font color=red>");
                out.println("Name already taken");
                out.println("</font>");
                request.setAttribute("err", true);
			}else{
				System.out.println("name available");
				 out.println("<font color=green>");
                 out.println("Available");
                 out.println("</font>");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		
		if(action.equals("login")){
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			LoginService service = new LoginService();
			boolean userAuthenticated = service.getUserAuthenticated(userId,password);
			boolean isAdmin = service.isAdmin(userId, password);
			if(userAuthenticated){
				if(isAdmin){
				
				List<GraphComment> commentGraph = service.getCommentGraph();
				List<GraphVideo> videoGraph = service.getVideoGraph();
				
				
				request.setAttribute("list1",commentGraph);
				request.setAttribute("list2",videoGraph);
				request.getRequestDispatcher("homepage.jsp").forward(request, response);
				}
				else{
					//direct to userhome page with user information
					UserProfileService uPS = new UserProfileService();
					UserVideoService uVS = new UserVideoService();
					UVideoCommentService uVCS = new UVideoCommentService();
					try {
					
						/*String convertedStartDate = dateFormatNeeded.format(date);
						date = userDateFormat.parse(endDate);
						String convertedEndDate = dateFormatNeeded.format(date);*/
					
						String userid = service.getUID(userId,password);
						List<UserVideo> userVideoData = uVS.getVideoForUser(userid);
						List<UVideoComment> userVideoCommentData = uVCS.getVCommentForUser(userid);
						UserProfile UP = uPS.getProfile(userid);
						
						request.setAttribute("UP", UP);
						request.setAttribute("uservideo", userVideoData);
						request.setAttribute("uservideocomment", userVideoCommentData);
						request.getRequestDispatcher("userhome.jsp").forward(request, response);
					
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}else{
				request.setAttribute("error", "wrong user name or password");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			}else if(action.equals("signUpVolunteer")){
				String userId = request.getParameter("userId");
				LoginService service = new LoginService();
				if(service.isReturningUser(userId)){
					if(service.isReturningUserRegistered(userId)){
						//Already existing user, but not registered
						request.setAttribute("error", "Already registered user, Please Login!!");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}else{
						request.setAttribute("loggedinId", userId);
						request.getRequestDispatcher("signup.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("error", "User does not exist!!");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}else if(action.equals("signUp")){
				String loggedinId = request.getParameter("loggedinId");
				String userName = request.getParameter("userName");
				String fullName = request.getParameter("fullName");
				String schoolName = request.getParameter("schoolName");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String password = request.getParameter("password");
				
				LoginService service = new LoginService();
				try {
					if(service.registerUser(loggedinId,userName, fullName, schoolName, email, phone, password)){
						request.setAttribute("error", "Successfully Registered!! Please Login with your credentials again.");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
	}
}
