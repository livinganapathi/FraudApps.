<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="contact.aspx.cs" Inherits="Fraud_Apps.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Lite - App Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Lite Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
    <!-- //online-fonts -->
</head>

<body>
    <!-- banner -->
    <div class="banner" id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
                <h1>
                    <a class="navbar-brand text-white" href="index.aspx">
                        <i class="fab fa-laravel"></i> lite
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item active  mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.aspx">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="registration.aspx">register</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="appstore.aspx">App Store</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="login.aspx">Login</a>
                        </li>
                        
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="contact.aspx">Contact</a>
                        </li>
                       
                    </ul>
                </div>

            </nav>
        </header>
  <!-- Section: intro -->
  <section id="registerform" class="registerform" style="padding-top:100px;background-color:#fd7e14">
     <div style="background-color:#fd7e14">
      
      
      <%-- <div style="min-width:40%;float:left;color:white;background-color:antiquewhite;height:550px;">
          </div>--%>
      <div style="min-width:100%;float:left;background-color:#fd7e14;height:750px;font-size:20px;">      
      <form runat="server" id="cardRegisterForm">
          <h3 style="text-align:center;">Contact Us</h3>
         <div class="col-lg-8">
							<form class="form-area " id="myForm" >
								<div class="row">	
									<div class="col-lg-12 form-group">
										Enter Name : <input name="name" placeholder="Enter your name" runat="server" id="uname" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
									<br />
                                        From Email : <input type="text" placeholder="Enter email address" runat="server" id="frmemail" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="">
                                        <br />
										TO Email : <input type="text" placeholder="Enter email address" runat="server" id="eml" value="iamevil7781@gmail.com" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="">
                                        <br />
										Enter Subject : <input name="subject" placeholder="Enter your subject" runat="server" id="sub" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" class="common-input mb-20 form-control" required="" type="text">
										<br />Enter Message : <div class="mt-20 alert-msg" style="text-align: left;" ></div>
									
										<textarea class="common-textarea form-control" name="message" runat="server" id="msg" placeholder="Messege" onfocus="this.placeholder = ''"  rows="6" onblur="this.placeholder = 'Messege'" required=""></textarea>
										<br /><button class="genric-btn primary circle mt-30" style="float: right;" onserverclick="Unnamed_ServerClick" runat="server">Send Message</button>								
									</div>
								</div>
							</form>	
						</div>      
      </form>

      </div>
</div>
   
  </section>
  <!-- /Section: intro -->


  <!-- Core JavaScript Files -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/jquery.scrollTo.js"></script>
  <script src="js/wow.min.js"></script>
  <!-- Custom Theme JavaScript -->
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
     <script>
     function Validator() {
         debugger;
         var flag = true;

         var unamer = document.getElementById('uname').value;
         if(unamer =="")
             {
             alert('Please entername.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }




         var frm = document.getElementById('frmemail').value;
         if (frm=="") {
             alert('Please enter Mail id.');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }


         var subb = document.getElementById('sub').value;
         if (subb == "") {
             alert('Please enter Subject');
             flag = false;
             return flag;
         }
         else {
             flag = true;
         }

         //var cont = document.getElementById('msg').value;
         //if (subb == "") {
         //    alert('Please enter Message');
         //    flag = false;
         //    return flag;
         //}
         //else {
         //    flag = true;
         //}

         return flag;
     }
 </script>

</body>

</html>
