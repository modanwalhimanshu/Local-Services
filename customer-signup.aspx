<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer-signup.aspx.cs" Inherits="customer_signup" %>

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

       
    
    <link href="assets/css/test.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
        <script type="text/javascript">
            function validate() {
                if (document.getElementById("<%=employee_name.ClientID%>").value == "") {
                    alert("Enter Your Name");
                    document.getElementById("<%=employee_name.ClientID%>").focus();
                    return false;
                }
                if (document.getElementById("<%=employee_mobileno.ClientID%>").value == "") {
                    alert("Enter Your Mobileno");
                    document.getElementById("<%=employee_mobileno.ClientID%>").focus();
                    return false;
                }
                if (document.getElementById("<%=employee_email.ClientID%>").value == "") {
                    alert("Enter Your Email Id");
                    document.getElementById("<%=employee_email.ClientID%>").focus();
                    return false;
                }
                if (document.getElementById("<%=employee_password.ClientID%>").value == "") {
                    alert("Enter Your Password ");
                    document.getElementById("<%=employee_password.ClientID%>").focus();
                    return false;
                }
                if (document.getElementById("<%=confirm_employee_password.ClientID%>").value == "") {
                    alert("Enter Confirm Password");
                    document.getElementById("<%=confirm_employee_password.ClientID%>").focus();
                    return false;
                }
            }
        </script>
            
    </head>

    <body>
      
        <header class="header-main">
            <div class="top-bar">
            <div class="container">
                    <ul class="info list-inline pull-left hidden-xs">
                       
                    </ul>  
                  
                   
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
                        <a class="navbar-brand" href="Index.aspx"><img src="assets/img/logo-dark.png" class="img-responsive" alt=""></a>
                    </div>
                    <div class="navbar-collapse collapse">
                        
                     <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown"></a> 
                                 
                                    <li><a href="Index.aspx">Home</a></li>
                                   <!--  <li><a href="home-master.html">Home - Master Slider <span class="badge">Hot</span></a></li>
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
                         <!--   <li class="dropdown yamm-fw active">
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
                       <!--     <li class="social-nav"><a href="#"><i class="ion-social-facebook"></i></a></li>
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
                    Create new account
                </h3>
            </div>
        </section><!--page-tree end here-->
        <div class="space-70"></div>
      
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    
                         <form id="form1" runat="server">
                         
            <center>
           
                <div class="customer_register">
                    <br />
                    <div class="customer_register_form">
                        <br />
                         
                        <h1>Create Account</h1>
                        <h4>Your name(Full Name) </h4>
                        <asp:TextBox ID="employee_name" runat="server" placeholder="Your Name" CssClass="name_employee" MaxLength="50"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblemployee_name" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <h4>Mobile number</h4>
                        <asp:TextBox ID="employee_mobileno" runat="server" placeholder="Mobile No." CssClass="mobile_employee" MaxLength="10"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile No" ControlToValidate="employee_mobileno" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                        <asp:Label ID="lblemployee_mobileno" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <h4>Email address</h4>
                        <asp:TextBox ID="employee_email" runat="server" placeholder="Enter Email Address" CssClass="email_employee" MaxLength="50"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email Id" ControlToValidate="employee_email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       <asp:Label ID="lblemployee_email" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <h4>Password</h4>
                        <asp:TextBox ID="employee_password" runat="server" placeholder="at least 6 character" TextMode="Password" CssClass="password_employee" MaxLength="20"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="employee_password" ErrorMessage="Password should be strong" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9'@&amp;#.\s]{6,20}$"></asp:RegularExpressionValidator>
                        <br /><asp:Label ID="lblemployee_password" runat="server" ForeColor="Red"></asp:Label><br />
                        <h4>Confirm password</h4>
                        <asp:TextBox ID="confirm_employee_password" runat="server" placeholder="Confirm Password" TextMode="Password" CssClass="confirm_password_employee" MaxLength="20"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Doesn't Match" ControlToCompare="employee_password" ForeColor="Red" ControlToValidate="confirm_employee_password"></asp:CompareValidator>
                        <br /><asp:Label ID="lblconfirm_employee_password" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:CheckBox ID="Chkterms" runat="server" CssClass="chkterms_employee" Text="&nbsp;I accept all terms and Condition" ></asp:CheckBox>
                        &nbsp;&nbsp;
                        <br /><br />
                        <asp:Button ID="employee_signup" runat="server" Text="Sign Up"  CssClass="signup_employee" OnClientClick="validate()"  OnClick="employee_signup_Click" ></asp:Button>
                          
                        <br /><br />
                        <asp:Label ID="lblname" runat="server" ForeColor="Green" ></asp:Label>
                        <br /><br />
                        <h5>Already have an account?</h5>
                       <asp:LinkButton ID="lbn_signin" runat="server" OnClick="lbn_signin_Click">Sign In</asp:LinkButton>
                        
                       
                        <br />
                        
                      
                    </div>
                </div>
                
            </center>
           
        </form>
  
                    </div>
          
            </div>
        </div>
        
        <div class="space-70">
             
            </div>
               <div id="footer">
            <div class="container">
                <div class="row">
                   
                        
                        
                                <div class="footer-col">
                                    <h3>contact info</h3>
                                    
                                    <p><i class="ion-iphone"></i> +91 7275675028</p>
                                    <p><i class="ion-email"></i> vikasnigamknp@gmail.com</p>
                                </div>
                        
                   
                    
                    
                  
                </div><!--footer main row end-->  
                <div class="space-70"></div>
                <div class="row">
                    <div class="col-md-12 text-center footer-bottom">
                        <a href="index.html"> <img src="assets/img/logo-dark.png"  alt=""></a>
                        <div class="space-20"></div>
                        <span>&copy;2017.all right resrved.</span>
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
        </form>
    </body>
</html>
