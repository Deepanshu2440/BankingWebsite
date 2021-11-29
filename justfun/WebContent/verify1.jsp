<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Authenticate OTP</title>
</head>
<body>
<div class="justify-content-center align-items-center">
<div class="text-center mt-5 ">
<span>We already send a verification  code to your email.</span>
</div>
        
       <!-- <form action="VerifyCode1" method="post">
            <input type="text" name="authcode" >
            <input type="submit" value="verify">
        </form>  -->
        
<div class="container my-3 w-50 p-4">
     <h3 class="text-center">OTP Authenticate</h3>
     <form action="VerifyCode1" method="post">
        <div class="form-floating mb-3 p-4 text-center">
  		  <input type="text" name="authcode" placeholder="OTP CODE" >
            <button type="submit" class="btn btn-dark" value="verify">verify</button>
     </form>
</div>
</div>


</body>
</html>