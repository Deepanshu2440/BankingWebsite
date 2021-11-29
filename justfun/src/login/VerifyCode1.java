package login;

import java.io.IOException;

import java.io.PrintWriter;
//import javax.servlet.ServletException;

import jakarta.servlet.RequestDispatcher;

//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/VerifyCode1")
public class VerifyCode1 extends HttpServlet {

	RequestDispatcher rd;
    /**
	 * 
	 */
	private static final long serialVersionUID = 2540638196555806828L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession session = request.getSession();
            User1 user1= (User1) session.getAttribute("authcode");
            
            String code = request.getParameter("authcode");
            
            if(code.equals(user1.getCode())){
                out.println("Verification Done");
                rd=request.getRequestDispatcher("Forgetpass1.jsp");
				rd.forward(request, response);
            }else{
                out.println("Incorrect verification code,enter correct code sent in your email or try signing up again ");
            }
            
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

    