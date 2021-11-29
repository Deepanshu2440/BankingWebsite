package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import java.util.Date;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Date date = new Date();
       static String dprev= null;
       //String dprev = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String email = request.getParameter("emailid");
		String pass = request.getParameter("password");
		
		PreparedStatement stmt;
		ResultSet rs;
		Connection con;
		RequestDispatcher rd;
		int count = 0;
			
		
		try {
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			
			//String sql = "select * from login1";
			String sql = "select * from demologin";
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				//here write table coulmns name
				//if(email.equals(rs.getString("username")) && pass.equals(rs.getString("pass_word"))) {
				if(email.equals(rs.getString("username")) && pass.equals(rs.getString("passwd_id"))) {
					count = 1;
				}
				dprev = rs.getString("logintime");
				System.out.println(dprev);
				
			}
			
			if(count == 1) {
				request.setAttribute("status", "login successful at "+ date.toString());
				//request.setAttribute("prev login time: ", dprev);
				request.setAttribute("email", String.valueOf(email));
				rd=request.getRequestDispatcher("Intermediatepage.jsp");
				rd.forward(request, response);
				count=0;
				
			}
		
			else {
				request.setAttribute("status", "login failed");
				rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			
			Class.forName("org.postgresql.Driver");
			Connection con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			
			String sql1 = "update demologin set logintime=? where username='"+email+"'";
			PreparedStatement stmt1 = con1.prepareStatement(sql1);
			stmt1.setString(1,date.toString());
			stmt1.executeUpdate();
			
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
	
}



