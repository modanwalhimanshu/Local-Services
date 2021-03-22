<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer-home.aspx.cs" Inherits="customerhome" %>

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
                    <ul class="info list-inline pull-left hidden-xs">
                        
                        
                    </ul>  
                    <div class="pull-right">
                        <ul class="info list-inline">
                            
                            
                            
                               
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
                        <a class="navbar-brand" href="index.aspx"><img src="assets/img/logo-dark.png" class="img-responsive" alt="Vedasolution"/></a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li class=" dropdown">
                                <a href="Index.aspx">Home</a> 
                                
                            

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->
        </header><!--header main end-->   
        <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                   Customer Home
                </h3>
            </div>
        </section><!--page-tree end here-->
            
                 
                         <form id="form1" runat="server">
                               <div class="c_home">
                          
                             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
               

                    <div class="customer-container-left" >
                    <center>
                        <asp:Label ID="lblsearchtype" runat="server" CssClass="lblsearchtype" ></asp:Label>
                      </center>
                        <br /><br />
                        <asp:Label ID="lblpromise" runat="server" CssClass="lblpromise"  ></asp:Label>
                        
                        <asp:Label ID="lblpromise_val" runat="server"  CssClass="lblpromise_val"></asp:Label>
                        <br />
                        <asp:Label ID="lblnormal_pricing" runat="server" CssClass="lblpromise" ></asp:Label>
                        
                        <asp:Label ID="lblnormal_pricing_val" runat="server" CssClass="lblpromise_val" ></asp:Label>
                        <br />
                        <asp:Label ID="lblstandard_pricing" runat="server" CssClass="lblpromise" ></asp:Label>
                        
                        <asp:Label ID="lblstandard_pricing_val" runat="server" CssClass="lblpromise_val" ></asp:Label>
                        <br />
                        <asp:Label ID="lblpayment" runat="server" CssClass="lblpromise" ></asp:Label>
                        
                        <asp:Label ID="lblpayment_val" runat="server" CssClass="lblpromise_val" ></asp:Label>
                        </div>

                    <div class="customer-container-right">

                        <div class="customer-container-right-form">
                            <br />
                        <h2 class="c_h2">Where do you require a service?</h2>
                            <br /><br />
                        <h3>House/Flat No*</h3>
                        <asp:TextBox ID="txthouse" runat="server" placeholder="Enter your house/flat no" CssClass="customer-house" MaxLength="100"></asp:TextBox>
                        <br /><br /><br /><center>
                            <asp:Label ID="lblhouse" runat="server" ForeColor="Red"></asp:Label></center>
                            <br />
                        <h3>Landmark*</h3>
                        <asp:TextBox ID="txtlandmark" runat="server" placeholder="Enter Your Landmark" CssClass="customer-house" MaxLength="100"></asp:TextBox>
                        <br /><br /><br /><center>
                            <asp:Label ID="lbllandmark" runat="server" ForeColor="Red"></asp:Label>
                            <br /></center>
                            <h3>Locality*</h3>
                        <asp:TextBox ID="txtlocality" runat="server" placeholder="Enter Your Locality" CssClass="customer-house" MaxLength="50"></asp:TextBox>
                        <br /><br /><br /><center>
                            <asp:Label ID="lbllocality" runat="server" ForeColor="Red"></asp:Label>
                            <br /></center>
                            <h3>Pincode*</h3>
                        <asp:TextBox ID="txtpincode" runat="server" placeholder="Pincode" CssClass="customer-house" MaxLength="6"></asp:TextBox>
                        <br /><br /><br />
                            <center>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpincode" ErrorMessage="Invaid Pincode" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        <asp:Label ID="lblpincode" runat="server" ForeColor="Red"></asp:Label>
                                </center>
                        <br />
                             <h3>Pick A Date*</h3>
                            <asp:TextBox ID="txtdate" runat="server" placeholder="Please Pick a Date" CssClass="customer-house" MaxLength="50"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="txtdate_CalendarExtender" runat="server" CssClass="customer-date" BehaviorID="txtdate_CalendarExtender" TargetControlID="txtdate" />
                         
                            
                        <br /><br /><br /><center>
                            <asp:Label ID="lbldate" runat="server" ForeColor="Red"></asp:Label><br /></center>
                            <h3>Service Time*</h3>
                            <asp:DropDownList ID="ddlservice_time" runat="server"  CssClass="customer-house">
                            <asp:ListItem>Select your service Time</asp:ListItem>
                            <asp:ListItem>07:00AM-08:00AM</asp:ListItem>
                            <asp:ListItem>08:00AM-09:00AM</asp:ListItem>
                            <asp:ListItem>09:00AM-10:00AM</asp:ListItem>
                            <asp:ListItem>10:00AM-11:00AM</asp:ListItem>
                            <asp:ListItem>11:00AM-12:00PM</asp:ListItem>
                            <asp:ListItem>12:00PM-01:00PM</asp:ListItem>
                            <asp:ListItem>01:00PM-02:00PM</asp:ListItem>
                            <asp:ListItem>02:00PM-03:00PM</asp:ListItem>
                            <asp:ListItem>03:00PM-04:00PM</asp:ListItem>
                            <asp:ListItem>04:00PM-05:00PM</asp:ListItem>
                            <asp:ListItem>05:00PM-06:00PM</asp:ListItem>
                            <asp:ListItem>06:00PM-07:00PM</asp:ListItem>
                            <asp:ListItem>07:00PM-08:00PM</asp:ListItem>
                        </asp:DropDownList>
                        <br /><br /><br /><center>
                            <asp:Label ID="lblservice" runat="server" ForeColor="Red"></asp:Label>
                            <br /></center>
                            <asp:Button ID="btnnext" runat="server" Text="Next" CssClass="btn_next" OnClick="btnnext_Click"></asp:Button>
                            <br /><br /><br /><br />
                        <asp:Label ID="lbladd" runat="server" ForeColor="Red"></asp:Label>

                            </div>
                        </div>
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