<%@page import="dao.ViewDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Events"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="event" class="dto.Events"></jsp:useBean>
<jsp:setProperty property="*" name="event" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCHEDULED CONFERENCES</title>
</head>
<body bgcolor="#E2E2E2">
	<h2 align="center">SCHEDULED MEETINGS</h2>
	<table border="1" align=center>
		<thead>
			<tr bgcolor="#26618D">
				<FONT FACE="Times New Roman" COLOR="#FFFF99">
					<th><font size="3" COLOR="#FFFF99">MEETING NAME</th>
					<th><font size="3" COLOR="#FFFF99">DESCRIPTION</th>
					<th><font size="3" COLOR="#FFFF99">MEETING TYPE</th>
					<th><font size="3" COLOR="#FFFF99">TIME</th>
					<th><font size="3" COLOR="#FFFF99">DATE</th>
					<th><font size="3" COLOR="#FFFF99">OPTIONS</th>
					<th><font size="3" COLOR="#FFFF99">PARTICIPANTS</th>
					<th><font size="3" COLOR="#FFFF99">EVENT ID</th>
					<th><font size="3" COLOR="#FFFF99">E-MAIL ID</th>
				</FONT>
			</tr>
		</thead>
		<%
			ViewDao vd = new ViewDao();
			ArrayList<Events> list = vd.show();
			for (Events e : list) {
		%>
		<tr bgcolor="#d3d2d1">
			<td><%=e.getMeetingName()%></td>
			<td><%=e.getMeetingDescription()%></td>
			<td><%=e.getMeetingType()%></td>
			<td><%=e.getStartTime()%></td>
			<td><%=e.getDate()%></td>
			<td><%=e.getMeetingOptions()%></td>
			<td><%=e.getNumberOfParticipants()%></td>
			<td><%=e.getEventId()%></td>
			<td><%=e.getEmailId()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>