<%@ Page Language="C#" AutoEventWireup="true" CodeFile="professional_signup.aspx.cs" Inherits="professional_signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

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

        <style type="text/css">
            .style7
            {
                color: #0000FF;
            }
            .style8
            {
                width: 41px;
            }
            .style9
            {
                color: #000000;
            }
            .style10
            {
                width: 239px;
            }
            .style11
            {
                width: 266px;
            }
        </style>
    </head>
    <body>
    <form id="Form1" runat="server" >
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                    </div>
                    <%--<div class="navbar-collapse collapse">--%>

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
                    Create new account
                </h3>
            </div>
        </section><!--page-tree end here-->
        <div class="space-70"></div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="my-login-form">
                          
                        <h4 class="heading-mini">Sign up</h4>
                        <div class="row">
                         <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_txtname" runat="server"  placeholder="Full name" 
                                 class="form-control" MaxLength="50" ></asp:TextBox><p></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_txtcity" runat="server"   class="form-control" 
                                  placeholder="City" MaxLength="50" ></asp:TextBox><p></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                            <asp:DropDownList ID="ddlservicetype"  runat="server" class="form-control" 
                                            placeholder="Select your service" >
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
                                           <p></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                          <asp:TextBox ID="P_txtmob" runat="server" class="form-control" placeholder="mobile" 
                                  MaxLength="10" ></asp:TextBox>
                        <p> <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                                    ControlToValidate="P_txtmob" ErrorMessage="Invalid Mobile No." ForeColor="Red" 
                                    ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                                   <asp:TextBox ID="P_txtmail" runat="server" placeholder="E-mail" 
                                       class="form-control" MaxLength="50"  ></asp:TextBox>
           <p>  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="P_txtmail" ErrorMessage="Invalid E-mail" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                            <asp:TextBox ID="P_txtpswd" runat="server"  class="form-control" placeholder="Password"
                             TextMode="Password" MaxLength="50"></asp:TextBox>
                                                             <p>  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                      ControlToValidate="P_txtpswd" 
                                      ErrorMessage=" 8 char,1 special character, 1 numeric" 
                                      ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[!@#$%]).{8,})"></asp:RegularExpressionValidator></p>
      
                        </div>
                         <div class="col-md-6 margin-btm-20">
                                   <asp:TextBox ID="txtotp" runat="server" placeholder="OTP" 
                                       class="form-control" MaxLength="6"  ></asp:TextBox>

          <p>
              <asp:LinkButton ID="lnkresend" runat="server" onclick="lnkresend_Click">Re-Send OTP</asp:LinkButton></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                            <asp:TextBox ID="txtpincode" runat="server"  class="form-control" placeholder="Pincode"
                              MaxLength="6"></asp:TextBox>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                  ErrorMessage="Invalid Pincode" ControlToValidate="txtpincode" 
                                  ForeColor="#CC0000" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>                                  
      
                        </div>
    
             <div class="col-md-12 text-right"> 
                 <asp:Label ID="lblmsg1" runat="server" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                 <asp:Button ID="pbtnsignup" runat="server" class="btn theme-btn-color"
                            Text="Sign up"
                     onclick="Button1_Click"    /></div>
                     <div class="form-btm-link text-center">
                    <h4>
                        &nbsp;</h4>
                        </div> 
                    <div class="form-btm-link text-center">
                     <h4> Already have an account?
                      <asp:LinkButton ID="lnkbtnlogin" 
                          runat="server" PostBackUrl="~/professional_login.aspx">Login</asp:LinkButton> </h4>
                        </div> 
                        </div>  
         </div>  </div> </div></div> 
        </ContentTemplate>
        </asp:UpdatePanel> 
        </form>
</body>
</html>
