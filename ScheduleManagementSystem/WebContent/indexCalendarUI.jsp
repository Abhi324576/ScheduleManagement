<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calendar</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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

		today = yyyy + '-' + mm + '-' + dd;
		document.getElementById("input-add-event-name").setAttribute("min",
				today);
	}
</script>

<link rel="stylesheet" href="css/styleCalender.css">


</head>

<body onload="abc()">
	>

	<div class="calendar" id="calendar-app">
		<form action="holidayController.jsp" method="post">
			<div class="calendar--day-view" id="day-view">
				<span class="day-view-exit" id="day-view-exit">&times;</span> <span
					class="day-view-date" id="day-view-date">MAY 29 2016</span>
				<div class="day-view-content">

					<div class="day-highlight">
						<!-- You -->
						<span class="day-events" id="day-events">
							<!-- had no events
						for today -->
						</span> &nbsp; <span tabindex="0"
							onkeyup="if(event.keyCode != 13) return; this.click();"
							class="day-events-link" id="add-event" data-date>Add
							Holiday</span>
					</div>

					<div class="day-add-event" id="add-day-event-box"
						data-active="false">
						<div class="row">
							<div class="half">
								<!-- 	<label class="add-event-label">S.No <input
								type="text" class="add-event-edit add-event-edit--long"
								 id="input-add-event-name" name="sNo">
							</label>  -->

								<label class="add-event-label">Date<input type="date"
									class="add-event-edit add-event-edit--long"
									id="input-add-event-name" name="holidayDate" required=""
									min="2001-10-23">
								</label>
								<div id="datewarn"></div>
								<label class="add-event-label">Day<!-- <input
								type="" class="add-event-edit add-event-edit--long"
								name="dayName" required=""> --> <select name="dayName"
									class="add-event-edit add-event-edit--long" required=""
									style="background-color: #04b6e2; color: white">
										<option value="Sunday"
											style="background-color: #04b6e2; color: white">Sunday</option>
										<option value="Monday"
											style="background-color: #04b6e2; color: white">Monday</option>
										<option value="Tuesday"
											style="background-color: #04b6e2; color: white">Tuesday</option>
										<option value="Wednesday"
											style="background-color: #04b6e2; color: white">Wednesday</option>
										<option value="Thursday"
											style="background-color: #04b6e2; color: white">Thursday</option>
										<option value="Friday"
											style="background-color: #04b6e2; color: white">Friday</option>
										<option value="Saturday"
											style="background-color: #04b6e2; color: white">Saturday</option>
								</select>
								</label> <label class="add-event-label">Ocassion<input
									type="text" class="add-event-edit add-event-edit--long"
									id="input-add-event-name" name="ocassion" required="">
								</label> <input type="submit" value="Add" id="add-event-save"
									class="event-btn--save event-btn">
							</div>
							<!-- <div class="half">  -->

							<!-- </div>  -->
							<div class="half">
								<!-- <a onkeyup="if(event.keyCode != 13) return; this.click();"
								tabindex="0" id="add-event-save"
								class="event-btn--save event-btn">Save</a> <a tabindex="0"
								id="add-event-cancel" class="event-btn--cancel event-btn">cancel</a>  -->

							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="calendar--view" id="calendar-view">
				<div class="cview__month">
					<span class="cview__month-last" id="calendar-month-last">Apr</span>
					<span class="cview__month-current" id="calendar-month">May</span> <span
						class="cview__month-next" id="calendar-month-next">Jun</span>
				</div>
				<div class="cview__header">Sun</div>
				<div class="cview__header">Mon</div>
				<div class="cview__header">Tue</div>
				<div class="cview__header">Wed</div>
				<div class="cview__header">Thu</div>
				<div class="cview__header">Fri</div>
				<div class="cview__header">Sat</div>
				<div class="calendar--view" id="dates"></div>
			</div>

			<div class="footer">
				<span><span id="footer-date" class="">
						<!-- Today
					is May 30 -->
				</span></span> <input type="button" value="Back" id="add-event-save"
					onclick="back()" class="event-btn--save event-btn"
					style="background-color: #04b6e2"><br>
				<br>
			</div>
		</form>
	</div>
	<script src="js/indexCalender.js"></script>
</body>
</html>