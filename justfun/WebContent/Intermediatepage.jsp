<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta charset="ISO-8859-1">
<title>Login to account</title>
<style>
h1{text-align:center}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>INTERMEDIATE PAGE</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="INTERMEDIATE-PAGE.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.30.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Roboto+Slab:100,200,300,400,500,600,700,800,900|Roboto+Condensed:300,300i,400,400i,700,700i">
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
    <meta property="og:title" content="INTERMEDIATE PAGE">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
 
<script type="text/javascript">
function dil(form)
{
   /* for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields check username and password")
		   document.F1.accountno.focus()
		   return false
		}
   }*/

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
</script>

</head>
<body class="u-body">

	<%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			
			}
			
			 %>
	
	  <div class="alert alert-success" role="alert">
        <strong>Login time </strong><strong id="date"></strong>
        <span type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </span>
      
        
     <div class="alert alert-success" role="alert">
        <strong>Previous Login time </strong>
        <strong>
        <%String usern = request.getAttribute("email").toString();
        Class.forName("org.postgresql.Driver");
		Connection con1 = DriverManager.getConnection("jdbc:postgresql://localhost:5432/OneTouchBanking","postgres","@Bhargav1");
        String sql2 = "select * from demologin where username = ? ";
	      PreparedStatement stmt2 = con1.prepareStatement(sql2);
			stmt2.setString(1,usern);
			ResultSet rs1 = stmt2.executeQuery();
			if(rs1.next()){
				String uname = rs1.getString("logintime");
				out.print(uname);
			}
        %> </strong>
         
         </div>
       
         
     
        </div>
        


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
                <a class="nav-link" href="contactus.jsp">Contact Us</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="faqindex.html">FAQs</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="signup.jsp">Logout</a>
              </li>
          </ul>
    
        </div>
      </nav>
      </div>
    <section class="u-clearfix u-palette-5-light-3 u-section-1" id="carousel_7cbe">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-27 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h2 class="u-text u-text-palette-3-base u-text-1">Detials Of Your Account&nbsp;<br>
                  </h2>
                  <p class="u-align-left-sm u-align-left-xs u-custom-font u-font-roboto-slab u-text u-text-2">If you already have account ?<br>enter bank account details here
                  </p>
                  <div class="u-form u-form-1">
                    <form onSubmit="return dil(this)" method="post" name=F1 action="Intermediatepage2.jsp" class="u-form-custom-backend u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px">
                      <div class="u-form-group u-form-group-3">
                        <label for="text-942c" class="u-label u-text-grey-75 u-label-3">ACCOUNT NO</label>
                        <input type="text" placeholder="Enter your account no" id="text-942c" name="accno" class="u-border-2 u-border-grey-80 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
                      </div>
                      <div class="u-form-group u-form-name">
                        <label for="name-319a" class="u-label u-text-grey-75 u-label-1">USERNAME</label>
                        <input type="text" placeholder="Enter your Username" id="name-319a" name="username" class="u-border-2 u-border-grey-80 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-email u-form-group">
                        <label for="text-942c" class="u-label u-text-grey-75 u-label-2">PASSWORD</label>
                        <input type="password" placeholder="Enter a strong 8-digit password" id="email-319a" name="password" class="u-border-2 u-border-grey-80 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-align-center u-form-group u-form-submit">
                        <a href="#" class="u-border-2 u-border-grey-75 u-border-hover-white u-btn u-btn-round u-btn-submit u-button-style u-hover-black u-radius-50 u-white u-btn-1">LOGIN<br>
                        </a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                  </div>
                </div>
              </div>
              <div class="u-container-style u-hidden-sm u-layout-cell u-left-cell u-size-33 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <div class="u-border-16 u-border-white u-hidden-sm u-image u-image-circle u-preserve-proportions u-image-1" data-image-width="150" data-image-height="100"></div>
                  <div class="u-palette-3-base u-preserve-proportions u-shape u-shape-circle u-shape-1"></div>
                  <div class="u-palette-1-light-2 u-shape u-shape-circle u-shape-2"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-section-2" id="sec-5760">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-44 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-28 u-layout-cell-1">
                <div class="u-container-layout">
                  <div class="u-align-left u-border-10 u-border-palette-2-base u-shape u-shape-1"></div>
                  <img class="u-align-left u-image u-image-1" data-image-width="700" data-image-height="500" src="images/6c7decbc-d9d3-4316-5906-19d76e6c84f3.png">
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-32 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h2 class="u-align-center-sm u-align-center-xs u-custom-font u-font-roboto-condensed u-text u-text-default u-text-1">New to our Bank?</h2>
                  <p class="u-custom-font u-font-roboto-slab u-text u-text-2">CLick the NEWACCOUNT below to make a new account</p>
                  <a href="newaccount.jsp" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">NEW ACCOUNT</a>
                </div>
              </div>
            </div>
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
              <a class="link-1" href="login.jsp">Login</a>
              <a href="contactus.jsp">Contact Us</a>
              <a href="faqindex.html">FAQs</a>
              
          </p>

          <p>OneTouchBanking &copy; 2021</p>
      </div>

  </footer>
  <!--  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  <script>
		document.getElementById("date").innerHTML = Date();
</script>
  </body>


<!--  
<h1>Details of account you want to perform transactions</h1>
<div class="container pd-5 pt-5">
<form onSubmit="return dil(this)" method="post" name=F1 action="Intermediatepage2.jsp">
<div class="form-floating mb-3">
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
<button type="submit" class="btn btn-primary">Activate Account</button>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body> -->
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>

<%@ page import="login.*"%>
