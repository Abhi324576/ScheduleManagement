package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.MyConnection;
import dto.feedbackDto;

public class feedbackDao {
	MyConnection mcon;

	public feedbackDao() {
		mcon = new MyConnection();
	}

	public boolean feedback(feedbackDto feed) {
		boolean valid = false;
		try {
			Connection con = mcon.getMcon();
			String s = "insert into feedback values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(s);
			pst.setString(1, feed.getFid());
			pst.setString(2, feed.getFname());
			pst.setString(3, feed.getFemail());
			pst.setString(4, feed.getFdeptName());
			pst.setString(5, feed.getFreview());
			pst.setString(6, feed.getFmessage());
			pst.setString(7, feed.getEid());
			pst.setString(8, feed.getMeetingName());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return valid;
	}
}
