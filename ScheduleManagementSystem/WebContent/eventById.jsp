<%@page import="java.util.HashMap"%>
<%@ page contentType="application/pdf"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.FileNotFoundException"%> 
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>

<%
	Connection conn = null;
	try {
		
		//Connecting to the MySQL database
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedulesystem", "root", "root");

		String jrmxlFile = session.getServletContext().getRealPath("/eventById.jrxml");
		InputStream input = new FileInputStream(new File(jrmxlFile));
		HashMap hm = new HashMap();
		hm.put("m", request.getParameter("eventId"));
		//Gener ating the report
		JasperReport jasperreport = JasperCompileManager.compileReport(input);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperreport, hm, conn);
		
		//Exporting the report as PDF
		JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
		response.getOutputStream().flush();
		response.getOutputStream().close();

	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		if(conn!=null){
			conn.close();
		}
	}
%>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>