<%@page import="dao.HolidayListDao"%>
<%@page import="dto.HolidayList"%>
<jsp:useBean id="holidayList" class="dto.HolidayList" ></jsp:useBean>
<jsp:setProperty property="sNo" name="holidayList"></jsp:setProperty>
<% 
	HolidayListDao hdao= new HolidayListDao();
    int i = hdao.deleteHoliday(holidayList);
    response.sendRedirect("viewHolidayList.jsp");
%>