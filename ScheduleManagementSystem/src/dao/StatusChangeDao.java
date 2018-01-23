package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.MyConnection;
import dto.RegisterDto;

public class StatusChangeDao {
	MyConnection mcon;

	public StatusChangeDao() {
		mcon = new MyConnection();
	}

	public boolean approve(RegisterDto register) {
		boolean valid = false;

		try {
			Connection con = mcon.getMcon();
			String q = "update register set status='1' where email=?";
			PreparedStatement ps = con.prepareStatement(q);
			System.out.println(register.getUserEmail());
			ps.setString(1, register.getUserEmail());
			ps.execute();
			valid = true;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return valid;

	}
}


