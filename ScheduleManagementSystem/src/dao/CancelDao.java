package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.MyConnection;
import dto.Events;

public class CancelDao {

	MyConnection mcon;

	public CancelDao() {
		mcon = new MyConnection();
	}

	public boolean delete(Events event) {
		boolean valid = false;

		try {
			Connection con = mcon.getMcon();
			String q = "delete from Event where meetingName=?";
			PreparedStatement ps = con.prepareStatement(q);
			System.out.println(event.getMeetingName());
			ps.setString(1, event.getMeetingName());
			ps.execute();
			valid = true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return valid;

	}
}
