<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee-login.aspx.cs" Inherits="employee_login" %>

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

        <link href="../assets/css/responsive-page.css" rel="stylesheet" type="text/css" />
    </style>
    <link href="http://www.vedasolution.com/assets/css/test.css" rel="stylesheet" />
        

    </head>

    <body>
      
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.aspx"><img src="http:\\www.vedasolution.com\assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                    </div>
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                           <li class=" dropdown">
                                <a href="professional_login.aspx">Login</a>
                               
                            </li>
                            
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->

        </header><!--header main end--> 
        <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                   Employee Log In
                </h3>
            </div>
        </section><!--page-tree end here-->
        <div class="space-70"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    
                         <form id="form1" runat="server">
            <center>
                <div class="employee_login">
                    <br />
                    <div class="employee_login_form">
                        <br />
                        
                        
                        <h4>Email address*</h4>
                        <asp:TextBox ID="employee_email" runat="server" placeholder="Enter Email Address" CssClass="email_employee"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="employee_email" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                        <h4>Password*</h4>
                        <asp:TextBox ID="employee_password" runat="server" placeholder="Enter Password" CssClass="password_employee" TextMode="Password"></asp:TextBox>
                        <br /><br />
                        
                        
                        <asp:CheckBox ID="Chkterms" runat="server" CssClass="chkterms_employee" Text="I accept all terms and Condition"></asp:CheckBox>
                        &nbsp;&nbsp;
                        <br /><br />
                        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn_employee_login" OnClick="btnlogin_Click"></asp:Button>
                        <br /><br />

                        <asp:Label ID="lblsignin" runat="server" ></asp:Label>
                        <br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <h5>Create An Account</h5>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="lbn_signup" runat="server" cssclass="signin_employee1" OnClick="lbn_signup_Click">Signup</asp:LinkButton>
                       
                    </div>
                </div>
            </center>
        </form>
  
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
