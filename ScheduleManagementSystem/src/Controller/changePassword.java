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
 * Servlet implementation class changePassword
 */
@WebServlet("/changePassword")
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userOTP = request.getParameter("userOTP");
		String pass = request.getParameter("pass");
		System.out.println(userOTP);
		OTPDao odao = new OTPDao();
		PrintWriter out = response.getWriter();
		boolean valid = odao.changePassword(userOTP,pass);
		if(valid) {
			response.sendRedirect("index.jsp");
		}
		else {
			out.write("<script>alert('Something Went Wrong');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
			rd.include(request, response);
		}
	}

}
