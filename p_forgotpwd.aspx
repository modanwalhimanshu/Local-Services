<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p_forgotpwd.aspx.cs" Inherits="p_forgotpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server">
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
          <script src="assets\js\jquery.min.js" type="text/javascript"></script> 
       <script type="text/javascript" src="assets\js\pswdshow_hide.js"></script> 
      
        <style type="text/css">
            .style9
            {
                color: #000000;
                font-size: x-large;
            }
            </style>

    </head>
    <body>
     <form id="Form1"  runat="server">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                    </div
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="professional_login.aspx">Login</a>
                                
                            </li>
                            <!--mega menu-->
                            
                            <!--menu Features li end here--> </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->

        </header><!--header main end-->
         <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                    
                   
                </h3>
            </div>
        </section><!--page-tree end here-->
         
        <div class="space-70"></div>

     <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="my-login-form">
                       
                            <h4 class="heading-mini">Forgot Password</h4>
                            <div class="form-group">
                            <asp:TextBox ID="txtmobileno" runat="server" class="form-control" 
                                    placeholder="Mobile No" MaxLength="10" ></asp:TextBox>
           <p>  <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                                    ControlToValidate="txtmobileno" ErrorMessage="Invalid Mobile No." ForeColor="Red" 
                                    ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator></p>
  
                            </div> 
                           
                            <div class=" text-right">

            <asp:Button ID="pbtnlogin" runat="server" class="btn theme-btn-color" Text="Reset Password" 
                                    onclick="Button1_Click" />
                                
                            </div>
                             <div class="form-btm-link text-center">
                    <h4>
                        <asp:Label ID="lblmsg1" runat="server" Font-Size="Large" ForeColor="#CC0000"></asp:Label> </h4>
                        </div> 
                         
<asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                       
                       
                    </div>
                </div>
            </div> </div>
 
             </form><!--login form end-->         
</body>
</html>
