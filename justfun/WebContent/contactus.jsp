<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us Form</title>
    <link rel="stylesheet" href="style (1).css">
     <style>
  @import url('https://fonts.googleapis.com/css2?family=Mukta+Mahee:wght@200&display=swap');
  body{
  	display:block;
  }
  .footer-distributed {
      background-color: #011325;
      box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
      box-sizing: border-box;
      width: 100%;
      text-align: left;
      font-family: 'Mukta Mahee', sans-serif;
      padding: 15px 50px;
  }
  
  .footer-distributed .footer-left p {
      color: #8f9296;
      font-size: 14px;
      margin: 0;
  }
  
  
  /* Footer links */
  
  .footer-distributed p.footer-links {
      font-size: 18px;
      font-weight: bold;
      color: #ffffff;
      margin: 0 0 10px;
      padding: 0;
      transition: ease .25s;
  }
  
  .footer-distributed p.footer-links a {
      display: inline-block;
      line-height: 1.8;
      text-decoration: none;
      color: inherit;
      transition: ease .25s;
  }
  
  .footer-distributed .footer-links a:before {
      content: "·";
      font-size: 20px;
      left: 0;
      color: #fff;
      display: inline-block;
      padding-right: 5px;
  }
  
  .footer-distributed .footer-links .link-1:before {
      content: none;
  }
  
  .footer-distributed .footer-right {
      float: right;
      margin-top: 6px;
      max-width: 180px;
  }
  
  .footer-distributed .footer-right a {
      display: inline-block;
      width: 35px;
      height: 35px;
      background-color: #33383b;
      border-radius: 2px;
      font-size: 20px;
      color: #ffffff;
      text-align: center;
      line-height: 35px;
      margin-left: 3px;
      transition: all .25s;
  }
  
  .footer-distributed .footer-right a:hover {
      transform: scale(1.1);
      -webkit-transform: scale(1.1);
  }
  
  .footer-distributed p.footer-links a:hover {
      text-decoration: underline;
  }
  
  
  /* Media Queries */
  
  @media (max-width: 600px) {
      .footer-distributed .footer-left,
      .footer-distributed .footer-right {
          text-align: center;
      }
      .footer-distributed .footer-right {
          float: none;
          margin: 0 auto 20px;
      }
      .footer-distributed .footer-left p.footer-links {
          line-height: 1.8;
      }
  }
  .colobut{
  	color:white;
  	padding:5px;
  	background-color:#3e2093;
  	border-radius:5px;
  }
  </style>
  
     <script type="text/javascript">
function dil(form)
{
   if(!isNaN(document.F1.name.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.name.value=""
	   document.F1.name.focus()
	   return false
   }

   if(!isNaN(document.F1.emailsender.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.emailsender.value=""
	   document.F1.emailsender.focus()
	   return false
   }

   if(!isNaN(document.F1.text.value))
   {
       alert("Amount  must  be  number & can't be null")
	   document.F1.text.value=""
	   document.F1.text.focus()
	   return false
   }
   else{
	alert("YOur message is sent successfully");
		
	return true ;
   }
		
}

</script>
   </head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark pb-1">

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
            <a class="nav-link" href="faqindex.html">FAQs</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="login.jsp">LOGIN</a>
          </li>
        <li class="nav-item active">
          <a class="nav-link" href="signup.jsp">SignUp</a>
        </li>
      </ul>

    </div>
  </nav>

  <div class="container mt-5 py-5">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Vidyalankar Institue of technology</div>
          <div class="text-two">Wadala, Mumbai</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+91 88 5042 4676</div>
          <div class="text-two">+91 95 3184 9795</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">onetouchbanking2021@gmail.com</div>
          <div class="text-two">customersupport.otb@gmail.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>Please drop down your queries below. We would reach out to you within 24 hrs.</p>
      <form onSubmit="return dil(this)" method="post" name=F1 action="contactus1.jsp">
        <div class="input-box">
          <input type="text" placeholder="Enter your name" name ="name">
        </div>
        <div class="input-box">
          <input type="text" placeholder="Enter your email" name="emailsender">
        </div>
        <div class="input-box message-box">
          <textarea placeholder="Enter your message" name="text"></textarea>
        </div>
        <div class="button">
          <button class="colobut" type="submit" onclick="myFunction()" value="Send Now" >Send MESSAGE
        </div>
      </form>
    </div>
    </div>
  </div>
<footer class="footer-distributed mt-5 pt-2">

  <div class="footer-right">

      <a href="#" onclick="return false;"><i class="fa fa-instagram"></i></a>
      <a href="#" onclick="return false;"><i class="fa fa-twitter"></i></a>
      <a href="#" onclick="return false;"><i class="fa fa-linkedin"></i></a>
      <a href="#" onclick="return false;"><i class="fa fa-github"></i></a>


  </div>

  <div class="footer-left">

      <p class="footer-links">
          <a class="link-1" href="signup.jsp">Signup</a>
          <a href="faqindex.html">FAQs</a>
          <a href="login.jsp">Login</a>
          
      </p>

      <p>OneTouchBanking &copy; 2021</p>
  </div>

</footer>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
