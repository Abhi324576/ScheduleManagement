package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.MyConnection;
import dto.Events;

public class ViewDao {
	MyConnection mcon;

	public ViewDao() {
		mcon = new MyConnection();
	}

	public ArrayList<Events> show() {
		ArrayList<Events> list = new ArrayList<>();

		try {
			Connection con = mcon.getMcon();
			String q = "select * from event";
			PreparedStatement ps = con.prepareStatement(q);
			ResultSet rs = ps.executeQuery(q);
			while (rs.next()) {
				Events e = new Events();
				e.setMeetingName(rs.getString(1));
				e.setMeetingDescription(rs.getString(2));
				e.setMeetingType(rs.getString(3));
				e.setStartTime(rs.getString(4));
				e.setDate(rs.getString(5));
				e.setMeetingOptions(rs.getString(6));
				e.setNumberOfParticipants(rs.getString(7));
				e.setEventId(rs.getString(8));
				e.setEmailId(rs.getString(9));
				list.add(e);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
