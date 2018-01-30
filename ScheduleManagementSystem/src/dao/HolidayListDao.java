package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.MyConnection;
import dto.HolidayList;

public class HolidayListDao {


	private MyConnection mcon;
	
	public HolidayListDao() {
		mcon = new MyConnection();
	}
	
	public int addHoliday(HolidayList holidayList) {
		int i = 0;
		try {
			Connection con = mcon.getMcon();
			PreparedStatement s =con.prepareStatement("insert into holiday_list values(?,?,?,?)");
			s.setInt(1, holidayList.getsNo());
			s.setString(2, holidayList.getDayName());
			s.setString(3, holidayList.getHolidayDate());
			s.setString(4, holidayList.getOcassion());
			i = s.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public ArrayList<HolidayList> viewHolidayList() {
		ArrayList<HolidayList> list = new ArrayList<HolidayList>();
		try {
			Connection con = mcon.getMcon();
			PreparedStatement s = con.prepareStatement("select * from holiday_list");
			ResultSet rs = s.executeQuery();
			while(rs.next()) {
				HolidayList hlist = new HolidayList();
				hlist.setsNo(rs.getInt(1));
				hlist.setDayName(rs.getString(2));
				hlist.setHolidayDate(rs.getString(3));
				hlist.setOcassion(rs.getString(4));
				list.add(hlist);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int deleteHoliday(HolidayList holidayList) {
		int i = 0;
		try {
			Connection con = mcon.getMcon();
			PreparedStatement s = con.prepareStatement("delete from holiday_list where sNo = ?");
			s.setInt(1, holidayList.getsNo());
			i = s.executeUpdate();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
}
