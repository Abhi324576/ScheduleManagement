package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.MyConnection;
import dto.RegisterDto;

public class LoginDao {

	MyConnection mcon;

	public LoginDao() {
		mcon = new MyConnection();

	}

	public String loginValidate(RegisterDto register) {
		 String position="nullify";
		try {
			Connection con = mcon.getMcon();
			String s = "select posi from register where email=? and status='1' and pass=md5(?)";
			PreparedStatement pst = con.prepareStatement(s);
			/*System.out.println(register.getUserEmail());*/
			pst.setString(1, register.getUserEmail());
			pst.setString(2, register.getUserpassword());
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				 position=rs.getString(1);
			}
			/*System.out.println(position);*/

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return position;
	}

	public String loginValidateIntermeet(RegisterDto rd1) {
		 String position="nullify";
			try {
				Connection con = mcon.getMcon();
				String s = "select posi from register where email=? and status='1'";
				PreparedStatement pst = con.prepareStatement(s);
				System.out.println(rd1.getUserEmail());
				pst.setString(1, rd1.getUserEmail());
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					 position=rs.getString(1);
				}
				System.out.println(position);

			} catch (SQLException e) {
				e.printStackTrace();
			}

			return position;
		}

		
}
