package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.UVideoComment;
import domain.UserProfile;
import domain.UserVideo;
import service.UVideoCommentService;
import service.UserProfileService;
import service.UserVideoService;

/**
 * Servlet implementation class userActivityController
 */
@WebServlet("/userActivityController")
public class userActivityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userActivityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String userid = request.getParameter("userid");
		System.out.println("this is print userid"+userid);
		System.out.println("this is print request.getParameter"+request.getParameter("userid"));
		/*String u = request.getParameter("userid");*/
		/*int userid = Integer.parseInt(u);*/
		
		if(action.equals("user")){
						
			UserProfileService uPS = new UserProfileService();
			UserVideoService uVS = new UserVideoService();
			UVideoCommentService uVCS = new UVideoCommentService();
			try {
			
				/*String convertedStartDate = dateFormatNeeded.format(date);
				date = userDateFormat.parse(endDate);
				String convertedEndDate = dateFormatNeeded.format(date);*/
			
				
				List<UserVideo> userVideoData = uVS.getVideoForUser(userid);
				List<UVideoComment> userVideoCommentData = uVCS.getVCommentForUser(userid);
				UserProfile UP = uPS.getProfile(userid);
				
				request.setAttribute("UP", UP);
				request.setAttribute("uservideo", userVideoData);
				request.setAttribute("uservideocomment", userVideoCommentData);
				request.getRequestDispatcher("user.jsp").forward(request, response);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
	}

}
