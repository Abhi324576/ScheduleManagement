<%@page import="dto.HolidayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.HolidayListDao"%>
<jsp:useBean id="holidayList" class="dto.HolidayList"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 align="center" style="text-align: right;" >
</h3>
	<table align="center" border="1" cellpadding="1" >
		<thead>
			<tr>
				<th colspan="7" >Holiday List</th>
				
			</tr>
			<tr>
				<th >S.No</th>
				<th  >DAY</th>
				<th  >DATE</th>
				<th  >OCASSION</th>
				<th>DELETE</th>
				
				
			</tr>
		</thead>
		<tbody>
<%
	HolidayListDao hdao = new HolidayListDao();
    ArrayList<HolidayList> list = hdao.viewHolidayList();
	for(HolidayList m : list){
	%>
	<tr style="text-align: center;" >
		<td><%=m.getsNo() %></td>
		<td><%=m.getDayName()%></td>
		<td><%=m.getHolidayDate() %></td>
		<td><%=m.getOcassion() %></td>
		<td><a href="deleteHoliday.jsp?sNo=<%=m.getsNo() %>" >Delete</a></td>
	</tr>
	<%
	}

%>			
		</tbody>
		
	</table>
<!-- <h3 align="center" style="background-color: #cc5555; text-align: center;" >
	<a href="home.jsp" >Back</a>  -->
</body>
</html>