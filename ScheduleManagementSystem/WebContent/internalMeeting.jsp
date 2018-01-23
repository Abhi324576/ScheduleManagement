<!DOCTYPE html>
<html>
<head>
	<title>Internal Meeting</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<style>
	table {
	 border-collapse: collapse;
    border: 1px solid black;
    background-color: LightGray;
    padding-top: 90px;
    padding-right: 60px;
    padding-bottom: 50px;
    padding-left: 80px;
    width: 60%;
     font-size: 20px;
      font-style: italic;
   
}
input[type=submit] {
    padding:8px 20px; 
    background:#FFA07A; 
    border:0 none;
    cursor:pointer;
    border-radius: 5px; 
    font-size: 18px;
     font-style: italic;
}

th,td{
 padding: 12px;
  height: 100%;
}
h1{
   font-style: italic;
   color: 		#696969;
}
div{
 font-style: italic;
 color: 	#FFA07A;
 font-size: 27px;
}

	</style>
</head>
<script>



</script>

<body>
<form name="objform" action="internalMeet.jsp" method="POST">
 <table align="center" >
        
        <h1 align="center" class="style1" id="header"  font> SCHEDULE MEETING</h1>
        <div id="footer">
            <div align="center" class="style"  >Internal Meeting </div>
            
            <tr>
            <td> Meeting name </td>
              <td>
                  <input type="text" name="meetingName"  required />
              </td>
              </tr>
              
              <tr>
             <td class="style16">Meeting description </td>
                <td><textarea name="meetingDescription"  maxlength="50" pattern="[A-Za-z]{50}" title="Less than 50 words " required></textarea></td>
              </p>
              </tr>
              
              <tr>
               <td class="style16" required>Meeting type</td>
                <td><select name="meetingType">
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
              <td>  <input name="date" type="Date" size="10" maxlength="10"  required /></td>
              </span>
                </p>
              </tr>
             
             <tr>
             <td class="style16" required>Meeting options </td>
               <td> <input name="meetingOptions" type="radio" value="single" />
                single
                <input name="meetingOptions" type="radio" value="weekly" />
                weekly
                <input name="meetingOptions" type="radio" value="monthly" />
                monthly              
                </td>
                </tr>
                
                <tr>
                <td class="style16">Number of participants</td>
               	<td> <input name="numberOfParticipants" type="text" maxlength="100"  required/> </td>
               	
              	</tr>
              
              	<tr>
              		<td class="style14">Event ID</td>
             		<td><input name="eventId" type="text" size="10" maxlength="10" pattern="[A-Za-z0-9]{3}" required/></td>
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