<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	h1{text-align:center}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   /*for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }*/

   if(isNaN(document.F1.accno.value))
   {
       alert("A/C No.  must  be  number & can't be null")
	   document.F1.accno.value=""
	   document.F1.accno.focus()
	   return false
   }

   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }


   return true   
}
</SCRIPT>
</head>
<body>
<%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %>
<div class="container pd-5 pt-5 text-center">
<form name=F1 onSubmit="return dil(this)" action="Bal.jsp" method="post">
<!--  <div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="accoount no" name = "accno">
  <label for="floatingInput">Account no</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Password" name = "username">
  <label for="floatingInput">Username</label>
</div><div class="form-floating mb-3">
  <input type="password" class="form-control" id="floatingInput" placeholder="Password" name="password">
  <label for="floatingPassword">Password</label>
</div>-->
<h3>CLick button below to see your balance</h3>
 <button type="submit" class="btn btn-primary text-center">Show Balance</button>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>