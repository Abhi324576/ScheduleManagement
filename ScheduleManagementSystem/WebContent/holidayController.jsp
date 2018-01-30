<%@page import="dao.HolidayListDao"%>
<jsp:useBean id="holidayList" class="dto.HolidayList"></jsp:useBean>
<jsp:setProperty property="*" name="holidayList"/>

<%
HolidayListDao hdao = new HolidayListDao();
int i= hdao.addHoliday(holidayList);
response.sendRedirect("viewHolidayList.jsp");
%>