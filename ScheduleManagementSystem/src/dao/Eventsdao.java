package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.MyConnection;
import dto.Events;

public class Eventsdao {

	MyConnection mcon;

	public Eventsdao() {
		mcon = new MyConnection();
	}

	public boolean insert(Events event) {
		boolean valid = false;

		try {
			Connection con = mcon.getMcon();
			String q = "insert into event values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, event.getMeetingName());
			ps.setString(2, event.getMeetingDescription());
			ps.setString(3, event.getMeetingType());
			ps.setString(4, event.getStartTime());
			ps.setString(5, event.getDate());
			ps.setString(6, event.getMeetingOptions());
			ps.setString(7, event.getNumberOfParticipants());
			ps.setString(8, event.getEventId());
			ps.setString(9, event.getEmailId());
			ps.execute();
			valid = true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return valid;

	}
}
