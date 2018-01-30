package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import conn.MyConnection;


public class OTPDao {

	MyConnection mcon;

	public OTPDao() {
		mcon = new MyConnection();
	}

	public String generateOTP(String mail) {
		int randomPin = (int) (Math.random() * 900000) + 100000;
		String otp = String.valueOf(randomPin);
		System.out.println(otp);
		Connection con = mcon.getMcon();
		String sql = "update register set userOTP=? where email=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println(mail);
			pst.setInt(1, Integer.parseInt(otp));
			pst.setString(2, mail);
			pst.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return otp;
	}

	public boolean confirmOTP(String email, int otp)
	{
		boolean valid = false;
		Connection con = mcon.getMcon();
		int dbOTP = 0;
		String sql = "select userOTP from register where email=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println(otp);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				dbOTP = rs.getInt(1);
			}
			if(otp == dbOTP) {
				valid = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
	}
	
	public boolean changePassword(String userOTP,String pass) 
	{
		boolean valid = false;
		Connection con = mcon.getMcon();
		String sql = "update register set pass=md5(?) where userOTP=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pass);
			pst.setInt(2, Integer.parseInt(userOTP));
			pst.execute();
			valid = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
		
	}
	
	public int sendOTP(String mail) {

		int i = 0;
		String to = mail;
		final String from = "nitinpal2121@gmail.com";
		final String password = "8800384816";

		try {
			Properties prop = System.getProperties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.socketFactory.port", "587");
			prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.port", "587");
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.user", from);
			prop.put("mail.password", password);

			// prop.setProperty("mail.smtp.host", host);

			Authenticator auth = new Authenticator() {
				public PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(from, password);
				}
			};

			Session session = Session.getDefaultInstance(prop, auth);

			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from));
			InternetAddress[] iAdressArray = InternetAddress.parse(to);
			msg.setRecipients(Message.RecipientType.CC, iAdressArray);
			msg.setSubject("Password Reset OTP");
			msg.setText("Yout One Time Password is " + generateOTP(mail));
			Transport.send(msg);

		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return i;
	}
}
