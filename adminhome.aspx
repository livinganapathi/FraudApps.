<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Fraud_Apps.adminhome" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
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

<body style="background-color:#fd7e14;">
    <!-- banner -->
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
                        <li class="nav-item active mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="adminhome.aspx">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                       <li class="nav-item ">
                            <a class="nav-link" href="manageusers.aspx">Manage Users</a>
                        </li>
                       <li class="nav-item ">
                            <a class="nav-link" href="addapps.aspx">Add Apps</a>
                        </li>
                       <li class="nav-item ">
                            <a class="nav-link" href="manageapps.aspx">Manage Apps</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="login.aspx">Logout</a>
                        </li>
                    </ul>
                </div>

            </nav>
        </header>
        <!-- //header -->
        <div class="" style="padding-top:150px;width:100%;min-height:500px;">
             <div style="float:left;width:30%;text-align:center;color:black;">
                        <a href="addapps.aspx" style="color:black;"><img src="images/app.jpg" style="height:300px;width:300px;" /><br />
                            Add Apps</a>

            </div>
                  <div style="float:left;width:30%;text-align:center;color:black;">
                <a href="manageusers.aspx"  style="color:black;"><img src="images/usermgmt.png" style="height:300px;width:300px;" /><br />
                    Manage Users</a>

            </div>
            <div style="float:left;width:40%;text-align:center;color:black;">
                        <a href="manageapps.aspx"  style="color:black;"><img src="images/apps8.png" style="height:300px;width:300px;" /><br />
                            Manage Apps</a>

            </div>
       </div>
           



    <!-- //contact -->
    <footer id="footer" class="text-sm-left text-center">
                <div class="cpy-right text-center">
                    <p>© <script>document.write(new Date().getFullYear());</script>  Lite. All rights reserved | Design by
                        <a href="www.intrella.in" class="text-white"> Intrella.</a>
                    </p>
                </div>
                <div class="social-icons pb-md-0 pb-4">
                    <ul class="social-iconsv2 agileinfo text-center">
                        <li class="ml-lg-5">
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-google-plus-g"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                    </ul>
                </div>
    </footer>
    <!-- //footer -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>

</html>