package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import dto.RegisterDto;

/**
 * Servlet implementation class LoginValidate
 */
@WebServlet("/LoginValidate")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginValidate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*response.setHeader("Cache-Control","No-Cache");
		response.setHeader("Cache-Control","No-Store");*/
		
		String userEmail = request.getParameter("userEmail");
		String userpassword = request.getParameter("userpassword");

		RegisterDto rd1 = new RegisterDto(userEmail, userpassword);
		LoginDao ld = new LoginDao();
		String value = ld.loginValidate(rd1);
		System.out.println(value);

/*		HttpSession session = request.getSession();*/
		
		/*session.setAttribute("userEmail", userEmail);*/
		if (value.equals("nullify")) {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);

		} else if (value.equals("Employee")) {
			RequestDispatcher rd = request.getRequestDispatcher("employeeHome.jsp");
			rd.include(request, response);

		} else if (value.equals("HeadStaff")) {
			System.out.println("inside headstaff");
			RequestDispatcher rd = request.getRequestDispatcher("headstaffHome.jsp");
			rd.include(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("adminHome.jsp");
			rd.include(request, response);
		}
	}
}
