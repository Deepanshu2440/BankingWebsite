<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script>

</script>
</head>
<body>
<%


String name = request.getParameter("name");
String from = request.getParameter("emailsender");
String messageText = request.getParameter("text");
String host = "localhost";
String fromEmail = "Your email account where you want to receive feedback";
String password = "email account password";
String result;


	  Properties pr = System.getProperties();

	   // Setup mail server
	   
	   pr.put("mail.smtp.auth", true);
       pr.put("mail.smtp.starttls.enable", "true");
       pr.put("mail.smtp.host", "smtp.gmail.com");
       pr.put("mail.smtp.port", 587);
       pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");
       pr.put("mail.smtp.socketFactory.port", "587");
       pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

	   // Get the default Session object.
	   //Session mailSession = Session.getDefaultInstance(properties);
	   
	   Session mailSession = Session.getInstance(pr, new Authenticator() {
           @Override
           protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(fromEmail, password);
           }
       });

	   try {
	      // Create a default MimeMessage object.
	      MimeMessage message = new MimeMessage(mailSession);
	      
	      // Set From: header field of the header.
	      message.setFrom(new InternetAddress(from));
	      
	      // Set To: header field of the header.
	      message.addRecipient(Message.RecipientType.TO,
	                               new InternetAddress(fromEmail));
	      // Set Subject: header field
	      message.setSubject("BANK WEBSITE Feedback");
	      
	      // Now set the actual message
	      message.setText(from +"  "+messageText);
	      
	      // Send message
	      Transport.send(message);
	      result = "Sent message successfully....";
	      %>
	       alert(<p>Your feedback has been send succesfully</p>);
	       <jsp:forward page="contactus.jsp"></jsp:forward> 
	       <% 
	   } catch (MessagingException mex) {
	      mex.printStackTrace();
	      result = "Error: unable to send message....";
	   }
	%>
</body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="login.*"%>
