<%@page import="dao.RegisterDao"%>
<jsp:useBean id="register" class="dto.RegisterDto" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="register"></jsp:setProperty>
<%
RegisterDao registerdao=new RegisterDao();
//out.write(register.getUserName());
boolean value = registerdao.registerValidate(register);
if (value)
{
		
		out.write("<script>alert('Signup Successful')</script>");	
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
}
else{
	out.write("<script>alert('Signup Failed')</script>");	
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request, response);
}

%>