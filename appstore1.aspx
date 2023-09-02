<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appstore1.aspx.cs" Inherits="Fraud_Apps.appstore1" %>

<%@ Register  Assembly="AjaxControlToolkit"Namespace="AjaxControlToolkit" TagPrefix="asp1" %>
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


    
    <style type="text/css">
        .Star
        {
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);
            height: 17px;
            width: 17px;
        }
    </style>
</head>
    
<body style="background-color:#fd7e14;">
    <!-- banner -->
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary pt-3">
                <h1>
                    <a class="navbar-brand text-white" href="index.html">
                        <i class="fab fa-laravel"></i> lite
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item   mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.aspx">Home
                            </a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="registration.aspx">register</a>
                        </li>
                         <li class="nav-item active">
                            <a class="nav-link" href="appstore.aspx">App Store
                                <span class="sr-only">(current)</span></a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="login.aspx">Login</a>
                        </li>
                        
                        <li class="nav-item mr-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="#contact">Contact</a>
                        </li>
                       
                    </ul>
                </div>

            </nav>
        </header>
        <!-- //header -->




      
	<form id="form1" runat="server">
        <div class="" style="padding-top:150px;width:100%;min-height:600px;">
            <asp:ScriptManager ID="ScriptManager3" runat="server">
                
                </asp:ScriptManager>
                <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ProductAspectDbConnectionString %>" 
                                SelectCommand=""></asp:SqlDataSource>--%>

             <%--<asp1:Accordion ID="acrDynamic" runat="server"
        SelectedIndex="0"
        HeaderCssClass="headerAccordion"
        HeaderSelectedCssClass="headerSelected"
        ContentCssClass="contentAccordion"
        AutoSize="None"
        FadeTransitions="true"
        TransitionDuration="250"
        SuppressHeaderPostbacks = "true"
        DataSourceID="SqlDataSource3"        
        OnItemCommand="LinksAcc_ItemCommand">
                <HeaderTemplate>
        <b>
            <asp:Label ID="Label3" runat="server" Text=<%#DataBinder.Eval(Container.DataItem, "Appname")%> ></asp:Label>
        
        </b>
 
        </HeaderTemplate>
 
        <ContentTemplate>
         <div style="float:left; margin:8px;">   
         
             <table class="nav-justified">
                    <tr>
                        <td rowspan="4"><asp:Image ID="Image1" runat="server"  Width="200" Height="200"
            ImageUrl=<%# String.Format("~/Upload/{0}",Eval("Filname"))%> />
                            &nbsp;</td>
                       <td align="right">App Name :
                            &nbsp;</td>
                        <td><%#DataBinder.Eval(Container.DataItem, "Appname")%>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">Rating :
                            &nbsp;</td>
                        <td>
<asp1:Rating ID="r1" runat="server" StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star" FilledStarCssClass="FilledStar" CurrentRating=<%#DataBinder.Eval(Container.DataItem, "AvgRate")%> Width="300px" Visible="true">
</asp1:Rating>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            
                            &nbsp;</td>
                        <td><asp:Button ID="Button1" runat="server" Text="View Details !!!"  CommandName='Download'/>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
            
         </div>
         <div style="margin-top:8px;">
           <br /><br /><br /></div>
        </ContentTemplate>
      <Panes>
                  
      </Panes>
</asp1:Accordion>--%>











         
            </div>

        </form>
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