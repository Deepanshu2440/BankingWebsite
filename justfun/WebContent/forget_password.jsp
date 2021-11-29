<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./styleeee.css">
    
    <title>Login</title>
    <script type="text/javascript">
function dil(form)
{
 	if(!isNaN(document.F1.email.value))
   {
       alert("email can't be null")
	   document.F1.email.value=""
	   document.F1.email.focus()
	   return false
   }

   return true   
}
</script>
</head>
<body>
<%
	String status = (String)request.getAttribute("status");
	if(status != null){
		out.println(status);
	}
%>
<%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %>
    <div class="container my-3 w-50 p-3">
     <h3 class="text-center">Verfiy Email Id</h3>
     <form onSubmit="return dil(this)" method="post" action="UserVerify1" name=F1>
        <div class="form-floating mb-3">
  <label for="email">Email</label>
  <input type="email" class="form-control" id="floatingInput" placeholder="Email" name = "email">
  <p id="emptymail" style="color:red "></p>
</div>
      <div class="text-center">
  	 <button type="submit" class="btn btn-primary">Send OTP</button>
  	 </div>
     </form>
</div>


    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>