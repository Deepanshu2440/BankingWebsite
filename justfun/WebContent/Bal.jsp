<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Insert title here</title>
<style>
 .bgcolor{
 	background-color:#e9f2fa;
 }
 .btn1{
 	background-color:#72efe9;
 	font-size:0.9rem;
 }
</style>
</head>
<body class="bgcolor">
<%
//String num=request.getParameter("accno");
//int accountno=Integer.parseInt(num);
//String username=request.getParameter("username");
//String password=request.getParameter("password");


	int accountno = (int)session.getAttribute("accoutno");
	//int accountno=Integer.parseInt(num);
	String username = (String)session.getAttribute("username");
	String password=(String)session.getAttribute("password");
	boolean status = verifylogin.checkLogin(accountno,username,password);
//if(status==true){
//	out.print("Welcome    " + username);
try {
if(status==true){
	out.print("<div class="+'"'+"text-center py-5"+'"'+"><h3>Welcome    " + username+"</h3></div>");

	Class.forName("org.postgresql.Driver");
	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
	PreparedStatement ps = con.prepareStatement("Select * from NEWACCOUNT where accountno=?");
    ps.setInt(1,accountno);
	ResultSet rs=ps.executeQuery();
	
	out.print("<table class="+'"'+"table table-borderless pl-5"+'"'+">");
	out.print("<thead><tr><th scope="+'"'+"col"+'"'+">ACCOUNT NO</th><th scope="+'"'+"col"+'"'+">USERNAME</th><th scope="+'"'+"col"+'"'+">AMOUNT</th><th scope="+'"'+"col"+'"'+">ADDRESS</th><th scope="+'"'+"col"+'"'+">PHONE</th></tr></thead><tbody>");
	while(rs.next()){
	    int accountno1=rs.getInt(1);
		session.setAttribute("accountno",accountno1);
		
		System.out.print(accountno);
		
		out.print("<tr>");
		out.print("<td>" + rs.getInt(1) + "</td>");
		out.print("<td>" + rs.getString(2) + "</td>");
		out.print("<td>" + rs.getInt(5) + "</td>");
		out.print("<td>" + rs.getString(6) + "</td>");
		out.print("<td>" + rs.getLong(7) + "</td>");
		out.print("</tr>");
	
	}
	out.print("</tbody></table>");
	%>
	
		<div class="text-center">
			<a href="MAIN-PAGE.html"><button class="btn btn1">Go Back</button></a>
		</div>
	<%
	
	
	
}
else{
	out.print("Please check your username and Password");
	request.setAttribute("balance","Please check your username and Password");
	%>
	<jsp:forward page="bal1.jsp"></jsp:forward> 
	<% 
	}
 }catch (SQLException e) {
	e.printStackTrace();
}
	
	
	
%>

</body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>