<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="mybooking" %>

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
        
        <style type="text/css">
            .style1
            {
                height: 20px;
            }
        </style>
        
    </head>
    <body>
       
        <form id="form1" runat="server">
        <header class="header-main">
            <div class="top-bar">

                <div class="container" id="y">
                    <ul class="info list-inline pull-left hidden-xs">
                        
                    </ul>  
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
                                <li class="dropdown">
                                <a href="c-booking-by-veda.aspx">Booking By Veda</a>
                                </li>
                        <!--    </li>
                            <li class="dropdown">
                                <a href="addservice.aspx">Add Service</a>
                                
                            </li>
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
          <center>
                     <div class="tab_heading" style="color:white;height:50px;width:auto;background-color:#CD5C5C">
                     <h2>My Bookings</h2>
                     </div>
                     </center>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
             </asp:ScriptManager>  
      
            <div style="margin: 30px 20px 20px 100px; background-color: #FFFFFF; height: 626px; width: 1150px;"  >

            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                             Height="642px" Width="1150px" style="margin-right: 0px">
                             <ajaxToolkit:TabPanel runat="server" HeaderText="Active Booking" ID="TabPanel1">
                                 <ContentTemplate>
                                     <asp:Panel ID="pnlone" runat="server" Height="561px" ScrollBars="Both">
                                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                             <ContentTemplate>
                                                 <table id="mytab">
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="Panel20" runat="server" Height="79px" Width="499px">
                                                                <center>
                                                                  <table id="mytabnew">
                                                                     
                                                                     <tr id="trnew">
                                                                         <td colspan="2">
                                                                             
                                                                             <asp:CheckBox ID="chkByDate" runat="server" Text="By Date" AutoPostBack="True" OnCheckedChanged="chkByDate_CheckedChanged" 
                                                                                  />
                                                                             <br />
                                                                             <asp:TextBox ID="txtfromdate0" runat="server" PlaceHolder="From Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="txtfromdate0_CalendarExtender" runat="server" BehaviorID="txtfromdate0_CalendarExtender" TargetControlID="txtfromdate0" />
                                                                             &nbsp;-&nbsp;<asp:TextBox ID="txttodate" runat="server" PlaceHolder="To Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="txttodate_CalendarExtender" runat="server" 
                                                                                 BehaviorID="txttodate_CalendarExtender" TargetControlID="txttodate" />
                                                                             &nbsp;<asp:Button ID="btnc_search" runat="server" class="btn theme-btn-color"
                                                                                 Text="Search" OnClick="btnc_search_Click" />
                                                                             &nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                                         
                                                                                 </td>
                                                                     </tr>
                                                                     
                                                                     <tr id="trnew1">
                                                                         <td>
                                                                             &nbsp;</td>
                                                                         <td class="style6">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                 </table>
                                                                 </center>
                                                             </asp:Panel>
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                 GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                 <EditRowStyle BackColor="#999999" />
                                                                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                             </asp:GridView>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td>
                                                             &nbsp;</td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="pnldeactivated" runat="server" BackColor="#666699" 
                                                                 BorderColor="#990000" BorderStyle="Solid" Height="180px" Width="400px" 
                                                                 Visible="False">
                                                                 <table class="ui-accordion">
                                                                     <tr>
                                                                         <td style="color: #FFFFFF; text-align: left;">
                                                                             Cancel Booking</td>
                                                                         <td style="text-align: right">
                                                                             <asp:Button ID="btnclose1" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                                 Text="X" OnClick="btnclose1_Click"  />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="color: #FFFFFF; text-align: center" class="style1">
                                                                             Are you sure to cancel Booking No.
                                                                             <asp:Label ID="lblpartnername" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                  
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:TextBox ID="txtdelete_reason" runat="server" placeholder="Give Your delete reason" CssClass="email_employee"></asp:TextBox>
                                                                         <br />
                                                                            
                                                                             </td>
                                                                         </tr>

                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Button ID="btncancel" class="btn theme-btn-color" runat="server" 
                                                                                 Text="Cancel Booking" OnClick="btncancel_Click" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Label ID="lblmsgpopup" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                 </table>
                                                             </asp:Panel>
                                                             <ajaxToolkit:AlwaysVisibleControlExtender ID="pnldeactivated_AlwaysVisibleControlExtender" 
                                                                 runat="server" BehaviorID="pnldeactivated_AlwaysVisibleControlExtender" 
                                                                 HorizontalSide="Center" TargetControlID="pnldeactivated" 
                                                                 VerticalSide="Middle" />
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>

                                                     <!-- The Modal -->

                                                 </table>

                                             
                                 </ContentTemplate>
                                   
                                         </asp:UpdatePanel>
                                  
                                          </asp:Panel>
                         
                                                 </ContentTemplate>
                             
                      </ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                                 <HeaderTemplate>
                                     Cancel Booking
                                 </HeaderTemplate>
                                  <ContentTemplate>
                                     <asp:Panel ID="Panel1" runat="server" Height="561px" ScrollBars="Both">
                                         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                             <ContentTemplate>

                                                 <table id="mytab1">
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="Panel2" runat="server" Height="79px" Width="499px">
                                                                <center>
                                                                  <table id="mytabnew2">
                                                                     
                                                                     <tr id="trnew2">
                                                                         <td colspan="2">
                                                                             
                                                                             <asp:CheckBox ID="chkbydate1" runat="server" Text="By Date" AutoPostBack="True" OnCheckedChanged="chkbydate1_CheckedChanged"/>
                                                                             <br />
                                                                             <asp:TextBox ID="txtfromdate1" runat="server" PlaceHolder="From Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" BehaviorID="txtfromdate1_CalendarExtender" TargetControlID="txtfromdate1" />
                                                                             &nbsp;-&nbsp;<asp:TextBox ID="txttodate1" runat="server" PlaceHolder="To Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" 
                                                                                 BehaviorID="txttodate1_CalendarExtender" TargetControlID="txttodate1" />
                                                                             &nbsp;<asp:Button ID="btnc_search1" runat="server" class="btn theme-btn-color"
                                                                                 Text="Search" OnClick="btnc_search1_Click" />
                                                                             &nbsp;<asp:Label ID="lblmsg1" runat="server"></asp:Label>
                                                                         
                                                                                 </td>
                                                                     </tr>
                                                                     
                                                                     <tr id="trnew2">
                                                                         <td>
                                                                             &nbsp;</td>
                                                                         <td class="style6">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                 </table>
                                                                 </center>
                                                             </asp:Panel>
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                 GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                                                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                 <EditRowStyle BackColor="#999999" />
                                                                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                 <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                 <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                                 <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                                 <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                                 <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                             </asp:GridView>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td>
                                                             &nbsp;</td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     </table>

                                  </ContentTemplate>
                                   
                                         </asp:UpdatePanel>
                                  
                                          </asp:Panel>
                         
                                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
               
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