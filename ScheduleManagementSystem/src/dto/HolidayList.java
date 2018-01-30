package dto;

public class HolidayList {

	private int sNo;
	private String dayName;
	private String holidayDate;
	private String ocassion;

	public HolidayList() {
		super();
	}

	
	public int getsNo() {
		return sNo;
	}


	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getDayName() {
		return dayName;
	}


	public void setDayName(String dayName) {
		this.dayName = dayName;
	}


	public String getHolidayDate() {
		return holidayDate;
	}

	public void setHolidayDate(String holidayDate) {
		this.holidayDate = holidayDate;
	}

	public String getOcassion() {
		return ocassion;
	}

	public void setOcassion(String ocassion) {
		this.ocassion = ocassion;
	}


	@Override
	public String toString() {
		return "HolidayList [sNo=" + sNo + ", dayName=" + dayName + ", holidayDate=" + holidayDate + ", ocassion="
				+ ocassion + "]";
	}

	
	
	
}
