package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.OTPDao;

/**
 * Servlet implementation class ConfrimOTP
 */
@WebServlet("/ConfirmOTP")
public class ConfrimOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userOTP = request.getParameter("userOTP");
		String email = request.getParameter("email");
		System.out.println(email);
		PrintWriter out = response.getWriter();
		OTPDao odao = new OTPDao();
		boolean valid = odao.confirmOTP(email, Integer.parseInt(userOTP));
		if(valid) {
			System.out.println(valid);
			response.sendRedirect("ChangePassword.jsp?userOTP="+userOTP);
			/*RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
			rd.forward(request, response);*/
		}
		else {
			System.out.println(valid+" "+valid);
			out.write("<script>alert('Please Enter Correct OTP!!');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("ConfirmOTP.jsp");
			rd.include(request, response);
		}
	}

}
