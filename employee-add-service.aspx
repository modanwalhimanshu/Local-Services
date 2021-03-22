<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee-add-service.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
                    <ul class="info list-inline pull-left hidden-xs">
                        <li><a href="#" class="hover-color"><i class="ion-ios-email-outline"></i> mail@domain.com</a></li>
                        <li><i class="ion-iphone"></i> +91 (123) 456 78 90</li>
                    </ul>  
                    <div class="pull-right">
                        <ul class="info list-inline">
                            
                            
                            <li ><a href="index.aspx">Logout</a>
                               
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
                        <a class="navbar-brand" href="index.aspx"><img src="assets/img/vedasolution.png" class="img-responsive" alt=""/> </a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown">
                                <a href="mainhome.aspx">Home</a> 
                                
                            </li>
                            <li class="dropdown">
                                <a href="addservice.aspx">Add Service</a>
                                
                            </li>
                            <li class=" dropdown">
                                <a href="showmyservice.aspx">Show My Service</a>
                                
                            </li>
                               <!--mega menu-->
                            <li class="dropdown yamm-fw active">
                                <a href="mybooking.aspx">My Booking</a>
                                
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
                <div class="employee_add_service1">
                    <br />
                    <div class="employee_add_service1_form">
                        <br />
                        <h1>Add Service</h1>
                        
                       <h4>Service Name*</h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlservice_name" runat="server"  CssClass="designation_employee">
                            <asp:ListItem>Select your service</asp:ListItem>
                            <asp:ListItem>Electrician</asp:ListItem>
                            <asp:ListItem>Plumber</asp:ListItem>
                            <asp:ListItem>AC Service & Repair</asp:ListItem>
                            <asp:ListItem>Car Service & Repair</asp:ListItem>
                            <asp:ListItem>Carpenter</asp:ListItem>
                            <asp:ListItem>Washing Machine Repair</asp:ListItem>
                            <asp:ListItem>Refrigerator Repair</asp:ListItem>
                            <asp:ListItem>Laptop Repair</asp:ListItem>
                            <asp:ListItem>Mobile Repair</asp:ListItem>
                            <asp:ListItem>RO & Water Purifier Repair</asp:ListItem>
                            <asp:ListItem>Microwave Repair</asp:ListItem>
                            <asp:ListItem>TV /DTH Installation</asp:ListItem>
                            <asp:ListItem>Chimney & Hob Repair</asp:ListItem>
                            <asp:ListItem>Water Tank Cleaning</asp:ListItem>
                            <asp:ListItem>Interior Work / Civil Repair</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                         <asp:Label ID="lblservice_name" runat="server" ForeColor="Red"></asp:Label>
                        <br /><br /> <br /><br />
                        <h4>Our Promises* </h4>
                        <asp:TextBox ID="our_promise" runat="server" placeholder="Enter Promises" CssClass="service_name"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblour_promise" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnaddpromise" runat="server" Text="Add" CssClass="btnadd-promise" OnClick="btnaddpromise_Click" />
                        <br />
                        <asp:ListBox ID="lst_promise" runat="server" CssClass="lst_promise" ></asp:ListBox>
                        <br /><br />
                        <h4>Normal Pricing* </h4>
                        <asp:TextBox ID="normal_pricing1" runat="server" placeholder="Enter Time" CssClass="normal_pricing1"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="normal_pricing2" runat="server" placeholder="Enter Normal Amount" CssClass="normal_pricing2"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblnormal_pricing" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnaddprice" runat="server" Text="Add" CssClass="btnadd-promise" OnClick="btnaddprice_Click" />
                        <br />
                        <asp:ListBox ID="lstnormal_pricing" runat="server" CssClass="lst_promise" ></asp:ListBox>
                        <br /><br />

                        <h4>Standard Pricing* </h4>
                        <asp:TextBox ID="standard_pricing1" runat="server" placeholder="Enter Work" CssClass="normal_pricing1"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="standard_pricing2" runat="server" placeholder="Enter Standard Amount" CssClass="normal_pricing2"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblstandard_pricing" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnadd_standard_price" runat="server" Text="Add" CssClass="btnadd-promise" OnClick="btnadd_standard_price_Click"/>
                        <br />
                        <asp:ListBox ID="lststandard_pricing" runat="server" CssClass="lst_promise" ></asp:ListBox>
                        <br /><br />
                        <h4>Payment Option* </h4>
                        <asp:TextBox ID="payment_option" runat="server" placeholder="Enter Payment Option" CssClass="service_name"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblpayment_option" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnpayment_option" runat="server" Text="Add" CssClass="btnadd-promise" OnClick="btnpayment_option_Click"  />
                        <br />
                        <asp:ListBox ID="lstpayment_option" runat="server" CssClass="lst_promise" ></asp:ListBox>
                        <br /><br />
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn_submit" OnClick="btnsubmit_Click" />
                        <br /><br />
                        <asp:Label ID="lblmsg1" runat="server" ForeColor="Green" ></asp:Label>

                    </div>
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