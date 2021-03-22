<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer-payment.aspx.cs" Inherits="customer_payment" %>



<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  >

    <head runat="server">
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
        <!--google  font family-->    
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
        <!--flex slider css-->
        <link href="assets\css\flexslider.css" rel="stylesheet">
        <!--animated  css-->
        <link href="assets\css\animate.css" rel="stylesheet">
        <!-- Base MasterSlider style sheet -->
        <link rel="stylesheet" href="assets\master-slider\style\masterslider.css">

        <!-- Master Slider Skin -->
        <link href="assets\master-slider\skins\default\style.css" rel='stylesheet' type='text/css'>
        <!--custom  css-->
        <link href="assets\css\style.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="assets/css/test.css" rel="stylesheet" />
        
    </head>
    <body>
        <header class="header-main">
            <div class="top-bar">

                <div class="container">
                   
                    <div class="pull-right">
                        <ul class="info list-inline">
                            
                            
                            
                                <li ><a href="c-edit-profile.aspx">Edit Profile</a>
                               
                            </li>
                            <li ><a href="c-change-password.aspx">Change Password</a>
                               
                            </li>
                            <li ><a href="Index.aspx">Logout</a>
                                </li>
                        </ul>
                    </div>
                </div><!--container end-->
            </div><!--topbar end-->
            <div class="clearfix"></div>
            <div class="navbar navbar-default sticky-nav sticky yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.aspx"><img src="assets/img/logo-dark.png" class="img-responsive" alt=""/> </a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown">
                                <a href="Index.aspx">Home</a> 
                                </li>
                               <li class="dropdown">
                                <a href="mybooking.aspx">My Bookings</a>
                                
                            </li>
                                
                           </li>
                                <li class="dropdown">
                                <a href="c-booking-by-veda.aspx">Booking By Veda</a>
                                </li>
                                
                          <!--   </li>
                            <li class=" dropdown">
                                <a href="showmyservice.aspx">Show My Service</a>
                                
                            </li>
                               <!--mega menu-->
                         <!--   <li class="dropdown yamm-fw active">
                                <a href="mybooking.aspx">My Booking</a>
                                
                            </li> 
                            <!--menu Features li end here--> 
                           <!-- <li class="social-nav"><a href="#"><i class="ion-social-facebook"></i></a></li>
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
                   Customer Payment
                </h3>
            </div>
        </section><!--page-tree end here-->
            <div class="space-70"></div>
       
                 
                         <form id="form1" runat="server">   
     
                <div class="payment">
                    <center>
                        <asp:Label ID="lblsearchtype" runat="server" CssClass="lblsearchtype" ></asp:Label>
                    </center>
                <div class="customer-payment">
                        <br />
                   
                        <asp:Label ID="lblmsg" runat="server" ForeColor="#15AA0F" CssClass="lblmsg_payment"></asp:Label>
                      
                        <asp:RadioButton ID="rbtnonline" CssClass="rbtnonline" runat="server" Text="&nbsp;&nbsp;Pay online after service completion" GroupName="priyanshu" />
                           
                           <br />  <br /> <br /> <br /> <br /><br /><br />   
                        <h4>Pay via Debit/Credit card/ netbanking/ Wallet after the service completion</h4>
                           
                    <asp:RadioButton ID="rbtncash" CssClass="rbtnonline" runat="server" Text="&nbsp;&nbsp;Cash on delivery" GroupName="priyanshu" />
                 
                    </div>
                    
                     
                    <div class="rate-list">
                        <br /><br />
                        <asp:Label ID="lblrate" runat="server" CssClass="lblrate" ></asp:Label>
                        <br />
                        <asp:Label ID="lblnormal_pricing_val" runat="server" CssClass="lblrate_val" ></asp:Label>

                    </div>
                    

                    <h6>By submiitting request,you accept outr <a href="#">terms of use</a> and <a href="#">privacy policy</a></h6>
                   
                    
                        <asp:Button ID="btnpayment" runat="server" Text="Pay on delivery" CssClass="btn_payment" OnClick="btnpayment_Click"></asp:Button>
                    </div>
            
        
</form>
  
                
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