<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee-home.aspx.cs" Inherits="employee_home" %>

<!DOCTYPE html>


<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <title>vedasolution</title>
        <meta name="description" content="HTML5 & CSS3">
        <meta name="keywords" content="HTML5, CSS3, Theme,bootstrap3,clean design"> 

        <!--bootstrap3 css-->
        <link href="http:\\www.vedasolution.com\assets\bootstrap\css\bootstrap.min.css" rel="stylesheet">
        <!--ion icon fonts css-->
        <link href="http:\\www.vedasolution.com\assets\icons\css\ionicons.css" rel="stylesheet">
        <!--custom css-->
        <link href="http:\\www.vedasolution.com\assets\css\style.css" rel="stylesheet" type="text/css">
        <!--google  font family-->
        
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
        <!--flex slider css-->
        <link href="http:\\www.vedasolution.com\assets\css\flexslider.css" rel="stylesheet">
        <!--animated  css-->
        <link href="http:\\www.vedasolution.com\assets\css\animate.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="../assets/css/test.css" rel="stylesheet" />
       

    <link href="http://www.vedasolution.com/assets/css/test.css" rel="stylesheet" />
       
      
    </head>

    <body>
      
        <header class="header-main">
            <div class="top-bar">

               
            </div><!--topbar end-->
                 <div class="navbar navbar-default sticky-nav sticky yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.aspx"><img src="http:\\www.vedasolution.com\assets\img\logo-dark.png" class="img-responsive" alt=""/> </a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">

                         
                                         <li><a href="employee-home.aspx">Home</a></li>
                             
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Service</a>
                                <ul class="dropdown-menu">
                                    <li><a href="employee-add-service.aspx">Add Service</a></li>
                                    <li><a href="blog-sidebar.html">Show Service</a></li>  
                                  
                                </ul>
                            </li>
                         
                          <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Partner</a>
                                <ul class="dropdown-menu">
                                    <li><a href="a-show-partner.aspx">Show Partner</a></li>
                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>  
                               
                                </ul>
                            </li>
                          <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Customer</a>
                                <ul class="dropdown-menu">
                                    <li><a href="a-show-customer.aspx">Show Customer</a></li>
                                    <li><a href="a-customer-booking.aspx">Customer Booking</a></li>  
                               
                                </ul>
                            </li>
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Booking</a>
                                <ul class="dropdown-menu">
                                    <li><a href="booking-by-partner.aspx">Booking By Partner</a></li>
                                     
                               
                                </ul>
                            </li>
                             
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Edit Profile</a>
                                <ul class="dropdown-menu">
                                 <li><a href="#">Employee</a></li>
                                    <li><a href="Partner-info.aspx">Partner</a></li>
                                     <li><a href="Customer-info.aspx">Customer</a></li>
                               
                                </ul>
                            </li>
                              <li><a href="a_logout.aspx">Logout</a></li>
                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->
        </header><!--header main end-->   
        <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                   Welcome Home
                </h3>
            </div>
        </section><!--page-tree end here-->
        <div class="space-70"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="my-login-form">
                         <form id="form1" runat="server">
            <center>
                <div class="employee_add_service">
                    <br />
                    
                        <br />
                        
                       
                       
                    
                </div>
            </center>
        </form>
  
                    </div>
                </div>
            </div>
        </div>
        <div class="space-70"></div>
               <div id="footer">
             <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center footer-bottom">
                        <a href="index.aspx"> <img src="http:\\www.vedasolution.com\assets\img\logo-dark.png" /></a>
                        <div class="space-20"></div>
                        <span>© Copyrights 2015-16. All Rights Reserved </span>
                    </div>
                </div><!--footer copyright row end-->
            </div><!--container-->
        </div><!--footer main end-->
        <!--scripts-->
           <!--scripts-->
        <script src="http:\\www.vedasolution.com\assets\js\jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="http:\\www.vedasolution.com\assets\js\modernizr.custom.97074.js"></script>
        <script src="http:\\www.vedasolution.com\assets\bootstrap\js\bootstrap.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\jquery.sticky.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\parallax.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\wow.min.js" type="text/javascript"></script>
        <script src="http:\\www.vedasolution.com\assets\js\app.js" type="text/javascript"></script>
    </body>
</html>