package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Video;
import domain.GraphVideo;
import domain.GraphComment;
import service.HomePageService;
import service.LoginService;

/**
 * Servlet implementation class homePageController
 */
@WebServlet("/homePageController")
public class homePageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public homePageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		/doGet(request, response);
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		DateFormat userDateFormat = new SimpleDateFormat("mm/dd/yyyy");
		DateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-mm-dd");
		Date date=null;
		try {
			date = userDateFormat.parse(startDate);
			String convertedStartDate = dateFormatNeeded.format(date);
			date = userDateFormat.parse(endDate);
			String convertedEndDate = dateFormatNeeded.format(date);
			HomePageService hps = new HomePageService();
			
			List<Video> homePageData = hps.getDataForDateRange(convertedStartDate,convertedEndDate);
			request.setAttribute("data", homePageData);
			LoginService service = new LoginService();
			List<GraphComment> commentGraph = service.getCommentGraph();
			List<GraphVideo> videoGraph = service.getVideoGraph();
			
			
			request.setAttribute("list1",commentGraph);
			request.setAttribute("list2",videoGraph);
			request.getRequestDispatcher("homepage.jsp").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
