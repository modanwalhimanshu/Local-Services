<%@ Page Language="C#" AutoEventWireup="true" CodeFile="areacity.aspx.cs" Inherits="vadmin_areacity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <div>
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
        <!--google  font family-->    
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
        <!--flex slider css-->
        <link href="http:\\www.vedasolution.com\assets\css\flexslider.css" rel="stylesheet">
        <!--animated  css-->
        <link href="http:\\www.vedasolution.com\assets\css\animate.css" rel="stylesheet">
        <!-- Base MasterSlider style sheet -->
        <link rel="stylesheet" href="http:\\www.vedasolution.com\assets\master-slider\style\masterslider.css">

        <!-- Master Slider Skin -->
        <link href="http:\\www.vedasolution.com\assets\master-slider\skins\default\style.css" rel='stylesheet' type='text/css'>
        <!--custom  css-->
        <link href="http:\\www.vedasolution.com\assets\css\style.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="http:\\www.vedasolution.com\assets/css/test.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <%--<div>
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
        <!--google  font family-->    
        <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400italic' rel='stylesheet' type='text/css'>
        <!--flex slider css-->
        <link href="http:\\www.vedasolution.com\assets\css\flexslider.css" rel="stylesheet">
        <!--animated  css-->
        <link href="http:\\www.vedasolution.com\assets\css\animate.css" rel="stylesheet">
        <!-- Base MasterSlider style sheet -->
        <link rel="stylesheet" href="http:\\www.vedasolution.com\assets\master-slider\style\masterslider.css">

        <!-- Master Slider Skin -->
        <link href="http:\\www.vedasolution.com\assets\master-slider\skins\default\style.css" rel='stylesheet' type='text/css'>
        <!--custom  css-->
        <link href="http:\\www.vedasolution.com\assets\css\style.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="http:\\www.vedasolution.com\assets/css/test.css" rel="stylesheet" />
        
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
                        <a class="navbar-brand" href="index.aspx"><img src="assets/img/logo-dark.png" class="img-responsive" alt=""/> </a>
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
            </div>--%>        <%--</section><!--page-tree end here-->--%>
            <div class="space-70"></div>
            <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="my-login-form">
                         <%--<form id="form2" runat="server">--%>
            
                <div class="employee_add_service1">
                    <br />
                    <div class="employee_add_service1_form">
                        <br />
                        <div class="col-md-4">
                    <div class="single-sidebar">
                        
                    </div>
                    
                    
                </div>
                        <div class="col-1">
        <table class="style1">
            <tr>
                <td colspan="2">
                        <h1>Add Area/City</h1>
                        </td>
                        <td class="style4">
                            &nbsp;</td>
            </tr>
    </div>
    </div>
    <div class="col-1">
    <p><tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtareacity" placeholder="Enter Area/City* " runat="server" 
                       Height="41px" Width="290px" CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style10">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:localserviceConnectionString %>" 
                        SelectCommand="SELECT * FROM [AreaCityMaster] ORDER BY [RecNo]">
                    </asp:SqlDataSource>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server">
                    </asp:AccessDataSource>
                    </td>
            </tr>
                </p>
            <p>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style5">
                <%--<asp:TextBox ID="txtpassword" placeholder="Password*" runat="server" 
                        CssClass="fortextbox" MaxLength="8" TextMode="Password"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlstate" placeholder="select State" Height="41px" Width="290px"
                    runat="server">
                    </asp:DropDownList>
                </td>
                <td class="style10">
                    </td>
            </tr></p>
            <tr>
                <td class="style5">
                    </td>
                <td class="style5">
                    <%--<asp:Button ID="btnsave" runat="server" Text="save" OnClientClick="return validate();" CssClass="btn" 
                        onclick="btnsave_Click" />--%>
                    <asp:Button ID="btnsave" runat="server" Text="Save" Height="33px" 
                    Width="110px" CssClass="btn" onclick="btnsave_Click" />                
                <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="Remember" />--%>
                </td>
                <br />
                <br />
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </table>
                </div>
                </div>

                <div class="col-2">
    
        <table class="style1">
            <tr>
                <td class="style33" colspan="2">
                    &nbsp;</td>
                <td class="style33">
                    </td>
            </tr>
            
            <%--<tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtfullname" placeholder="Full Name*" runat="server" 
                        CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style5">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtaddress" placeholder="Address*" runat="server" 
                        CssClass="fortextbox" TextMode="MultiLine" Width="192px"></asp:TextBox>
                </td>
                <td class="style5">
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtpincode" placeholder="Pin Code*" runat="server" 
                        CssClass="fortextbox" MaxLength="6"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtpincode" ErrorMessage="Invaid pincode" ForeColor="Red" 
                        ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style38">
                   
                </td>
                <td class="style39">
                    <asp:TextBox ID="txtmobileno" placeholder="Mobile Number*" runat="server" 
                        CssClass="fortextbox" MaxLength="10"></asp:TextBox>
                </td>
                <td class="style38">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmobileno" ErrorMessage="Invalid mobile no" 
                        ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style38">
                    
                </td>
                <td class="style39">
                    <asp:TextBox ID="txtemailid" placeholder="Email-Id*" runat="server" CssClass="fortextbox"></asp:TextBox>
                </td>
                <td class="style38">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="Invalid emailid" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style43">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtpwd" placeholder="Password*" runat="server" TextMode="Password" 
                        CssClass="fortextbox" MaxLength="8"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtpwd" ErrorMessage="1 spcl char,1 char,1 num" ForeColor="Red" 
                        ValidationExpression="((?=.*\d)(?=.*[!@#$%]).{8,})"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="style5">
                    <h4>
                        &nbsp;</h4>
                </td>
                <td class="style37">
                    <asp:TextBox ID="txtconfirmpwd" placeholder="Confirm Password*" runat="server" TextMode="Password" 
                        CssClass="fortextbox" MaxLength="8"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtpwd" ControlToValidate="txtconfirmpwd" 
                        ErrorMessage="password dosen't match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style43">
                </td>
                <td class="style37">
                <asp:Button ID="btnsubmit2" runat="server" Text="signup"
                        onclick="btnsubmit2_Click1" CssClass="btn" />
                </td>
                
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                
            </tr>--%>
        </table>
    </div>
                </div>
                    <asp:GridView ID="Gridview1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="RecNo" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="RecNo" HeaderText="RecNo" InsertVisible="False" 
                                ReadOnly="True" SortExpression="RecNo" />
                            <asp:BoundField DataField="CityArea" HeaderText="CityArea" 
                                SortExpression="CityArea" />
                            <asp:BoundField DataField="StateRecNo" HeaderText="StateRecNo" 
                                SortExpression="StateRecNo" />
                            <asp:BoundField DataField="AddUser" HeaderText="AddUser" 
                                SortExpression="AddUser" />
                            <asp:BoundField DataField="EditUser" HeaderText="EditUser" 
                                SortExpression="EditUser" />
                            <asp:BoundField DataField="AddDate" HeaderText="AddDate" 
                                SortExpression="AddDate" />
                            <asp:BoundField DataField="EditDate" HeaderText="EditDate" 
                                SortExpression="EditDate" />
                        </Columns>
            </asp:GridView>
                </form>
</body>
</html>
