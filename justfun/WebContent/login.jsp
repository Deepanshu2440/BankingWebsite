<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>LOGIN PAGE</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="LOGIN-PAGE.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.30.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./footerop.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "SiteMain",
		"logo": "images/default-logo.png",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="LOGIN PAGE">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    <style>
      .sizee{
        font-size: 1rem;
      }
      .footer-distributed .footer-links a:before {
      	content:".";
      }
    </style>
  
    <link rel="stylesheet" href="./styleeee.css">
     <script type="text/javascript">
	function dil(form)
	{
 	
 	
 	
   	if(!isNaN(document.F1.emailid.value))
   	{
       alert("User Name  must  be  char's & can't be null")
	   document.F1.emailid.value=""
	   document.F1.emailid.focus()
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
</script>
</head>
<body class="u-body">
<%
	String status = (String)request.getAttribute("status");
	if(status != null){
		out.println(status);
	}
%>
	<%if(request.getAttribute("intermpagestatus")!=null)
			{
			out.print(request.getAttribute("intermpagestatus"));
			
			}
			
			 %>


    <div class="sizee py-0">
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
              <a class="nav-link" href="signup.jsp">Home</a>
            </li>
              <li class="nav-item active">
                <a class="nav-link" href="contactus.jsp">Contact Us</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="faqindex.html">FAQs</a>
              </li>
          </ul>
    
        </div>
      </nav>
      </div>
    <section class="skrollable u-clearfix u-image u-parallax u-shading u-section-1" id="sec-ad63" data-image-width="1280" data-image-height="807">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-expanded-width-xs u-group u-opacity u-opacity-90 u-radius-50 u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h2 class="u-align-center u-custom-font u-font-georgia u-text u-text-default u-text-1">WELCOME TO&nbsp;<br>ONE TOUCH BANKING
            </h2>
            <div class="u-border-2 u-border-grey-75 u-form u-radius-50 u-form-1">
              <form  action="LoginServlet" onSubmit="return dil(this)" method="post" name=F1 class="u-form-custom-backend u-clearfix u-form-spacing-50 u-form-vertical u-inner-form" style="padding: 50px;">
                <div class="u-form-group u-form-name">
                  <label for="email-319a" class="u-label u-text-grey-75 u-label-1">EMAIL</label>
                  <input type="text" placeholder="Enter your Name" id="email-319a" name="emailid" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                </div>
                <div class="u-form-email u-form-group">
                  <label for="name-319a" class="u-label u-text-grey-75 u-label-2">PASSWORD</label>
                  <input type="password" placeholder="Enter password" id="name-319a" name="password" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                </div>
                <div class="u-align-center u-form-group u-form-submit">
                  <a href="#" class="u-active-palette-4-base u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-4-light-2 u-radius-50 u-white u-btn-1">LOGIN<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden">
                </div>
              </form>
            </div>
            <a href="forget_password.jsp" class="u-active-none u-border-2 u-border-palette-1-base u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-text-black u-btn-2">FORGET PASSWORD?</a>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="footer-distributed py-3">

      <div class="footer-right">

          <a href="#" onclick="return false;"><i class="fa fa-instagram"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-twitter"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-linkedin"></i></a>
          <a href="#" onclick="return false;"><i class="fa fa-github"></i></a>


      </div>

      <div class="footer-left">

          <p class="footer-links">
              <a class="link-1" href="signup.jsp">Home</a>
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
<div class="alert alert-success" role="alert">
        <strong>Success!</strong> You are logged in
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
   
    <div class="container my-4">
     <h1 class="text-center">Login to our website</h1>
       <form action="LoginServlet" onSubmit="return dil(this)" method="post" name=F1>
        <div class="form-group">
            <label for="username">Email</label>
            <input type="email" class="form-control" id="username" name="emailid" aria-describedby="emailHelp">
            <p id="emptymail" style="color:red "></p>
            
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password">
            <p id="emptypassword" style="color:red "></p>
        </div>
        <div class="col text-center" >
   
      <a href="forget_password.jsp">Forgot password?</a>
    </div>
  
         
        <button type="submit" class="btn btn-primary">Login</button>
     </form>
</div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body> -->
</html>