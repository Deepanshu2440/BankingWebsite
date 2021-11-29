package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class verifylogin {

public static boolean checkLogin(int accountno,String username,String password){
	boolean status=false;
	try {
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		
		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno=? and username = ? and pass_word =?");
		ps.setInt(1,accountno);
		ps.setString(2,username);
		ps.setString(3,password);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}
	return status;
}
	
public static boolean checkLogin1(String username){
	boolean status=false;
	try {
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		
		PreparedStatement ps=con.prepareStatement("Select * from demologin where username = ? ");
		
		ps.setString(1,username);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}
	return status;
}

public static boolean checkTransfer(int accountno){
	boolean status=false;
	try {
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		
		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno = ? ");
		
		ps.setInt(1,accountno);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException | ClassNotFoundException e) {
		e.printStackTrace();
	}
	return status;
}
}
