<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script type="text/javascript">
function dil(form)
{
  
   if(!isNaN(document.F1.pass.value))
   {
       alert("Password  must  be  char's and numbers & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }

   return true   
}
</script>
</head>
<body>
<%
	
	String username = User1.getEmail();
	
	
	PreparedStatement stmt;
	ResultSet rs ,rs1;
	Connection con, con1;
	RequestDispatcher rd;
	
	boolean status=verifylogin.checkLogin1(username);
	
	try{
		if(status == true){
		%>
		<div class="container my-3 w-50 p-3">
     <h3 class="text-center">New Password</h3>
     <form onSubmit="return dil(this)" method="post" action="ForgetPasswordServlet" name=F1>
        <div class="form-floating mb-3">
  <label for="OTP">Enter Password</label>
  <input type="text" class="form-control" id="floatingInput" placeholder="Email" name = "pass">
  <p id="emptymail" style="color:red "></p>
</div>
      <div class="text-center">
  	 <button type="submit" class="btn btn-dark">Change Password</button>
  	 </div>
     </form>
</div>
		<%
		
		
		
		/* out.println("your balance has increase"); 
		out.println("Total balance " + dataamount);*/
		
		}
		else{
			out.print("Please check your email");
			request.setAttribute("balance","Your email havent been registered");
			%>
			<jsp:forward page="forget_password.jsp"></jsp:forward> 
			<% 
			}
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
%>
	
</body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="login.*"%>