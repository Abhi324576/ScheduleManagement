package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.MyConnection;
import dto.Events;

public class UpdateDao {
	MyConnection mcon;

	public UpdateDao() {
		mcon = new MyConnection();
	}

	public Events show(Events es) {
		
		Events e = new Events();
		try {
			Connection con = mcon.getMcon();
			String q = "select * from event where eventId =?";
			PreparedStatement ps = con.prepareStatement(q);
			System.out.println(es.getEventId());
			ps.setString(1,es.getEventId());
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				
				e.setMeetingName(rs.getString(1));
				e.setMeetingDescription(rs.getString(2));
				e.setMeetingType(rs.getString(3));
				e.setStartTime(rs.getString(4));
				e.setDate(rs.getString(5));
				e.setMeetingOptions(rs.getString(6));
				e.setNumberOfParticipants(rs.getString(7));
				e.setEventId(rs.getString(8));
				e.setEmailId(rs.getString(9));
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return e;
	}
	public boolean insert(Events event) {
		boolean valid = false;

		try {
			Connection con = mcon.getMcon();
			String q = "update event set meetingName=?,meetingDescription=?,meetingType=?,startTime=?,date=?,meetingOptions=?,numberOfParticipants=?,emailId=? where eventId=?";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, event.getMeetingName());
			ps.setString(2, event.getMeetingDescription());
			ps.setString(3, event.getMeetingType());
			ps.setString(4, event.getStartTime());
			ps.setString(5, event.getDate());
			ps.setString(6, event.getMeetingOptions());
			ps.setString(7, event.getNumberOfParticipants());
			ps.setString(9, event.getEventId());
			ps.setString(8, event.getEmailId());
			ps.execute();
			valid = true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return valid;

	}
}






