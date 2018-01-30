package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UpdateDao;
import dto.Events;

/**
 * Servlet implementation class Show
 */
@WebServlet("/Show")
public class Show extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		String eventId = request.getParameter("eventId");
   		Events event=new Events(eventId);
   		UpdateDao ud = new UpdateDao();
   		Events e = ud.show(event);
   		System.out.println("update.jsp?meetingName="+e.getEmailId()+"&meetingDescription="+e.getMeetingDescription());
   		RequestDispatcher rd=request.getRequestDispatcher("update.jsp?meetingName="+e.getMeetingName()+"&meetingDescription="+e.getMeetingDescription()+"&meetingType="+e.getMeetingType()+"&startTime="+e.getStartTime()+"&date="+e.getDate()+"&meetingOptions="+e.getMeetingOptions()+"&numberOfParticipants="+e.getNumberOfParticipants()+"&eventId="+e.getEventId()+"&emailId="+e.getEmailId());
   		rd.forward(request, response);
   		
	}

}
