package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.feedbackDao;
import dto.feedbackDto;

/**
 * Servlet implementation class validateFeedback
 */
@WebServlet("/validateFeedback")
public class validateFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String fid = request.getParameter("fid");
		String fname = request.getParameter("fname");
		String femail = request.getParameter("femail");
		String fdeptName = request.getParameter("fdeptName");
		String freview = request.getParameter("freview");
		String fmessage = request.getParameter("fmessage");
		String eid = request.getParameter("eid");
		String meetingName = request.getParameter("meetingName");

		PrintWriter out = response.getWriter();
		feedbackDto dt = new feedbackDto(fid, fname, femail, fdeptName, freview, fmessage, eid, meetingName);

		feedbackDao fdao = new feedbackDao();
		boolean value = fdao.feedback(dt);
		if (value) {
			out.write("<script>alert('Your Feedback Sucessfully Registered');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("feedback.jsp");
			rd.include(request, response);
		} else {
			out.write("<script>alert('Something Went Wrong');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("feedback.jsp");
			rd.include(request, response);
		}
	}
}