package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.MyConnection;
import dto.RegisterDto;

public class RegisterDao {
	MyConnection mcon;
	
	
	public RegisterDao() {
		mcon = new MyConnection();
	}


	public boolean registerValidate(RegisterDto register)
	{ 
		boolean valid = false;
		try 
		{
			
		
			//if(register.getUserId() !=0 && register.getUserName() !=null && register.getUserPosition()!=null && register.getUserEmail() !=null && register.getUserpassword() !=null && register.getUserDOB() !=null) 
			{
				Connection con = mcon.getMcon();
				String s = "insert into register values(?,?,?,?,?,md5(?),?)";
				PreparedStatement pst = con.prepareStatement(s);
				pst.setInt(1,register.getUserId());
				pst.setString(2, register.getUserName());
				pst.setString(3, register.getUserDOB());
				pst.setString(4, register.getUserPosition());
				pst.setString(5, register.getUserEmail());
				pst.setString(6, register.getUserpassword());
				pst.setString(7,null);
				pst.executeUpdate();
				valid = true;
			//	return valid;
			}
			
		}catch (SQLException e) {
			// // TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return valid;
	}

}
