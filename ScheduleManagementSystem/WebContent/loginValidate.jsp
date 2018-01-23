<%@page import="dao.RegisterDao"%>
<%@page import="dao.LoginDao"%>
<jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="login" />

<%
	LoginDao ld=new LoginDao();
	String value = ld.loginValidate(login);
	System.out.println(value);
	
	if (value.equals("nullify")) 
	{
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
		
	} 
	else if (value.equals("Employee")) 
	{
		RequestDispatcher rd = request.getRequestDispatcher("employeeHome.jsp");
		rd.include(request, response);
		
	} 
	else if (value.equals("HeadStaff")) 
	{
		System.out.println("inside headstaff");
		RequestDispatcher rd = request.getRequestDispatcher("headstaffHome.jsp");
		rd.include(request, response);
	}
	else 
	{
		RequestDispatcher rd = request.getRequestDispatcher("adminHome.jsp");
		rd.include(request, response);
	}
%>