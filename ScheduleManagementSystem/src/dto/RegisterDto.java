package dto;

public class RegisterDto {
	private String status;
	private int userId;
	private String userName;
	private String userEmail;
	private String userPosition;
	private String userDOB;
	private String userpassword;
	
	
	
	public RegisterDto(String status, int userId, String userName, String userEmail, String userPosition, String userDOB,
			String userpassword) {
		super();
		this.status = status;
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPosition = userPosition;
		this.userDOB = userDOB;
		this.userpassword = userpassword;
	
	}
	public RegisterDto() {
		super();
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPosition() {
		return userPosition;
	}
	public void setUserPosition(String userPosition) {
		this.userPosition = userPosition;
	}
	public String getUserDOB() {
		return userDOB;
	}
	public void setUserDOB(String userDOB) {
		this.userDOB = userDOB;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	
	@Override
	public String toString() {
		return "RegisterDto [status=" + status + ", userId=" + userId + ", userName=" + userName + ", userEmail="
				+ userEmail + ", userPosition=" + userPosition + ", userDOB=" + userDOB + ", userpassword="
				+ userpassword + "]";
	}
	
	}
	
	
	


