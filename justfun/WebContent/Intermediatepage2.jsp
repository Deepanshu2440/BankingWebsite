<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<%
	String num=request.getParameter("accno");
	int accountno=Integer.parseInt(num);
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	PreparedStatement stmt;
	ResultSet rs ,rs1;
	Connection con, con1;
	RequestDispatcher rd;
	
	boolean status=verifylogin.checkLogin(accountno,username,password);
	
	try{
		if(status == true){
		
			
		session.setAttribute("accoutno",accountno);
		session.setAttribute("username",username);
		session.setAttribute("password",password);	
		%>
		<jsp:forward page="MAIN-PAGE.html"></jsp:forward> 
		<% 
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("intermpagestatus","Please check your ACCOUNTNO, USERNAME and PASSWORD");
			%>
			<jsp:forward page="login.jsp"></jsp:forward> 
			<% 
			}
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
%>
	
	${dataamount}
</body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>