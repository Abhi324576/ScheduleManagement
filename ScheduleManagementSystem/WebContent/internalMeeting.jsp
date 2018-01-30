<!DOCTYPE html>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<html>
<head>
	<title>Internal Meeting</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<style>
	table {
	 border-collapse: collapse;
   
    background-color: LightGray;
    padding-top: 90px;
    padding-right: 60px;
    padding-bottom: 30px;
    padding-left: 80px;
    width: 60%;
     font-size: 20px;
    font-family:Comic Sans MS;
   
}
input[type=submit] {
    padding:8px 20px; 
    background:#FFA07A; 
    border:0 none;
    cursor:pointer;
    border-radius: 5px; 
    font-size: 18px;
     font-family:Comic Sans MS;
}

th,td{
 padding: 12px;
  height: 100%;
}
h1{
  font-family:Comic Sans MS;
   color: 		#696969;
}
div{
 font-family:Comic Sans MS;
 color: 	#FFA07A;
 font-size: 27px;
}

input {
   
    padding: 8px 15px;
    margin: 1px 0;
    border: 1px solid;
    border-radius: 4px;
}
textarea{
padding: 8px 15px;
    margin: 1px 0;
    border: 1px solid;
    border-radius: 4px;
}

select{
padding: 8px 15px;
    margin: 1px 0;
    border: 1px solid;
    border-radius: 4px;

}

	</style>
</head>
<script type="text/javascript">
	function back() {
		window.history.back();
	}
	function abc() {
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1; //January is 0!
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
g
		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("input-add-event-name").setAttribute("min",
				today);
	}
</script>
<body onload="abc()">
<form name="objform" action="InternalMeet" method="POST">
 <table align="center" >
        
        <h1 align="center" class="style1" id="header"> SCHEDULE MEETING</h1>
        <div id="footer">
            <div align="center" class="style"  >Internal Meeting </div>
            
            <tr>
            <td> Meeting name </td>
              <td>
                  <input type="text" name="meetingName" pattern="[A-Za-z ]+" title="Meeting Name is always in letters" maxlength="50" required/>
              </td>
              </tr>
              
              <tr>
             <td class="style16">Meeting description </td>
                <td><textarea name="meetingDescription" required pattern="[A-Za-z]+" title="Description is always in letters" maxlength="50" ></textarea></td>
              </p>
              </tr>
              
              <tr>
               <td class="style16" >Meeting type</td>
                <td><select name="meetingType" required="">
                  <option>Technical meeting</option>
                  <option>Non-Technical meeting</option>
                </select></td>
              </p>
              </tr>
             
             <tr>
             <td class="style16">Start time</td>
              <td>  <input type="time" name="startTime"  required></td>
             </tr>
              
              <tr>
              <td class="style16">Date<span class="style14"></td>
              <td>  <input name="date" type="Date" size="10"  required="" id="input-add-event-name" min="2001-10-23"/></td>
              </span>
                </p>
              </tr>
             
             <tr>
             <td class="style16" required>Meeting options </td>
               <td> 
	               <input name="meetingOptions" type="radio" value="single"  />single
	                <input name="meetingOptions" type="radio" value="weekly" />weekly
	                <input name="meetingOptions" type="radio" value="monthly" />monthly              
                </td>
                </tr>
                
                <tr>
                <td class="style16">Number of participants</td>
               	<td> <input name="numberOfParticipants" type="text" required="" pattern="[0-9]+" title="Number Of Participants Should be number"/> </td>
               	
              	</tr>
              
              	<tr>
              		<td class="style14">Event ID</td>
             		<td><input name="eventId" type="text" size="10" maxlength="10" pattern="[A-Za-z0-9]+" required/></td>
            	</tr>
              
              <tr>
              <td class="style14">E-mail ID</td>
              <td> <input type="text" name="emailId"  required /></td>
              </tr>
              
              <tr>
               <td class="style14"></td>
                <td><input type="submit" name="submit2" value="Schedule meeting" />
              </td>
             
              
              </table>
             
            </div>
          
</form>

</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>