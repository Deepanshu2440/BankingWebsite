package login;
import org.postgresql.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



public class RegisterNewUser {
	static int status=0;
	//int accountno=1;
	public static int register(String username,String password,String repassword,double amount,String adderess,double phone){
		//public static int register(String email,String password,String gender,String country,String name){
		Connection con;
		PreparedStatement ps;
		
		try {
			
		    Class.forName("org.postgresql.Driver");
//		DriverManager.registerDriver(new org.postgresql.Driver());
		    con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		   
		
			ps = con.prepareStatement("Insert into NEWACCOUNT values(nextval('account_no'),?,?,?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,repassword);
			ps.setDouble(4,amount);
			ps.setString(5,adderess);
			ps.setDouble(6,phone);
			
			status=ps.executeUpdate();
			
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
}
