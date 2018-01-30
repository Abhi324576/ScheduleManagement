package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UpdateDao;
import dto.Events;

/**
 * Servlet implementation class Updated
 */
@WebServlet("/Updated")
public class Updated extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UpdateDao ud = new UpdateDao();
		PrintWriter out=response.getWriter();
		String meetingName=request.getParameter("meetingName");
		
		String meetingDescription=request.getParameter("meetingDescription");
		String meetingType=request.getParameter("meetingType");
		String startTime=request.getParameter("startTime");
		String date=request.getParameter("date");
		String meetingOptions=request.getParameter("meetingOptions");
		String numberOfParticipants=request.getParameter("numberOfParticipants");
	 	String eventId=request.getParameter("eventId");
		String emailId=request.getParameter("emailId");
		Events event=new Events(meetingName,meetingDescription,meetingType,startTime,date, meetingOptions,numberOfParticipants,eventId,emailId);
		boolean valid=ud.insert(event);
		if(valid)
		{
			out.write("<script>alert('Events Updated Successfully')</script>");
			RequestDispatcher rd=request.getRequestDispatcher("view.jsp");  
			rd.include(request, response);  
		}
		else
		{
			out.write("<script>alert('Something Went Wrong')</script>");	
			RequestDispatcher rd=request.getRequestDispatcher("updateEvent.jsp");  
			rd.include(request, response);  
		}

	}

}
