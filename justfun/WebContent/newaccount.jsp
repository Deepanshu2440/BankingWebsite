<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NEW ACCOUNT</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="text/javascript">
	function dil(form)
	{
		var a = document.getElementById("pcheck").value;
	 	if(a.length<8){
	 		
	 	alert("Please fill password greater than 8 digits")
	 		return false
	 	}
	 	
	 	var b = document.getElementById("phonek").value;
	 	if(b.length<10){
	 		
	 	alert("Please fill PHONE NO. should be 10 digits")
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
   if(!isNaN(document.F1.address.value))
   {
       alert("Address  must  be  char's & can't be null")
	   document.F1.address.value=""
	   document.F1.address.focus()
	   return false
   }
   if(isNaN(document.F1.amount.value))
   {
       alert("Amount  must  be  number & can't be null")
	   document.F1.amount.value=""
	   document.F1.amount.focus()
	   return false
   }
   if(isNaN(document.F1.phone.value))
   {
       alert("Phone no  must  be  number & can't be null")
	   document.F1.phone.value=""
	   document.F1.phone.focus()
	   return false
   }
		

   return true   
}
</script>
</head>
<body>
<div class="text-center">Enter Details</div>
<div class="container pd-5 pt-5">
<form action="NewAccountServlet" onSubmit="return dil(this)" method="post" name=F1>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingPassword" placeholder="Password" name = "username">
  <label for="floatingInput">Username</label>
</div><div class="form-floating mb-3">
  <input type="password" class="form-control" id="pcheck" placeholder="Password" name="password">
  <label for="floatingPassword">Password</label>
</div>
<div class="form-floating mb-3">
  <input type="password" class="form-control" id="floatingPassword" placeholder="RePassword" name="repassword">
  <label for="floatingPassword">RePassword</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="accoount no" name = "amount">
  <label for="floatingInput">Amount</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="accoount no" name = "address">
  <label for="floatingInput">Address</label>
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="phonek" placeholder="accoount no" name = "phone">
  <label for="floatingInput">Phone no</label>
</div>
 <button type="submit" class="btn btn-primary">Open account</button>
</form>
</div>

</body>
</html>