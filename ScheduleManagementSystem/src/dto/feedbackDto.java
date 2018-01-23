package dto;

public class feedbackDto {

	private String fid;
	private String fname;
	private String femail;
	private String fdeptName;
	private String freview;
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
	@Override
	public String toString() {
		return "feedbackDto [fid=" + fid + ", fname=" + fname + ", femail=" + femail + ", fdeptName=" + fdeptName
				+ ", freview=" + freview + "]";
	}
	
	
	
}
