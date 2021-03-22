<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <title>VedaSolution</title>
        <meta name="description" content="HTML5 & CSS3">
        <meta name="keywords" content="HTML5, CSS3, Theme,bootstrap3,clean design"> 
        <!--bootstrap3 css-->
        <link href="assets\bootstrap\css\bootstrap.min.css" rel="stylesheet">
        <!--ion icon fonts css-->
        <link href="assets\icons\css\ionicons.css" rel="stylesheet">
        <!--custom css-->
        <link href="assets\css\style.css" rel="stylesheet" type="text/css">
        <!--google  font family-->

        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
        <!--flex slider css-->
        <link href="assets\css\flexslider.css" rel="stylesheet">
        <!--animated  css-->
        <link href="assets\css\animate.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
           <script type="text/javascript" language="javascript">
               function disableBackButton() {
                   window.history.forward()
               }
               disableBackButton();
               window.onload = disableBackButton();
               window.onpageshow = function (evt) { if (evt.persisted) disableBackButton() }
               window.onunload = function () { void (0) }  
</script>

    </head>
    <body>
    <form id="Form1" runat="server">
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li class="active dropdown">
                              <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Home</a>
                               <ul class="dropdown-menu">
                                    <li><a href="index.aspx">Home - Default</a></li>
                                   </ul>
                            </li>
                            <li class="dropdown">
                                <a href="Become_Professional.aspx">Become a Professional</a>
                                
                            </li>
                            <li class=" dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Customer</a>
                                <ul class="dropdown-menu">
                                 
                                    <li><a href="#">Sign Up</a></li>
                                </ul>
                            </li>
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Admin</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Login</a></li>
                                    <li><a href="#">Sign Up</a></li>
                                  
                                </ul>
                            </li>
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->

        </header><!--header main end-->


        <section id="slider-sec" class="slider-reg">
            <div class="main-flex-slider">
                
                    <li>
                        <figure>
                            <img src="assets\img\img-1.png" class="img-responsive" alt="slider-img-1">
                            <figcaption class="slider-overlay">
                                <div class="slider-text">
                                    <h1>Choose your service</h1>
                                    <div>
<asp:DropDownList ID="ddlcity" runat="server" Font-Size="Larger" style="text-align:center"
                                            Width="158px" Font-Family="Arial"  Height="41px">
    <asp:ListItem>Select Your City</asp:ListItem>
    <asp:ListItem>Delhi</asp:ListItem>
    <asp:ListItem>Noida</asp:ListItem>
    <asp:ListItem>Lucknow</asp:ListItem>
    <asp:ListItem>Allahabad</asp:ListItem>
                                        </asp:DropDownList>
                                <%--<asp:TextBox ID="txtservicecity" runat="server" value="Lucknow" Font-Size="Larger" style="text-align:center"
                                            Width="138px" Font-Family="Arial"  Height="41px" 
                                            ontextchanged="txtname_TextChanged" Enabled="False"></asp:TextBox>--%>
                                 <asp:DropDownList ID="ddlservicetype"  runat="server" 
                                            Font-Size="Larger" Width="290px" Font-Family="Arial" 
                                            style="text-align:center" Height="41px" 
                                            onselectedindexchanged="ddlservicetype_SelectedIndexChanged" >
                                           <asp:ListItem>Select your service</asp:ListItem>
                                    	   <asp:ListItem>AC Service & Repairs</asp:ListItem>
                                           <asp:ListItem>Carpenter</asp:ListItem>
                                           <asp:ListItem>Car Service & Repair</asp:ListItem>
                                           <asp:ListItem>Chimney & Hob Repair</asp:ListItem>
                                           <asp:ListItem>Electrician</asp:ListItem>
                                           <asp:ListItem>Interior Work / Civil Repair</asp:ListItem>
	                                       <asp:ListItem>Laptop Repair</asp:ListItem>
                                            <asp:ListItem>Microwave Repair</asp:ListItem>
                                           <asp:ListItem>Mobile Repair</asp:ListItem>
                                           <asp:ListItem>Plumber</asp:ListItem>
	                                       <asp:ListItem>Refrigerator Repair </asp:ListItem>
                                           <asp:ListItem>RO & Water Purifier Repair</asp:ListItem>
                                           <asp:ListItem>TV /DTH Installation</asp:ListItem>
                                           <asp:ListItem>Washing Machine Repair</asp:ListItem>
	                                       <asp:ListItem>Water Tank Cleaning</asp:ListItem>
	                                       </asp:DropDownList>
                                    </div><br />
                                    <br />
                                    <div> <asp:Button ID="btnsrvcesrch" runat="server" class="btn theme-btn-color"
                            Text="Search" onclick="btnsearch_Click" /></div>
                                 <!--   <p class="slide-btn"><a href="#" class="btn btn-white btn-lg"></a></p>-->
                                </div>
                            </figcaption>
                        </figure>
                    </li>
                 
            </div>
        </section><!--main flex slider end-->
        <div class="space-50"></div>
        <div class="container">
            <div class="row intro-row">
                <div class="col-md-12 text-center wow animated fadeInUp">
                    <h2>VedaSolution provides the service expert</h2>
                    <h3 class="subtitle">With Clean and Modern Dealing</h3>
                </div>
                <%--<div class="newsletter-section">--%>
            <div class="container">
               
            </div>
        </div>
                <div class="space-70"></div>
                <div class=" col-sm-4">
                    <div class="services-box">
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Beauty and Spa</asp:LinkButton>

                        <p>
                            
    <%--<img src="assets/img/work/work-1.png" class="img-responsive" />--%>
                            <asp:ImageButton ID="ImageButton1" runat="server" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                     
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Home Cleaning</asp:LinkButton>
                        <p>
                            <asp:ImageButton ID="ImageButton2" runat="server" class="img-responsive" />
        <%--<img src="assets/img/work/work-2.png" class="img-responsive" />--%>
                        </p>
                    </div>
                </div><!--services box-->
              
                <div class=" col-sm-4">
                    <div class="services-box">
                     
                        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Mobile Repairing</asp:LinkButton>

                        <p>
                            <%--<img src="assets/img/work/work-3.png" class="img-responsive" />--%>     
                            <asp:ImageButton ID="ImageButton3" runat="server" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->

                <div class=" col-sm-4">
                    <div class="services-box">
                       
                        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton2_Click">Car Service & Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-4.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                     
                        <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton2_Click">Carpenter</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-5.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                   
                        <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton2_Click">Washing Machine Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-6.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                      
                        <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton2_Click">Refrigerator Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-7.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                        <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton2_Click">Laptop Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-8.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                       <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton2_Click">Mobile Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-9.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                   <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton2_Click">RO & Water Purifier Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-10.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                        <asp:LinkButton ID="LinkButton14" runat="server" onclick="LinkButton2_Click">Microwave Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-11.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
                <div class=" col-sm-4">
                    <div class="services-box">
                                     <asp:LinkButton ID="LinkButton15" runat="server" onclick="LinkButton2_Click">TV /DTH Installation</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-12.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->

                <div class=" col-sm-4">
                    <div class="services-box">
                    
                        <asp:LinkButton ID="LinkButton16" runat="server" onclick="LinkButton2_Click">Chimney & Hob Repair</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-13.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->
<div class=" col-sm-4">
                    <div class="services-box">
                
                        <asp:LinkButton ID="LinkButton17" runat="server" onclick="LinkButton2_Click">Water Tank Cleaning</asp:LinkButton>
                        <p>
                            
        <img src="assets/img/work/work-14.png" class="img-responsive" />
                        </p>
                    </div>
                </div><!--services box-->

                <div class=" col-sm-4">
                    <div class="services-box">
                     
                        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Interior Work / Civil Repair</asp:LinkButton>
                        <p>
                                <img src="assets/img/work/work-15.png" class="img-responsive" /> 
                        </p>
                    </div>
                </div><!--services box-->
                            </div><!--row end-->
        </div><!--intro with services end-->
        <div class="space-70"></div>

        
        
         <div id="footer">

        <div class="container">
            <h2>Our service</h2>
            <div class="row">
                <div class="col-md-4 margin-btm-20">
                    <div class="footer-col">


                        <ul class="post-list list-unstyled">
                            <li><a href="Electrician-service-home.html" class="hover-color">Electrician</a></li>
                            <li><a href="Plumber-Service.html" class="hover-color">Plumber Service and Repairs</a></li>
                            <li><a href="ac-service-home.html" class="hover-color">AC Service and Repairs</a></li>
                            <li><a href="car-service-home.html" class="hover-color">Car Service & repairs</a></li>
                            <li><a href="carpenter-service-home.html" class="hover-color">Carpenter Service and Repairs</a></li>
                            <li><a href="washing-machin-service-home.html" class="hover-color">Washing machine service and Repairs</a></li>
                        </ul>
                    </div>

                    <div class="space-20"></div>
                    <div class="footer-col">

                    </div><!--footer social col-->
                </div><!--col-4 end-->
                <div class="col-md-3 margin-btm-20">
                    <div class="footer-col">

                        <ul class="post-list list-unstyled">
                            <li><a href="Refrigerator-service-home.html" class="hover-color">Refrigerator Service and  Repairs</a></li>
                            <li><a href="Loptop-service-home.html" class="hover-color">Laptop Service and Repairs</a></li>
                            <li><a href="mobile-service-and-repair-home.html" class="hover-color">Mobile Service and Repairs</a></li>
                            <li><a href="RO-and-Water-Purifier-home.html" class="hover-color">RO water purifier and Repairs</a></li>
                            <li><a href="Microwave-service-home.html" class="hover-color">Microwave Service and Repairs</a></li>
                            <li><a href="TV-and-DTH-service-home.html" class="hover-color">TV and DTH Installation service</a></li>
                        </ul>
                    </div>
                </div><!--latest post col end-->
                <div class="col-md-5">
                    <div class="footer-col">

                        <ul class="post-list list-unstyled">
                            <li><a href="Chimney-and-Hob-service-home.html" class="hover-color">Chimney and Hob Repairs</a></li>
                            <li><a href="Water-Tank -cleaning-and-service-home.html" class="hover-color">Water Tank service and Reapairs</a></li>
                            <li><a href="Interior-Work-and-civil-service-home.html" class="hover-color">Interior Work and civil repairs</a></li>
                            <li><a href="privacy-policy.html" class="hover-color">Policy</a></li>
                            <li><a href="term-and-condition-home.html" class="hover-color">Terms & condition</a></li>
                            <li><a href="#" class="hover-color">Contact Us</a></li>
                        </ul>
                    </div>
                </div><!--get in touch col end-->
            </div><!--footer main row end-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center footer-bottom">
                        <a href="index.aspx"> <img src="assets\img\logo-dark.png" /></a>
                        <div class="space-20"></div>
                        <span>© Copyrights 2015-16. All Rights Reserved </span>
                    </div>
                </div><!--footer copyright row end-->
            </div><!--container-->
        </div><!--footer main end-->
    </div>

        <!--scripts-->
        <script src="assets\js\jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets\js\modernizr.custom.97074.js"></script>
        <script src="assets\bootstrap\js\bootstrap.min.js" type="text/javascript"></script>
        <script src="assets\js\jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets\js\jquery-migrate-1.2.1.min.js"></script>
        <script src="assets\js\bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script type='text/javascript' src='assets\js\jquery.placeholder.min.js'></script>
        <script src="assets\js\jquery.sticky.js" type="text/javascript"></script>
        <script src="assets\js\jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="assets\js\jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="assets\js\parallax.min.js" type="text/javascript"></script>
        <script src="assets\js\wow.min.js" type="text/javascript"></script>
        <script src="assets\js\app.js" type="text/javascript"></script>
        <script src="assets\js\mailchimp-custom.js" type="text/javascript"></script>
        </form>
    </body>
</html>
