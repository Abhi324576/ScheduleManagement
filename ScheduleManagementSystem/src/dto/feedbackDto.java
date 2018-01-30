package dto;

public class feedbackDto {

	private String fid;
	private String fname;
	private String femail;
	private String fdeptName;
	private String freview;
	private String fmessage;
	private String eid;
	private String meetingName;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFemail() {
		return femail;
	}
	public void setFemail(String femail) {
		this.femail = femail;
	}
	public String getFdeptName() {
		return fdeptName;
	}
	public void setFdeptName(String fdeptName) {
		this.fdeptName = fdeptName;
	}
	public String getFreview() {
		return freview;
	}
	public void setFreview(String freview) {
		this.freview = freview;
	}
	public String getFmessage() {
		return fmessage;
	}
	public void setFmessage(String fmessage) {
		this.fmessage = fmessage;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	public feedbackDto(String fid, String fname, String femail, String fdeptName, String freview, String fmessage,
			String eid, String meetingName) {
		super();
		this.fid = fid;
		this.fname = fname;
		this.femail = femail;
		this.fdeptName = fdeptName;
		this.freview = freview;
		this.fmessage = fmessage;
		this.eid = eid;
		this.meetingName = meetingName;
	}
	@Override
	public String toString() {
		return "feedbackDto [fid=" + fid + ", fname=" + fname + ", femail=" + femail + ", fdeptName=" + fdeptName
				+ ", freview=" + freview + ", fmessage=" + fmessage + ", eid=" + eid + ", meetingName=" + meetingName
				+ "]";
	}
	
	
}
