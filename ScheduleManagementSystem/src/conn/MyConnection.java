package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {

	private Connection mcon;

	public Connection getMcon() {
		try {
			if (mcon == null || mcon.isClosed()) {

				Class.forName("com.mysql.jdbc.Driver");
				mcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/schedulesystem", "root", "root");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return mcon;
	}

}
