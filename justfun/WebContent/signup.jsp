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
    <title>ONE TOUCH BANKING</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="footerop.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.30.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "SiteMain",
		"logo": "images/default-logo.png",
		"sameAs": []
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    <style>
    .sizee{
    	font-size:0.9rem;
    }
      @media (max-width: 575px){
     .u-section-2 .u-text-1 {
    margin-top: 43px;
    margin-right: -9px;
    margin-left: 19px;
}}
    </style>
   <script type="text/javascript">
function dil(form)
{
	var a = document.getElementById("pcheck").value;
 	if(a.length<8){
 		
 	alert("Please fill password greater than 8 digits")
 		return false
 	}
   if(!isNaN(document.F1.email.value))
   {
       alert("A/C No.  must  be  number & can't be null")
	   document.F1.email.value=""
	   document.F1.email.focus()
	   return false
   }

   if(!isNaN(document.F1.pass.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.pass.value=""
	   document.F1.pass.focus()
	   return false
   }

   if(!isNaN(document.F1.cpass.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.cpass.value=""
	   document.F1.cpass.focus()
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

 <body class="u-body">
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
              <a class="nav-link" href="signup.jsp">HOME <span class="sr-only">(current)</span></a>
            </li>
              <li class="nav-item active">
                <a class="nav-link" href="contactus.jsp">Contact Us</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="faqindex.html">FAQs</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="login.jsp">LOGIN</a>
              </li>
          </ul>
    
        </div>
      </nav>
      </div>
    <section class="u-clearfix u-section-1" id="carousel_1c39">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
        <div class="u-palette-4-base u-shape u-shape-rectangle u-shape-1"></div>
        <div class="u-clearfix u-expanded-width u-gutter-14 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-size-30">
                <div class="u-layout-col">
                  <div class="u-container-style u-image u-layout-cell u-size-60 u-image-1" data-image-width="1245" data-image-height="707">
                    <div class="u-container-layout u-container-layout-1"></div>
                  </div>
                </div>
              </div>
              <div class="u-size-30">
                <div class="u-layout-col">
                  <div class="u-align-left u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                    <div class="u-container-layout u-valign-bottom-sm u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-container-layout-2">
                      <h2 class="u-custom-font u-font-oswald u-text u-text-1"> One Touch Banking</h2>
                    </div>
                  </div>
                  <div class="u-container-style u-layout-cell u-size-30 u-white u-layout-cell-3">
                    <div class="u-container-layout u-valign-top u-container-layout-3">
                      <p class="u-text u-text-2">We can ensure reliability,<br>low cost fares and most important ,with safety and comfort in mind.
                      </p>
                      <p class="u-text u-text-3">Take your financial life online. Your OTB Bank Account will be a one-stop-shop for spending, saving, investing and much more.</p>
                      <a href="Home.html#sec-6223" data-page-id="256056394" class="u-active-palette-4-light-2 u-border-none u-btn u-button-style u-hover-palette-4-light-2 u-palette-4-base u-btn-1">READ ABOUT OUR SERVICES</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-palette-1-light-1 u-section-2" id="sec-a360">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-12 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-container-layout-1">
                  <img class="u-image u-image-round u-radius-10 u-image-1" src="images/96773c61a3fbcf7806e1cc3a76f880929b4b6faa5e3329c6099d4751d9c5079474083b2b6f87b59d3d69779bf923bd531e0ef565d4e0f507202b4f_1280.png" alt="" data-image-width="1280" data-image-height="1093">
                </div>
              </div>
              <div class="u-container-style u-custom-color-2 u-layout-cell u-opacity u-opacity-90 u-radius-50 u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <p class="u-custom-font u-font-oswald u-text u-text-1">NEW USER? SIGN UP HERE</p>
                  <div class="u-form u-form-1">
                    <form action="UserVerify" onSubmit="return dil(this)" name=F1 method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px">
                      <div class="u-form-group u-form-name u-form-group-1">
                        <label for="name-319a" class="u-label u-text-body-alt-color u-label-1">EMAIL</label>
                        <input type="text" placeholder="Enter your Name" id="name-319a" name="email" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle">
                      </div>
                      <div class="u-form-email u-form-group u-form-group-2">
                        <label for="email-319a" class="u-label u-text-body-alt-color u-label-2">PASSWORD</label>
                        <input type="password" placeholder="Enter a strong password" id="pcheck" name="pass" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle">
                      </div>
                      <div class="u-form-group u-form-message u-form-group-3">
                        <label for="message-319a" class="u-label u-text-body-alt-color u-label-3">CONFIRM PASSWORD</label>
                        <input type="password" placeholder="Confirm password" rows="1" cols="50" id="message-319a" name="cpass" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle" >
                      </div>
                      <div class="u-align-center u-form-group u-form-submit u-form-group-4">
                        <a href="#" class="u-active-palette-1-base u-border-none u-btn u-btn-round u-btn-submit u-button-style u-hover-palette-1-light-1 u-radius-50 u-white u-btn-1">SIGN UP</a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
				
                      </div>
                    </form>
                  </div>
                  <p class="u-custom-font u-font-oswald u-text u-text-black u-text-2">
                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2" href="login.jsp">Already user? LOGIN</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-palette-1-light-3 u-valign-middle u-section-3" id="sec-6223">
      <h1 class="u-text u-text-default u-text-1">Company Services</h1>
      <p class="u-text u-text-default-lg u-text-default-xl u-text-2"></p>
      <div class="u-expanded-width u-palette-3-base u-shape u-shape-rectangle u-shape-1"></div>
      <div class="u-list u-list-1">
        <div class="u-repeater u-repeater-1">
          <div class="u-align-center u-container-style u-list-item u-radius-49 u-repeater-item u-shape-round u-white u-list-item-1">
            <div class="u-container-layout u-similar-container u-container-layout-1"><span class="u-custom-item u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 467.39801 467.39001" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f472"></use></svg><svg class="u-svg-content" viewBox="0 0 467.39801 467.39001" id="svg-f472"><defs id="defs42"></defs><g id="window_screen__lock_icon" transform="translate(-22.301,-22.305)"><g id="g34"><path d="m 256.001,22.305 c 129.121,0 233.698,104.577 233.698,233.69 0,129.123 -104.577,233.7 -233.698,233.7 -129.123,0 -233.7,-104.577 -233.7,-233.7 0,-129.113 104.577,-233.69 233.7,-233.69 z" id="path4" style="clip-rule:evenodd;fill:#84dbff;fill-rule:evenodd"></path><path d="m 488.678,233.129 c 0.678,7.74 1.021,15.136 1.021,22.866 0,128.455 -103.575,232.688 -232.023,233.7 L 124.526,372.006 c 0,-5.373 3.359,-7.73 3.359,-12.779 v 0 c 0,-57.833 0,-115.667 0,-173.509 0,-8.732 0,-17.818 0,-26.56 0,-5.382 0,-10.765 0,-15.804 5.378,0 10.421,0 15.809,0 77.335,0 154.324,0 231.674,0 l 12.436,-3.016 c 4.037,7.721 100.196,92.791 100.874,92.791 z" id="path6" style="clip-rule:evenodd;fill:#77c5e6;fill-rule:evenodd"></path><rect height="173.509" id="rect8" style="clip-rule:evenodd;fill:#ffffff;fill-rule:evenodd" width="231.67" x="140.33" y="182.692"></rect><path d="M 140.33,182.692 H 372 V 356.201 H 140.33 Z m 247.474,173.509 v 15.805 H 372 140.33 124.526 v -15.805 0 -173.509 -26.559 -15.795 H 140.33 372 387.804 v 15.795 26.559 z" id="path10" style="clip-rule:evenodd;fill:#4b4b55;fill-rule:evenodd"></path><path d="m 321.906,161.171 c 0,5.726 4.705,10.765 10.421,10.765 6.051,0 10.756,-5.039 10.756,-10.765 0,-5.707 -4.705,-10.412 -10.756,-10.412 -5.716,0.001 -10.421,4.705 -10.421,10.412 z" id="path12" style="clip-rule:evenodd;fill:#90dfaa;fill-rule:evenodd"></path><path d="m 350.822,161.171 c 0,5.726 4.705,10.765 10.422,10.765 6.051,0 10.756,-5.039 10.756,-10.765 0,-5.707 -4.705,-10.412 -10.756,-10.412 -5.717,0.001 -10.422,4.705 -10.422,10.412 z" id="path14" style="clip-rule:evenodd;fill:#ffd05b;fill-rule:evenodd"></path><path d="m 292.971,161.171 c 0,5.726 4.724,10.765 10.44,10.765 5.716,0 10.421,-5.039 10.421,-10.765 0,-5.707 -4.705,-10.412 -10.421,-10.412 -5.717,0.001 -10.44,4.705 -10.44,10.412 z" id="path16" style="clip-rule:evenodd;fill:#fd8469;fill-rule:evenodd"></path><path d="m 290.298,294.331 h -68.596 v -60.524 c 0,-19.163 15.46,-34.643 34.299,-34.643 19.161,0 34.296,15.479 34.296,34.643 v 60.524 z M 237.84,278.527 h 36.644 v -44.721 c 0,-10.431 -8.398,-18.495 -18.483,-18.495 -10.087,0 -18.161,8.064 -18.161,18.495 z" id="path18" style="clip-rule:evenodd;fill:#ffd15d;fill-rule:evenodd"></path><path d="m 203.202,260.032 h 10.092 85.736 9.754 v 9.753 59.522 10.088 H 203.202 v -9.753 -0.335 -59.522 z m 63.219,33.297 c 0,-5.717 -4.705,-10.421 -10.419,-10.421 -5.716,0 -10.426,4.704 -10.426,10.421 0,3.693 2.019,6.729 5.048,8.742 v 15.126 h 11.092 v -15.126 c 2.691,-2.013 4.705,-5.049 4.705,-8.742 z" id="path20" style="clip-rule:evenodd;fill:#fc6f58;fill-rule:evenodd"></path><path d="m 264.407,303.417 v 16.472 h -16.813 v -16.472 c -3.025,-2.357 -4.715,-6.395 -4.715,-10.088 0,-7.405 5.722,-13.456 13.123,-13.456 7.394,0 13.444,6.051 13.444,13.456 -0.001,3.693 -2.023,7.731 -5.039,10.088 z" id="path22" style="clip-rule:evenodd;fill:#b85140;fill-rule:evenodd"></path><path d="m 266.421,293.329 c 0,-5.717 -4.705,-10.421 -10.419,-10.421 -5.716,0 -10.426,4.704 -10.426,10.421 0,3.693 2.019,6.729 5.048,8.742 v 15.126 h 11.092 v -15.126 c 2.691,-2.013 4.705,-5.049 4.705,-8.742 z" id="path24" style="clip-rule:evenodd;fill:#324a5e;fill-rule:evenodd"></path><path d="m 290.298,294.331 h -68.596 v -60.524 c 0,-19.163 15.46,-34.643 34.299,-34.643 19.161,0 34.296,15.479 34.296,34.643 v 60.524 z M 237.84,278.527 h 36.644 v -44.721 c 0,-10.431 -8.398,-18.495 -18.483,-18.495 -10.087,0 -18.161,8.064 -18.161,18.495 z" id="path26" style="clip-rule:evenodd;fill:#ffd15d;fill-rule:evenodd"></path><path d="m 203.202,260.032 h 10.092 85.736 9.754 v 9.753 59.522 10.088 H 203.202 v -9.753 -0.335 -59.522 z m 63.219,33.297 c 0,-5.717 -4.705,-10.421 -10.419,-10.421 -5.716,0 -10.426,4.704 -10.426,10.421 0,3.693 2.019,6.729 5.048,8.742 v 15.126 h 11.092 v -15.126 c 2.691,-2.013 4.705,-5.049 4.705,-8.742 z" id="path28" style="clip-rule:evenodd;fill:#fc6f58;fill-rule:evenodd"></path><path d="m 264.407,303.417 v 16.472 h -16.813 v -16.472 c -3.025,-2.357 -4.715,-6.395 -4.715,-10.088 0,-7.405 5.722,-13.456 13.123,-13.456 7.394,0 13.444,6.051 13.444,13.456 -0.001,3.693 -2.023,7.731 -5.039,10.088 z" id="path30" style="clip-rule:evenodd;fill:#b85140;fill-rule:evenodd"></path><path d="m 266.421,293.329 c 0,-5.717 -4.705,-10.421 -10.419,-10.421 -5.716,0 -10.426,4.704 -10.426,10.421 0,3.693 2.019,6.729 5.048,8.742 v 15.126 h 11.092 v -15.126 c 2.691,-2.013 4.705,-5.049 4.705,-8.742 z" id="path32" style="clip-rule:evenodd;fill:#324a5e;fill-rule:evenodd"></path>
</g>
</g></svg></span>
              <h4 class="u-custom-item u-text u-text-default u-text-palette-1-base u-text-3">Security</h4>
              <p class="u-custom-item u-text u-text-4">ENSURING A FRIENDLY AND A SAFE ENVIRONMENT FOR THE USER</p>
            </div>
          </div>
          <div class="u-align-center u-container-style u-list-item u-radius-49 u-repeater-item u-shape-round u-white u-list-item-2">
            <div class="u-container-layout u-similar-container u-container-layout-2"><span class="u-custom-item u-icon u-icon-circle u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 60 60" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7d07"></use></svg><svg class="u-svg-content" viewBox="0 0 60 60" id="svg-7d07"><defs><style>.a{fill:#3db9e3;}.b{fill:#343840;}.c{fill:#2ca651;}.d{fill:#464c59;}.e,.f{fill:none;stroke-miterlimit:10;}.e{stroke:#1e3064;stroke-width:1.75px;}.f{stroke:#fffb01;}.g{fill:#4db678;}.h{fill:#8d8d93;}.i{fill:#dedce0;}</style>
</defs><circle class="a" cx="30" cy="30" r="30"></circle><rect class="b" height="37" rx="2" ry="2" width="52" x="5" y="11"></rect><polygon class="c" points="11 15 47 0 52 15 11 15"></polygon><rect class="d" height="37" rx="2" ry="2" width="49" x="5" y="14"></rect><line class="e" x1="7" x2="9" y1="17" y2="17"></line><line class="f" x1="7" x2="9" y1="17" y2="17"></line><line class="e" x1="11" x2="13" y1="17" y2="17"></line><line class="f" x1="11" x2="13" y1="17" y2="17"></line><line class="e" x1="15" x2="17" y1="17" y2="17"></line><line class="f" x1="15" x2="17" y1="17" y2="17"></line><line class="e" x1="19" x2="21" y1="17" y2="17"></line><line class="f" x1="19" x2="21" y1="17" y2="17"></line><line class="e" x1="23" x2="25" y1="17" y2="17"></line><line class="f" x1="23" x2="25" y1="17" y2="17"></line><line class="e" x1="27" x2="29" y1="17" y2="17"></line><line class="f" x1="27" x2="29" y1="17" y2="17"></line><line class="e" x1="31" x2="33" y1="17" y2="17"></line><line class="f" x1="31" x2="33" y1="17" y2="17"></line><line class="e" x1="35" x2="37" y1="17" y2="17"></line><line class="f" x1="35" x2="37" y1="17" y2="17"></line><line class="e" x1="39" x2="41" y1="17" y2="17"></line><line class="f" x1="39" x2="41" y1="17" y2="17"></line><line class="e" x1="43" x2="45" y1="17" y2="17"></line><line class="f" x1="43" x2="45" y1="17" y2="17"></line><line class="e" x1="47" x2="49" y1="17" y2="17"></line><line class="f" x1="47" x2="49" y1="17" y2="17"></line><line class="e" x1="51" x2="53" y1="17" y2="17"></line><line class="f" x1="51" x2="53" y1="17" y2="17"></line><line class="e" x1="7" x2="9" y1="48" y2="48"></line><line class="f" x1="7" x2="9" y1="48" y2="48"></line><line class="e" x1="11" x2="13" y1="48" y2="48"></line><line class="f" x1="11" x2="13" y1="48" y2="48"></line><line class="e" x1="15" x2="17" y1="48" y2="48"></line><line class="f" x1="15" x2="17" y1="48" y2="48"></line><line class="e" x1="19" x2="21" y1="48" y2="48"></line><line class="f" x1="19" x2="21" y1="48" y2="48"></line><line class="e" x1="23" x2="25" y1="48" y2="48"></line><line class="f" x1="23" x2="25" y1="48" y2="48"></line><line class="e" x1="27" x2="29" y1="48" y2="48"></line><line class="f" x1="27" x2="29" y1="48" y2="48"></line><line class="e" x1="31" x2="33" y1="48" y2="48"></line><line class="f" x1="31" x2="33" y1="48" y2="48"></line><line class="e" x1="35" x2="37" y1="48" y2="48"></line><line class="f" x1="35" x2="37" y1="48" y2="48"></line><line class="e" x1="39" x2="41" y1="48" y2="48"></line><line class="f" x1="39" x2="41" y1="48" y2="48"></line><line class="e" x1="43" x2="45" y1="48" y2="48"></line><line class="f" x1="43" x2="45" y1="48" y2="48"></line><line class="e" x1="47" x2="49" y1="48" y2="48"></line><line class="f" x1="47" x2="49" y1="48" y2="48"></line><line class="e" x1="51" x2="53" y1="48" y2="48"></line><line class="f" x1="51" x2="53" y1="48" y2="48"></line><circle class="g" cx="43.5" cy="7.5" r="2.5"></circle><path class="b" d="M43,28H54a0,0,0,0,1,0,0V38a0,0,0,0,1,0,0H43a1,1,0,0,1-1-1V29A1,1,0,0,1,43,28Z"></path><circle class="h" cx="45.5" cy="33" r="1.5"></circle><circle class="h" cx="50.5" cy="33" r="2.5"></circle><circle class="i" cx="50.5" cy="33" r="1"></circle></svg></span>
              <h4 class="u-custom-item u-text u-text-default u-text-palette-1-base u-text-5">No Activation Fees</h4>
              <p class="u-custom-item u-text u-text-6">NO INITIAL ACTIVATION FEES REQUIRED TO ACTIVATE THE ACCOUNT.</p>
            </div>
          </div>
          <div class="u-align-center u-container-style u-list-item u-radius-49 u-repeater-item u-shape-round u-white u-list-item-3">
            <div class="u-container-layout u-similar-container u-container-layout-3"><span class="u-border-2 u-border-palette-1-base u-custom-item u-icon u-icon-circle u-spacing-10 u-text-palette-1-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 50 50" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-d8e1"></use></svg><svg class="u-svg-content" viewBox="0 0 50 50" id="svg-d8e1" style="enable-background:new 0 0 50 50;"><style type="text/css"> .st0{fill:#E56F25;}
	.st1{fill:#F58634;}
	.st2{fill:#53B1E2;}
	.st3{fill:#FBB444;}
	.st4{fill:#E7E3E6;}
	.st5{fill:#FFC966;}
	.st6{fill:#4E4C4D;}
	.st7{fill:#656766;}
	.st8{fill:#85BD57;}
	.st9{fill:#FFFFFF;}
	.st10{fill:#22A7D4;}
	.st11{fill:#E85650;}
	.st12{display:none;fill:#22A7D4;}
	.st13{display:none;opacity:0.4;fill:#FFFFFF;enable-background:new    ;} </style><g><g><path class="st0" d="M17.4,13.7h1.2v5.5l0,0c-0.7,0-1.2-0.6-1.2-1.2V13.7z"></path>
</g><g><path class="st0" d="M32.6,13.7h-1.2v5.5l0,0c0.7,0,1.2-0.6,1.2-1.2V13.7z"></path>
</g><g><path class="st1" d="M32.6,16.7v-3.4c0-0.9-0.7-1.6-1.6-1.6h-2.2v5H32.6z"></path>
</g><g><rect class="st2" height="5.5" width="9" x="20.5" y="30.1"></rect>
</g><g><path class="st2" d="M20.3,31.6c-4.2,0-7.8,3.7-8,8.5c0,0.3,0,0.6,0,0.9v1c0,2,1.4,3.7,3.2,3.7h19.2c1.8,0,3.2-1.6,3.2-3.7v-0.4    c0-0.8-0.1-1.6-0.2-2.4c-0.6-4.4-4-7.5-7.9-7.5L20.3,31.6z"></path>
</g><g><path class="st3" d="M23.3,24c-0.7,0.8-1.4,5.2-1.6,5.9c-0.5,1.3,0.7,2.9,1.8,4c0.9,0.9,2.1,0.9,3,0c1.1-1.1,2.3-2.6,1.8-4    c-0.2-0.7-0.9-5.1-1.6-5.9C26.7,24,23.3,24,23.3,24z"></path>
</g><g><g><path class="st4" d="M29.5,30.1L25.7,33l0.9,1.3c0.4,0.6,1.2,0.7,1.7,0.2l2.8-2.8L29.5,30.1z"></path>
</g><g><path class="st4" d="M20.5,30.1l3.8,2.9l-0.9,1.3c-0.4,0.6-1.2,0.7-1.7,0.2L19,31.7L20.5,30.1z"></path>
</g>
</g><g><path class="st5" d="M18.7,16.2v7c0,1.1,0.3,2.2,0.9,3.1l1.4,2.1c1.9,2.9,6.2,2.9,8.1,0l1.4-2.1c0.6-0.9,0.9-2,0.9-3.1v-7    c0-1.1-0.9-1.9-1.9-1.9h-8.8C19.5,14.3,18.7,15.1,18.7,16.2z"></path>
</g><g><path class="st6" d="M32.1,22.4h-0.7v-3.2h0.7c0.5,0,0.8,0.4,0.8,0.8v1.6C32.9,22,32.5,22.4,32.1,22.4z"></path>
</g><g><path class="st6" d="M17.9,22.4h0.7v-3.2h-0.7c-0.5,0-0.8,0.4-0.8,0.8v1.6C17.1,22,17.5,22.4,17.9,22.4z"></path>
</g><g><path class="st6" d="M29.2,26.4h-2.5v-0.7h2.5c1.2,0,2.1-0.9,2.1-2.1v-1.9H32v1.9C32.1,25.1,30.8,26.4,29.2,26.4z"></path>
</g><path class="st3" d="M23.1,25.7c0.3,0.8,1,1.4,1.9,1.4s1.6-0.6,1.9-1.4H23.1z"></path><path class="st3" d="M25.8,23.9c-0.1-0.3-0.4-0.6-0.8-0.6s-0.7,0.3-0.8,0.6H25.8z"></path><g><circle class="st7" cx="26.9" cy="26" r="1"></circle>
</g><g><path class="st1" d="M27.8,16.7h-8.9c-1.3,0-2.3-1-2.3-2.3v-3.7h11c0.9,0,1.6,0.7,1.6,1.6v3C29.2,16.1,28.6,16.7,27.8,16.7z"></path>
</g><g><path class="st1" d="M31.6,13.1h-2.4v2.2c0,0.8,0.6,1.4,1.4,1.4h1V13.1z"></path>
</g><g><path class="st8" d="M49,6.4v5.2c0,1.1-0.9,2-2,2h-6.6l-2.6,2.6c-0.4,0.4-1,0.1-1-0.4v-2.2H36c-1.1,0-2-0.9-2-2V6.4    c0-1.1,0.9-2,2-2h11C48.1,4.4,49,5.3,49,6.4z"></path><g><circle class="st9" cx="37.7" cy="9" r="1.3"></circle><circle class="st9" cx="41.5" cy="9" r="1.3"></circle><circle class="st9" cx="45.4" cy="9" r="1.3"></circle>
</g>
</g><g><g><path class="st10" d="M33.2,40.4L33.2,40.4c-0.3,0-0.5,0.3-0.5,0.5v4.8h1.1v-4.8C33.7,40.7,33.4,40.4,33.2,40.4z"></path>
</g><g><path class="st10" d="M17,40.4L17,40.4c-0.3,0-0.5,0.3-0.5,0.5v4.8h1.1v-4.8C17.6,40.7,17.3,40.4,17,40.4z"></path>
</g>
</g><circle class="st4" cx="25" cy="36.9" r="0.8"></circle><circle class="st4" cx="25" cy="39.8" r="0.8"></circle><circle class="st4" cx="25" cy="42.6" r="0.8"></circle><circle class="st11" cx="8.4" cy="26" r="7.4"></circle><path class="st12" d="M29.5,22.6h-2.8c-0.8,0-1.4-0.6-1.4-1.4v-1.7c0-0.3,0.3-0.6,0.6-0.6h4.4c0.3,0,0.6,0.3,0.6,0.6v1.7   C30.9,22,30.2,22.6,29.5,22.6z"></path><path class="st12" d="M23.3,22.6h-2.8c-0.8,0-1.4-0.6-1.4-1.4v-1.7c0-0.3,0.3-0.6,0.6-0.6h4.4c0.3,0,0.6,0.3,0.6,0.6v1.7   C24.7,22,24.1,22.6,23.3,22.6z"></path><path class="st0" d="M29.4,20.5H27c-0.2,0-0.3-0.1-0.3-0.3l0,0c0-0.2,0.1-0.3,0.3-0.3h2.4c0.2,0,0.3,0.1,0.3,0.3l0,0   C29.7,20.3,29.6,20.5,29.4,20.5z"></path><circle class="st7" cx="28.2" cy="20.8" r="0.7"></circle><path class="st0" d="M23,20.5h-2.4c-0.2,0-0.3-0.1-0.3-0.3l0,0c0-0.2,0.1-0.3,0.3-0.3H23c0.2,0,0.3,0.1,0.3,0.3l0,0   C23.3,20.3,23.2,20.5,23,20.5z"></path><circle class="st7" cx="21.8" cy="20.8" r="0.7"></circle><path class="st13" d="M26.7,22c-0.4,0-0.8-0.3-0.8-0.8v-1.7h4.4v1.7c0,0.4-0.3,0.8-0.8,0.8H26.7z"></path><path class="st13" d="M20.5,22c-0.4,0-0.8-0.3-0.8-0.8v-1.7h4.4v1.7c0,0.4-0.3,0.8-0.8,0.8H20.5z"></path><g><path class="st9" d="M4.1,25.6c0.1-0.1,0.1-0.2,0.1-0.4s0-0.2-0.1-0.3S4,24.8,3.8,24.8S3.4,25,3.2,25.3l-0.6-0.4    c0.2-0.3,0.3-0.5,0.5-0.6s0.4-0.2,0.8-0.2s0.6,0.1,0.8,0.3C4.9,24.6,5,24.9,5,25.2c0,0.2,0,0.4-0.1,0.5s-0.3,0.4-0.5,0.6L3.8,27    h1.4v0.7H2.6v-0.6l1-1.1C3.9,25.9,4,25.7,4.1,25.6z"></path><path class="st9" d="M7,26.2v-0.6h0.8v0.6h0.4v0.7H7.8v0.8H7v-0.8H5.6v-0.6l1.3-2.1h0.9l-1.2,2H7z"></path><path class="st9" d="M10.6,23.7h0.7l-2.1,4.6H8.5L10.6,23.7z"></path><path class="st9" d="M11.7,25.4v-1.1h2.6v0.6l-1.4,2.9H12l1.4-2.9h-0.9v0.5H11.7z"></path>
</g>
</g></svg></span>
              <h4 class="u-custom-item u-text u-text-default u-text-palette-1-base u-text-7">24/7</h4>
              <p class="u-custom-item u-text u-text-8">24/7 SERVICE WITHOUT&nbsp;<br>ANY HICKUPS.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="footer-distributed">

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
              <a href="login.jsp">Login</a>
              
          </p>

          <p>OneTouchBanking &copy; 2021</p>
      </div>

  </footer>
  
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>

<!-- 
 <div class="container my-4 px-5">
     <h1 class="text-center">Signup to our bank website</h1>
     <form action="UserVerify" onSubmit="return dil(this)" name=F1 method="post">
        <div class="form-group">
            <label for="email">email</label>
            <input type="email" maxlength="50" class="form-control" id="username" name="email" aria-describedby="emailHelp">
            <p id="emptymail" style="color:red "></p>
            
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" maxlength="50" class="form-control" id="password" name="pass">
            <small id="emptypassword" class="form-text text-muted">Make sure to strong password</small>
        </div>
        <div class="form-group">
            <label for="cpassword">Confirm Password</label>
            <input type="password" class="form-control" id="cpassword" name="cpass">
            <small id="emailHelp" class="form-text text-muted">Make sure to type the same password</small>
        </div>
         
        <button type="submit" class="btn btn-primary">SignUp</button>
     </form>
    </div>
    <div class="text-center">
    Already user?
    <a href="./login.jsp" ><button type="submit" class="btn btn-primary">Login</button></a>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
 -->
</html>




