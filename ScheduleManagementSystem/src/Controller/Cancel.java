package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CancelDao;
import dto.Events;

/**
 * Servlet implementation class Cancel
 */
@WebServlet("/Cancel")
public class Cancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cancel() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eventId = request.getParameter("eventId");
		Events event=new Events(eventId);
		PrintWriter out=response.getWriter();
		CancelDao cd=new CancelDao();
		boolean valid=cd.delete(event);
		if(valid)
		{
			out.write("<script>alert('Deleted Successfully');</script>");
			response.sendRedirect("adminPage.jsp");
		}
		else
		{
			out.write("<script>alert('Something Went Wrong');</script>");
			RequestDispatcher rd=request.getRequestDispatcher("cancelEvent.jsp") ;
			rd.include(request, response);
		}
		
	}

}
