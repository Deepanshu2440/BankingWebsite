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
    	
       // String num=request.getParameter("accountno");
	//	int accountno=Integer.parseInt(num);
		
		
      //  String username=request.getParameter("username");
		//String password=request.getParameter("password");

		
		int accountno = (int)session.getAttribute("accoutno");
//		int accountno=Integer.parseInt(num);
		String username = (String)session.getAttribute("username");
		String password=(String)session.getAttribute("password");
		
		String num1=request.getParameter("taccountno");
		int taccountno=Integer.parseInt(num1);
		
		String amoun=request.getParameter("amount");
		int accoun=Integer.parseInt(amoun);
		
		if(taccountno == accountno){
			out.println("<h3>Cannot transfer to same account no</h3>");
		}
		else{
		
		PreparedStatement stmt,stmt2;
		ResultSet rs ,rs1,rs2,rs3,rs4;
		Connection con, con1, con2,con3;
		RequestDispatcher rd;
		
		boolean status=verifylogin.checkLogin(accountno,username,password);
		boolean status1=verifylogin.checkTransfer(taccountno);
		
		//accountno=taccountno;
		//if(status==true){
		//	out.print("Welcome    " + username);
		try {
			 
			if(status==true && status1==true){
			Class.forName("org.postgresql.Driver");
			con2 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			String sql2 = "Select * from NEWACCOUNT where accountno=?";
			stmt2 = con2.prepareStatement(sql2);
			stmt2.setInt(1,accountno);
			//stmt2.executeUpdate();
			
			rs2=stmt2.executeQuery();
			
			int dataamount1=0;
			if(rs2.next()){
				
				if(rs2.getInt(5) < accoun){
					out.println("<h3>Sorry you have insufficient balance");
				}
				else{
				dataamount1= rs2.getInt(5)-accoun; 
				System.out.println(dataamount1);
				}
			}
			if(dataamount1 != 0){
			con3 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			String sql3 = "update NEWACCOUNT set amount=? where accountno='"+accountno+"'";
			PreparedStatement stmt3 = con3.prepareStatement(sql3);
			stmt3.setInt(1,dataamount1);
			stmt3.executeUpdate();
			//rs1=stmt1.executeQuer
			//rs3=stmt3.executeQuery();
            //ps.setInt(1,accountno);
            
			//if(rs3.next()){
			//	request.setAttribute("target account A",dataamount);
			//	request.setAttribute("account B",dataamount1);	
			//}
			
			
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			String sql = "select * from NEWACCOUNT where accountno=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1,taccountno);
			rs=stmt.executeQuery();
            //ps.setInt(1,accountno);
            
			int dataamount=0;
			
			if(rs.next()){
			dataamount=accoun+rs.getInt(5); 
			System.out.println(dataamount);
			}
			Class.forName("org.postgresql.Driver");
			con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
			String sql1 = "update NEWACCOUNT set amount=? where accountno='"+taccountno+"'";
			PreparedStatement stmt1 = con1.prepareStatement(sql1);
			stmt1.setInt(1,dataamount);
			stmt1.executeUpdate();
			//rs1=stmt1.executeQuery();
            //ps.setInt(1,accountno);
            
			//if(rs1.next()){}
			System.out.println("hello");
			%>
			<div class="container my-4 p-5 pd-10" style="justify-content: center">
		<div class="my-4 px-5 pd-10">
		<div class="card">
  <div class="card-header">
    <h3>Transfer successful</h3>
  </div>
  <div class="card-body">
		    <%
		      String sql4 = "select * from NEWACCOUNT where accountno = ? ";
		      PreparedStatement stmt4 = con1.prepareStatement(sql4);
				stmt4.setInt(1,accountno);
				rs4 = stmt4.executeQuery();
				if(rs4.next()){
					int accn = rs4.getInt("accountno");
					String uname = rs4.getString("username");
					out.println("<h5 class="+'"'+"card-title"+'"'+">Account No :  "+accn);
					out.println("</h5><p> Username :  "+uname);
				}
				
				out.println("</p><p class="+'"'+"card-text"+'"'+">Total Balance "+dataamount1+"/-"); 
				
		      %>
		       </p>
    <a href="MAIN-PAGE.html" class="btn btn-dark py-2">Go to mainpage</a>
  </div>
</div>
	</div>
		<%
			}
			else{
				out.println("<h5>CANNOT transfer amount from " + accountno +" to " + taccountno +"</h5>");
			}
			
			}
		
			else{
				out.print("Please check your target accountno");
				request.setAttribute("balance","Please check your username and Password and target accountno");
				%>
				<jsp:forward page="transfer1.jsp"></jsp:forward> 
				<% 
			}
		
		
		
			}
			catch (Exception e) {
				e.printStackTrace();
				out.println("good work");
			}
		}
		
			%>
</body>
</html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>

			