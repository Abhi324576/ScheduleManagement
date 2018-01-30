package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;
import dao.RegisterDao;
import dto.RegisterDto;

/**
 * Servlet implementation class RegisterValidate
 */
@WebServlet("/RegisterValidate")
public class RegisterValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String userDOB = request.getParameter("userDOB");
		String userPassword = request.getParameter("userpassword");
		String userPosition = request.getParameter("userPosition");

		RegisterDto rdto = new RegisterDto(Integer.parseInt(userId), userName, userEmail, userPosition, userDOB,
				userPassword);
		RegisterDao registerdao = new RegisterDao();
		PrintWriter out = response.getWriter();

		boolean value = registerdao.registerValidate(rdto);
		if (value) {

			out.write("<script>alert('Signup Successful')</script>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		} else {
			out.write("<script>alert('Signup Failed')</script>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
	}

}
