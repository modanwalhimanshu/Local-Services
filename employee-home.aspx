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

       
    </style>
    <link href="assets/css/test.css" rel="stylesheet" />
       

    </head>

    <body>
      
        <header class="header-main">
            <div class="top-bar">

                <div class="container">
                    <ul class="info list-inline pull-left hidden-xs">
                        <li><a href="#" class="hover-color"><i class="ion-ios-email-outline"></i> mail@domain.com</a></li>
                        <li><i class="ion-iphone"></i> +91 (123) 456 78 90</li>
                    </ul>  
                    <div class="pull-right">
                        <ul class="info list-inline hidden-xs">
                            <li><a href="#" class="hover-color">Create an account?</a></li>
                            <li><a href="#" class="hover-color"><i class="ion-man"></i> Login</a></li>
                        </ul>
                    </div>
                </div><!--container end-->
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
                        <a class="navbar-brand" href="index.html"><img src="assets/img/vedasolution.png" class="img-responsive" alt=""/> </a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">

                            <li class=" dropdown">

                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Home</a> 
                                 <ul class="dropdown-menu">
                                    <li><a href="index.html">Home - Default</a></li>
                                     <li><a href="home-master.html">Home - Master Slider <span class="badge">Hot</span></a></li>
                                    <li><a href="home-animation.html">Home - Animations</a></li>
                                    <li><a href="home-boxed.html">Home boxed</a></li><li><a href="home-onepage.html">One Page</a></li>
                                    <li class="dropdown-submenu">
                                        <a tabindex="-1" href="#">Multi level menu </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"> menu level 2</a></li>
                                            <li class="dropdown-submenu">
                                                <a tabindex="-1" href="#">menu level 2 </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#"> menu level 3</a></li>
                                                    <li><a href="#"> menu level 3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>

                            </li>
                            <li class="dropdown">
                                <a href="employee-add-service.aspx">Add Service</a>
                                
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Portfolio</a>
                                <ul class="dropdown-menu">
                                    <li><a href="portfolio.html">Portfolio 3 col</a></li>
                                    <li><a href="portfolio-masonry.html">Portfolio Masonry</a></li>
                                    <li><a href="portfolio-full.html">Portfolio Full width</a></li>
                                    <li><a href="portfolio-full-boxed.html">Full width boxed</a></li>                            
                                    <li><a href="portfolio-single.html">Portfolio Single</a></li>
                                </ul>
                            </li>
                            <li class=" dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Blog</a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-full.html">Blog Full width</a></li>
                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>  
                                    <li><a href="blog-masonry.html">Blog Masonry</a></li>
                                    <li><a href="blog-post.html">Blog Post</a></li>
                                </ul>
                            </li>
                             <!--mega menu-->
                            <li class="dropdown yamm-fw active">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">More  <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="yamm-content">
                                            <div class="row">

                                                <div class="col-sm-3">
                                                    <h3 class="heading">Pages 1</h3>
                                                    <ul class="nav mega-vertical-nav">  
                                                        <li><a href="about.html">About Us</a></li>
                                                        <li><a href="contact.html">Contact Us</a></li>
                                                        <li><a href="services.html">Services</a></li>
                                                        <li><a href="our-team.html">Our Team</a></li>
                                                        <li><a href="login.html">Login</a></li>
                                                        <li><a href="signup.html">Sign up</a></li>
                                                    </ul>

                                                </div>
                                                <div class="col-sm-3">
                                                    <h3 class="heading">Pages 2 </h3>
                                                    <ul class="nav mega-vertical-nav">
                                                        <li><a href="page-fullwidth.html">Full Width</a></li>
                                                        <li><a href="page-leftbar.html">Left Sidebar</a></li>
                                                        <li><a href="page-rightbar.html">Right Sidebar</a></li>
                                                        <li><a href="faqs.html">Faqs</a></li>
                                                        <li><a href="page-error.html">Error 404</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3">
                                                    <h3 class="heading">Features</h3>
                                                    <ul class="nav mega-vertical-nav">
                                                        <li><a href="typography.html">Typography</a></li>
                                                        <li><a href="shortcodes.html">Shortcodes</a></li>                              
                                                        <li><a href="pricing.html">Pricing Tables</a></li>
                                                        <li><a href="footer-option.html">Footer option</a></li>
                                                    </ul>
                                                </div>
                                                 <div class="col-sm-3">
                                                    <h3 class="heading">Shop</h3>
                                                    <ul class="nav mega-vertical-nav">
                                                        <li><a href="shop-default.html">Shop 3 columns</a></li><li><a href="shop-sidebar.html">Shop Sidebar</a></li>
                                                        <li><a href="product-detail.html">Product Detail</a></li>                              
                                                        <li><a href="shop-cart.html">Cart</a></li>
                                                        <li><a href="shop-checkout.html">Checkout</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li> 
                            <!--menu Features li end here--> 
                            <li class="social-nav"><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li class="social-nav"><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li class="social-nav"><a href="#"><i class="ion-social-youtube"></i></a></li>
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->
        </header><!--header main end-->   
        <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                   Add Service
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
                    <div class="col-md-4 margin-btm-20">
                        <div class="footer-col">
                            <h3>vedasolution</h3>
                            <p>
                                aliqua.adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. aliqua.adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                            </p>
                        </div>
                        <div class="space-20"></div>
                                <div class="footer-col">
                                    <h3>contact info</h3>
                                    <p><i class="ion-home"></i> pearl tower,3rd floor,jaipur,302012</p>
                                    <p><i class="ion-iphone"></i> +91 9887568614</p>
                                    <p><i class="ion-email"></i> mail@domain.com</p>
                                </div>
                        <div class="space-20"></div>
                                <div class="footer-col">
                                    <h3>Follow us</h3>
                                    <ul class=" list-inline social-btn">
                                        <li><a href="#"><i class="ion-social-facebook" data-toggle="tooltip" data-placement="top" title="" data-original-title="Like On Facebook"></i></a></li>
                                        <li><a href="#"><i class="ion-social-twitter" data-toggle="tooltip" data-placement="top" title="" data-original-title="Follow On twitter"></i></a></li>
                                        <li><a href="#"><i class="ion-social-googleplus" data-toggle="tooltip" data-placement="top" title="" data-original-title="Follow On googleplus"></i></a></li>
                                        <li><a href="#"><i class="ion-social-pinterest" data-toggle="tooltip" data-placement="top" title="" data-original-title="pinterest"></i></a></li>
                                        <li><a href="#"><i class="ion-social-skype" data-toggle="tooltip" data-placement="top" title="" data-original-title="skype"></i></a></li>
                                    </ul>
                        </div><!--footer social col-->
                    </div><!--col-4 end-->
                    <div class="col-md-3 margin-btm-20">
                        <div class="footer-col">
                            <h3>Latest post</h3>
                            <ul class="post-list list-unstyled">
                                <li><a href="#" class="hover-color">Blog post with image</a></li>
                                <li><a href="#" class="hover-color">lorem ipsum dollor sit amet</a></li>
                                <li><a href="#" class="hover-color">Blog post with audio</a></li>
                                <li><a href="#" class="hover-color">lorem ipsum dollor sit amet</a></li>
                                <li><a href="#" class="hover-color">Blog post with quote</a></li>
                            </ul>
                        </div>
                    </div><!--latest post col end-->
                    <div class="col-md-5">
                        <div class="footer-col">
                            <h3>Get in touch</h3>
                            <form>
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" placeholder="Name...">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="email" class="form-control" placeholder="Email...">
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" placeholder="Subject...">
                                    </div>
                                    <div class="col-md-12">
                                        <textarea class="form-control" placeholder="Massage..." rows="7"></textarea>
                                    </div>
                                    <div class="col-md-12 text-right">
                                        <button type="submit" class="btn btn-lg btn-white">Send massege</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div><!--get in touch col end-->
                </div><!--footer main row end-->  
                <div class="space-70"></div>
                <div class="row">
                    <div class="col-md-12 text-center footer-bottom">
                        <a href="index.html"> <img src="assets\img\logo-white.png" alt=""></a>
                        <div class="space-20"></div>
                        <span>&copy;2016.all right resrved.Design by design_mylife</span>
                    </div>
                </div><!--footer copyright row end-->
            </div><!--container-->
        </div><!--footer main end-->
        <!--scripts-->
           <!--scripts-->
        <script src="assets\js\jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets\js\modernizr.custom.97074.js"></script>
        <script src="assets\bootstrap\js\bootstrap.min.js" type="text/javascript"></script>
        <script src="assets\js\jquery.easing.1.3.min.js" type="text/javascript"></script>
        <script src="assets\js\bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="assets\js\jquery.sticky.js" type="text/javascript"></script>
        <script src="assets\js\jquery.flexslider-min.js" type="text/javascript"></script>
        <script src="assets\js\jquery.mixitup.min.js" type="text/javascript"></script>
        <script src="assets\js\parallax.min.js" type="text/javascript"></script>
        <script src="assets\js\wow.min.js" type="text/javascript"></script>
        <script src="assets\js\app.js" type="text/javascript"></script>
    </body>
</html>