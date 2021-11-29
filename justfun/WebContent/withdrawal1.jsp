<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<style type="text/css">
	h1{text-align:center}
</style>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="WITHDRAW">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Withdraw</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="Page-2.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.30.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./footerop.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Page 2">
    <meta property="og:type" content="website">
    <style>
      .sizee{
        font-size: 0.9rem;
      }
    </style>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
 
   if(isNaN(document.F1.accno.value))
   {
       alert("A/C No.  must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
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

   if(isNaN(document.F1.amount.value))
   {
       alert("Amount  must  be  number & can't be null")
	   document.F1.amount.value=""
	   document.F1.amount.focus()
	   return false
   }

   return true   
}
</SCRIPT>
</head>
<body class="u-body">
<%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %>


<div class="sizee">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark art py-0">
    
        <a class="navbar-brand" href="#">
            <img src="images/logo-cropped.png" width="30" height="30" class="d-inline-block align-top" alt="">
            OneTouchBanking
          </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mt-2 ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="MAIN-PAGE.html">Main page</a>
            </li>
              <li class="nav-item active">
                <a class="nav-link" href="contactus.jsp">Contact Us</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="faqindex.html">FAQs</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="signup.jsp">LOGOUT</a>
              </li>
          </ul>
    
        </div>
      </nav>
      </div>
    <section class="u-align-left u-clearfix u-gradient u-section-1" src="" id="sec-4c32">
      <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <h1 class="u-text u-text-black u-text-default u-title u-text-1">WITHDRAW</h1>
        <div class="u-form u-form-1">
          <form name=F1 onSubmit="return dil(this)" action="withdrawal.jsp" method="post" class="u-form-custom-backend u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px">
            <div class="u-form-group u-form-name">
              <label for="name-319a" class="u-label u-text-black u-label-1">AMOUNT</label>
              <input type="text" placeholder="Enter amount" id="name-319a" name="amount" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-font" required="">
            </div>
            <div class="u-align-center-md u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-xl u-form-group u-form-submit">
              <a class="u-active-palette-2-light-2 u-border-2 u-border-grey-75 u-border-hover-grey-10 u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-roboto-slab u-hover-palette-2-light-3 u-radius-50 u-white u-btn-1">WITHDRAW​</a>
              <input type="submit" value="submit" class="u-form-control-hidden">
            </div>
          </form>
        </div>
      </div>
    </section>
    
    
    <footer class="footer-distributed py-1">

      <div class="footer-right">

          <a href="#" onclick="return false;"><i class="fa fa-instagram"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-twitter"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-linkedin"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-github"></i></a>


      </div>

      <div class="footer-left">

          <p class="footer-links">
              <a class="link-1" href="MAIN-PAGE.html">Main page</a>
              <a href="contactus.jsp">Contact Us</a>
              <a href="faqindex.html">FAQs</a>
              
          </p>

          <p>OneTouchBanking &copy; 2021</p>
      </div>

  </footer>




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>


<!--  
<div class="container pd-5 pt-5">
<form name=F1 onSubmit="return dil(this)" action="withdrawal.jsp" method="post">
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
</div>
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" placeholder="Amount" name="amount">
  <label for="floatingInput">Amount</label>
</div>
 <button type="submit" class="btn btn-primary">Withdraw</button>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
-->
</html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>