package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.VideoComment;
import domain.VideoInfo;
import service.videoService;

import java.util.List;
/**
 * Servlet implementation class VController
 */
@WebServlet("/videoController")
public class videoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public videoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String videoid = request.getParameter("videoid");
		
		
		if(action.equals("video")){
						
			videoService VS = new videoService();
			try {
			
				/*String convertedStartDate = dateFormatNeeded.format(date);
				date = userDateFormat.parse(endDate);
				String convertedEndDate = dateFormatNeeded.format(date);*/
			
				
				List<VideoComment> videoComment = VS.getVideoComment(videoid);
				VideoInfo videoInfo = VS.getProfile(videoid);
				request.setAttribute("VI", videoInfo);
				request.setAttribute("VC", videoComment);
				
				request.getRequestDispatcher("video.jsp").forward(request, response);
			
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
