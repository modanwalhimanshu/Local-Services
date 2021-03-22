<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Partner-info.aspx.cs" Inherits="vadmin_Partner_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head id="Head1" runat="server" >
  
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <title>VedaSolution</title>
        <meta name="description" content="HTML5 & CSS3">
        <meta name="keywords" content="HTML5, CSS3, Theme,bootstrap3,clean design"> 

             <!--bootstrap3 css-->
        <link href="http:\\www.vedasolution.com\assets\bootstrap\css\bootstrap.min.css" rel="stylesheet">
        <!--ion icon fonts css-->
        <link href="http:\\www.vedasolution.com\assets\icons\css\ionicons.css" rel="stylesheet">
        <!--bootstrap3 css-->
  
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


        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("#dialog").dialog({
                modal: true,
                autoOpen: false,
                title: "jQuery Dialog",
                width: 300,
                height: 150
            });
            $("#imgaadhar").click(function () {
                alert('hello');
                $('#dialog').dialog('open');
            });
        });
</script>
        <style type="text/css">
            .style1
            {
                height: 626px;
                width: 1165px;
                margin-left: 91px;
            }
            .style2
            {
                margin-left: 33px;
            }
            .style3
            {
                margin-left: 35px;
            }
            .style4
            {
                text-align: left;
            }
            .style5
            {
                text-align: right;
            }
            .style6
            {
                text-align: center;
            }
            .style7
            {
                width: 100%;
                height: 309px;
                margin-bottom: 0px;
            }
            .style8
            {
                color: #FFFFFF;
            }
            </style>
    </head>
    <body>
   <div id="dialog" style="display: none" align = "center">
    This is a jQuery Dialog.
</div>
    <form id="Form1" runat="server" style="background-color: #C0C0C0; height: 1068px;">
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
                                <%--<ul class="dropdown-menu">
                                    <li><a href="a-show-partner.aspx">Employee</a></li>
                                    <li><a href="Customer-info.aspx">Customer</a></li>
                                    <li><a href="Partner-info.aspx">Partner</a></li>
                                        <li><a href="blog-sidebar.html">Blog Sidebar</a></li>  
                               
                                </ul>--%>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Booking</a>
                                <ul class="dropdown-menu">
                                    <%--<li><a href="a-show-partner.aspx">Employee</a></li>
                                    <li><a href="Customer-info.aspx">Customer</a></li>
                                    <li><a href="Partner-info.aspx">Partner</a></li>--%>
                                        <%--<li><a href="blog-sidebar.html">Blog Sidebar</a></li>--%>  
                               
                                </ul>
                            </li>
                           
                           <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Edit Profile</a>
                                <ul class="dropdown-menu">
                                    <li><a href="a-show-partner.aspx">Employee</a></li>
                                    <li><a href="Customer-info.aspx">Customer</a></li>
                                    <li><a href="Partner-info.aspx">Partner</a></li>
                                        <%--<li><a href="blog-sidebar.html">Blog Sidebar</a></li>--%>  
                               
                                </ul>
                            </li>
                             
                              <li><a href="a_logout.aspx">Logout</a></li>
                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->
        </header><!--header main end--> 
        <center>
                     <div class="tab_heading" style="color:white;height:50px;width:auto;background-color:#CD5C5C">
                     <h2>PARTNER PROFILE</h2>
                     </div>
                     </center>  
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
                         
        
                       
         <div style="background-color: #FFFFFF; margin-right: 20px; margin-top: 20px; margin-bottom: 20px;" 
            class="style1"  >
            
                        
             <br />
                                                                             <br />
                                                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                             &nbsp;Search By 
             Mobile No:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtmobileno" 
                 runat="server" Height="30px" 
                                                                                 
                 PlaceHolder="Mobile No" Width="130px" MaxLength="10" ForeColor="#000099"></asp:TextBox>
                                                                             &nbsp;<asp:Button 
                 ID="btnp_search1" runat="server" class="btn theme-btn-color" 
                                                                                  
                 Text="Search" BackColor="#990000" 
                 ForeColor="White" onclick="btnp_search1_Click1" />
                                                                             &nbsp;<asp:Label 
                 ID="lblmsg1" runat="server" ForeColor="Red"></asp:Label>
                                                                         
                                                                     <tr ID="trnew5">
                                                                         <td>
                                                                             <br />
                                                                             <br />
                                                                             &nbsp;</td>
                                                                         <td class="style6">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                 
                                                         
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                                                                 ImageUrl="~/new_images/excel-logo.gif" onclick="ImageButton1_Click" />
                                                            
                                                            &nbsp; <asp:Panel ID="Panel5" 
                 runat="server" Height="374px" ScrollBars="Both" Width="1129px">
                                                             
                                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>                  
                                                             <asp:GridView ID="GridView1" 
                 runat="server" AutoGenerateSelectButton="True" 
                                                                 CellPadding="4" 
                 CssClass="style2" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                 BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" EnableTheming="True" 
                                                                 >
                                                                 <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                                 <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="White" ForeColor="#330099" />
                                                                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                                 <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                                 <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                                 <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                                 <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                                             </asp:GridView>
                                                              <asp:Panel ID="pnlupdate" 
                 runat="server" BackColor="#666699" 
                                                                 BorderColor="#990000" 
                 BorderStyle="Solid" Height="386px" Visible="False" 
                                                                 Width="410px" 
                 CssClass="style3">
                                                                 <table class="style7">
                                                                     <tr>
                                                                         <td style="color: #FFFFFF; " class="style6">
                                                                             <asp:TextBox ID="txtp_name" runat="server" placeholder="NAME......." 
                                                                                 Height="29px" Width="138px" ForeColor="#000099"></asp:TextBox>
                                                                         </td>
                                                                         <td class="style4">
                                                                             <asp:TextBox ID="txtp_city" runat="server" placeholder="CITY......." 
                                                                                 Height="29px" Width="138px" ForeColor="#000099"></asp:TextBox>
                                                                         </td>
                                                                     </tr> <tr><td></td></tr>
                                                                      <tr>
                                                                         <td style="color: #FFFFFF; " class="style6">
                                                                             <asp:DropDownList ID="ddlp_service" runat="server" Height="29px" Width="138px" 
                                                                                 ForeColor="#000099">
                                                                                 <asp:ListItem>Select Your Service</asp:ListItem>
                                                                                 <asp:ListItem>AC Service &amp; Repair</asp:ListItem>
                                                                                 <asp:ListItem>Carpenter</asp:ListItem>
                                                                                 <asp:ListItem>Car Service &amp; Repair</asp:ListItem>
                                                                                 <asp:ListItem>Chimney &amp; Hob Repair</asp:ListItem>
                                                                                 <asp:ListItem>Electrician</asp:ListItem>
                                                                                 <asp:ListItem>Interior Work/Civil Repair</asp:ListItem>
                                                                                 <asp:ListItem>Laptop Repair</asp:ListItem>
                                                                                 <asp:ListItem>Microwave Repair</asp:ListItem>
                                                                                 <asp:ListItem>Mobile Repair</asp:ListItem>
                                                                                 <asp:ListItem>Plumber</asp:ListItem>
                                                                                 <asp:ListItem>Refrigerator Repair</asp:ListItem>
                                                                                 <asp:ListItem>RO &amp; Water Purifier Repair</asp:ListItem>
                                                                                 <asp:ListItem>TV/DTH Installation</asp:ListItem>
                                                                                 <asp:ListItem>Water Tank Cleaning</asp:ListItem>
                                                                             </asp:DropDownList>
                                                                         </td>
                                                                         <td class="style4">
                                                                             <asp:TextBox ID="txtp_emailid" runat="server" placeholder="Email-Id......." 
                                                                                 Height="29px" Width="138px" ForeColor="#000099"></asp:TextBox>
                                                                             &nbsp;&nbsp;
                                                                         </td>
                                                                         
                                                                     </tr>  <tr><td></td></tr>
                                                                      <tr>
                                                                         <td style="color: #FFFFFF; " class="style6">
                                                                             <asp:TextBox ID="txtp_pwd" runat="server" 
                                                                                 placeholder="PASSWORD......" Height="29px" Width="138px" 
                                                                                 ForeColor="#000099" Enabled="False"></asp:TextBox>
                                                                         </td>
                                                                         <td class="style4">
                                                                             <asp:TextBox ID="txtp_newpwd" runat="server" Height="29px" 
                                                                                 placeholder="NEW PASSWORD......" Width="138px" MaxLength="10" 
                                                                                 TextMode="Password" ForeColor="#000099"></asp:TextBox>
                                                                          </td>   <tr><td></td></tr>
                                                                          <tr>
                                                                         <td style="color: #FFFFFF; " class="style6">
                                                                             <asp:TextBox ID="txtp_cnfrmpwd" runat="server" 
                                                                                 placeholder="CONFIRM NEW PASSWORD......" Height="29px" Width="138px" 
                                                                                 MaxLength="10" TextMode="Password" ForeColor="#000099"></asp:TextBox>
                                                                         </td>
                                                                         <td class="style4">
                                                                             &nbsp;</td>
                                                                          <caption class="style5">
                                                                              <span class="style8">UPDATE YOUR 
                                                                              PROFILE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                                              <asp:Button ID="btnclose2" runat="server" BackColor="#990000" ForeColor="White" 
                                                                                   Text="X" onclick="btnclose2_Click" />
                                                                              <br />
                                                                          </caption>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Button ID="btnupdate" runat="server" class="btn theme-btn-color" 
                                                                                  Text="Update" BackColor="#990000" Height="35px" 
                                                                                 Width="86px" ForeColor="White" onclick="btnupdate_Click" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Label ID="lblmsgpopup0" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                 </table>
                                                             </asp:Panel>
                                                             <ajaxToolkit:AlwaysVisibleControlExtender ID="pnlupdate_AlwaysVisibleControlExtender" 
                                                                 runat="server" BehaviorID="pnlupdate_AlwaysVisibleControlExtender" 
                                                                 HorizontalSide="Center" TargetControlID="pnlupdate" 
                                                                 VerticalSide="Middle" />
                   
                                                              </ContentTemplate>
                                                             </asp:UpdatePanel>
                                                             </asp:Panel>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td>
                                                                                                  </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                 
                                                 <!-- The Modal -->
                                           <%--  </ContentTemplate>
                                         </asp:UpdatePanel>
                                     </asp:Panel>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                            
                             </ajaxToolkit:TabPanel>
                         </ajaxToolkit:TabContainer>--%>
                       </div>
        
         </form>
          
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
