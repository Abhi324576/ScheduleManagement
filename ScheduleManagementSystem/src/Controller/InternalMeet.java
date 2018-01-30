package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Eventsdao;
import dto.Events;

/**
 * Servlet implementation class InternalMeet
 */
@WebServlet("/InternalMeet")
public class InternalMeet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String meetingName = request.getParameter("meetingName");
		String meetingDescription = request.getParameter("meetingDescription");
		String meetingType=request.getParameter("meetingType");
		String startTime = request.getParameter("startTime");
		String date = request.getParameter("date");
		String meetingOptions = request.getParameter("meetingOptions");
		String numberOfParticipants = request.getParameter("numberOfParticipants");
		String eventId  = request.getParameter("eventId");
		String emailId = request.getParameter("emailId");
		Events event=new Events(meetingName,meetingDescription,meetingType,startTime,date,meetingOptions,numberOfParticipants,eventId,emailId);
		Eventsdao eventdao=new Eventsdao();
		PrintWriter out=response.getWriter();
		boolean i=eventdao.insert(event);
		if(i)
		{
			out.write("<script>alert('Event Added Successfully');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("adminPage.jsp") ;
			rd.include(request, response);
			
		}
		else
		{
			out.write("<script>alert('Something wengt wrong');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("internalMeeting.jsp");
			rd.include(request, response);
		}

	}

}
