<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<%
	//String num=request.getParameter("accno");
	//int accountno=Integer.parseInt(num);
	//String username=request.getParameter("username");
	//String password=request.getParameter("password");
	//String a1 =request.getParameter("amount");
	//int accoun =Integer.parseInt(a1);
	
	String a1 =request.getParameter("amount");
	int accoun =Integer.parseInt(a1);
	
	int accountno = (int)session.getAttribute("accoutno");
//	int accountno=Integer.parseInt(num);
	String username = (String)session.getAttribute("username");
	String password=(String)session.getAttribute("password");
	
	PreparedStatement stmt;
	ResultSet rs ,rs1;
	Connection con, con1;
	RequestDispatcher rd;
	
	boolean status=verifylogin.checkLogin(accountno,username,password);
	try{
		if(status == true){
		Class.forName("org.postgresql.Driver");
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		String sql = "select * from NEWACCOUNT where accountno=?";
		stmt = con.prepareStatement(sql);
		stmt.setInt(1,accountno);
		rs=stmt.executeQuery();
		int dataamount=0;
		if(rs.next()){
			if(rs.getInt(5) < accoun){
				out.println("<h3>Sorry you have insufficient balance");
			}
			else{
				dataamount=rs.getInt(5)-accoun; 
			}
		}
		if(dataamount != 0){
		Class.forName("org.postgresql.Driver");
		con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
		
		String sql1 = "update NEWACCOUNT set amount=? where accountno='"+accountno+"'";
		PreparedStatement stmt1 = con1.prepareStatement(sql1);
		stmt1.setInt(1,dataamount);
		stmt1.executeUpdate();
		%>
		<div class="container my-4 p-5 pd-10" style="justify-content: center">
		<div class="my-4 px-5 pd-10">
		<div class="card">
  <div class="card-header">
    Amount Withdrawed succesfully
  </div>
  <div class="card-body">
	    <%
	   	  //out.print(dataamount);
	      String sql2 = "select * from NEWACCOUNT where accountno = ? ";
	      PreparedStatement stmt2 = con1.prepareStatement(sql2);
			stmt2.setInt(1,accountno);
			rs1 = stmt2.executeQuery();
			if(rs1.next()){
				String uname = rs1.getString("username");
				int amt = rs1.getInt("amount");
				out.print("<h5 class="+'"'+"card-title"+'"'+">Username :  "+uname);
				out.print("</h5><p class="+'"'+"card-text"+'"'+">Total Balance "+amt+"/-");
			}
			
	      %>
	     </p>
    <a href="MAIN-PAGE.html" class="btn btn-dark">Go to mainpage</a>
  </div>
</div>
	</div>
		<%
		
		
		/* out.println("your balance has increase"); 
		out.println("Total balance " + dataamount);*/
		request.setAttribute("totaldataamount",dataamount);
		request.setAttribute("balance","your balance has increase");	
		}
		else{
			out.println("cannot withdraw</h3>");
		}
		
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("balance","Please check your username and Password");
			%>
			<jsp:forward page="withdrawal1.jsp"></jsp:forward> 
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