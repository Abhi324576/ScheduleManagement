package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.MyConnection;
import dto.Events;
import dto.RegisterDto;

public class ApproveDao {
MyConnection mcon;
	
	
	public ApproveDao() {
		mcon = new MyConnection();
	}


	
		
		public ArrayList<RegisterDto> show() {
			ArrayList<RegisterDto> list = new ArrayList<>();

			try {
				Connection con = mcon.getMcon();
				String q = "select * from register where status IS NULL";
				PreparedStatement ps = con.prepareStatement(q);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					RegisterDto r = new RegisterDto();
					r.setUserId(rs.getInt(1));
					r.setUserName(rs.getString(2));
					r.setUserDOB(rs.getString(3));
					r.setUserPosition(rs.getString(4));
					r.setUserEmail(rs.getString(5));
					r.setStatus(rs.getString(8));
					list.add(r);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}

	

			
	
}



