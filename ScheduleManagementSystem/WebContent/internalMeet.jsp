<%@page import="dao.Eventsdao"%>
<jsp:useBean id="event" class="dto.Events"></jsp:useBean>
<jsp:setProperty property="*" name="event"/>
<%
Eventsdao eventdao=new Eventsdao();
boolean i=eventdao.insert(event);
if(i)
{
	out.write("<script>alert('Event Added Successfully');</script>");
	
}
else
{
	out.write("<script>alert('Something wengt wrong');</script>");
}

%>