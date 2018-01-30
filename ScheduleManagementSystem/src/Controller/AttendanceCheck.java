package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.MyConnection;

/**
 * Servlet implementation class AttendanceCheck
 */
@WebServlet("/AttendanceCheck")
public class AttendanceCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String eventId = request.getParameter("eventId");
		String check = request.getParameter("ATD");
		System.out.println(check);
		MyConnection mcon = null;
		mcon = new MyConnection();
		Connection con = mcon.getMcon();
		String s = null;
		Integer n;
		String i = "select YorN from warn where eventId=?";
		try {
			PreparedStatement pst = con.prepareStatement(i);
			pst.setString(1, eventId);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				s = rs.getString(1);
			}
			if (check.equals("yes")) {
				n = Integer.parseInt(s);
				n++;
				s = n.toString();
				RequestDispatcher rd = request.getRequestDispatcher("Eview.jsp");
				rd.include(request, response);
			}
			i = "update warn set YorN=? where eventId=?";
			PreparedStatement ps = con.prepareStatement(i);
			ps.setString(1, s);
			ps.setString(2, eventId);
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}