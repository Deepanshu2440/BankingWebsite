package login;

import java.io.IOException;


import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

@WebServlet("/UserVerify1")
public class UserVerify1 extends HttpServlet {

   



	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		RequestDispatcher rd;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //feth form value
           String email = request.getParameter("email");
       
           
      		//create instance object of the SendEmail Class
           SendEmail1 sm1 = new SendEmail1();
      		//get the 6-digit code
           String code = sm1.getRandom();
           
      		//craete new user using all information
           User1 user1 = new User1(email,code);
           
           //call the send email method
           boolean test = sm1.sendEmail1(user1);
           
      		//check if the email send successfully
           if(test){
               HttpSession session  = request.getSession();
               session.setAttribute("authcode", user1);
               rd = request.getRequestDispatcher("verify1.jsp");
               rd.forward(request, response);
           }else{
      		  out.println("Failed to send verification email");
      	   }
           
        }
    }

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}