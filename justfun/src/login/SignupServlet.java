package login;
import org.postgresql.*;






import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Date date = new Date();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
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
		String email = User.getEmail();
		String pass = User.getPass();
//		String cpass = request.getParameter("cpass");
		
		PreparedStatement stmt;
		ResultSet rs;
		Connection con;
		RequestDispatcher rd;
		try {
			Class.forName("org.postgresql.Driver");
//			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			System.out.println("database connect successfully");
			//String sql = "insert into login1 (username,pass_word) values (?,?)";
			String sql = "insert into demologin (user_id,username,passwd_id,logintime) values (nextval('user_id'),?,?,?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, email);
			stmt.setString(2, pass);
			stmt.setString(3, date.toString());
			
			
			int row = stmt.executeUpdate();
			
			
			
			if(row>0) {
				request.setAttribute("status", "Succesfully signed up.... "+date.toString());
				rd=request.getRequestDispatcher("login.jsp");
				 rd.forward(request, response);
//				 SendEmail sm = new SendEmail();
//				 
//				 String code = sm.getRandom();
//				 
//				 User user = new User(email,pass,code);
//				 
//				 boolean test = sm.sendEmail(user);
//				 
//				 if(test){
//		               HttpSession session  = request.getSession();
//		               session.setAttribute("authcode", user);
//		               rd = request.getRequestDispatcher("verify.jsp");
//		               rd.forward(request, response);
//		               
//		               }
//					 else{
//		      		  System.out.println("Failed to send verification email");
//		      	      }
//				 try (PrintWriter out = response.getWriter()) {
//			            
//			            HttpSession session = request.getSession();
//			            User user1= (User) session.getAttribute("authcode");
//			            
//			            String code1 = request.getParameter("authcode");
//			            
//			            if(code1.equals(user.getCode())){
//			                out.println("Verification Done");
//			            }else{
//			                out.println("Incorrect verification code");
//			            }
			            
//				 }
				
				 
				
			}
			else {
				request.setAttribute("status", "Failed signed up....");
				rd=request.getRequestDispatcher("signup.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
