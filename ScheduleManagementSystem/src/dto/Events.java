package dto;

public class Events {

	private String meetingName;
	private String meetingDescription;
	private String meetingType;
	private String startTime;
	private String date;
	private String meetingOptions;
	private String numberOfParticipants;
	private String eventId;
	private String emailId;
	
	public Events() {
		super();
	}
	public Events(String meetingName, String meetingDescription, String meetingType, String startTime, String date,
			String meetingOptions, String numberOfParticipants, String eventId, String emailId) {
		super();
		this.meetingName = meetingName;
		this.meetingDescription = meetingDescription;
		this.meetingType = meetingType;
		this.startTime = startTime;
		this.date = date;
		this.meetingOptions = meetingOptions;
		this.numberOfParticipants = numberOfParticipants;
		this.eventId = eventId;
		this.emailId = emailId;
	}
	public Events(String eventId) {
		this.eventId = eventId;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	public String getMeetingDescription() {
		return meetingDescription;
	}
	public void setMeetingDescription(String meetingDescription) {
		this.meetingDescription = meetingDescription;
	}
	public String getMeetingType() {
		return meetingType;
	}
	public void setMeetingType(String meetingType) {
		this.meetingType = meetingType;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getMeetingOptions() {
		return meetingOptions;
	}
	public void setMeetingOptions(String meetingOptions) {
		this.meetingOptions = meetingOptions;
	}
	public String getNumberOfParticipants() {
		return numberOfParticipants;
	}
	public void setNumberOfParticipants(String numberOfParticipants) {
		this.numberOfParticipants = numberOfParticipants;
	}
	public String getEventId() {
		return eventId;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	@Override
	public String toString() {
		return "Events [meetingName=" + meetingName + ", meetingDescription=" + meetingDescription + ", meetingType="
				+ meetingType + ", startTime=" + startTime + ", date=" + date + ", meetingOptions="
				+ meetingOptions + ", numberOfParticipants=" + numberOfParticipants + ", eventId=" + eventId
				+ ", emailId=" + emailId + "]";
	}
	
	
	
}
