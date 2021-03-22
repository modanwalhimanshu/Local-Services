<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a-show-partner.aspx.cs" Inherits="new_leads" %>

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
                                <ul class="dropdown-menu">
                                    <li><a href="a-show-customer.aspx">Show Customer</a></li>
                                    <li><a href="a-customer-booking.aspx">Customer Booking</a></li>  
                               
                                </ul>
                            </li>
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Booking</a>
                                <ul class="dropdown-menu">
                                    <li><a href="booking-by-partner.aspx">Booking By Partner</a></li>
                                     
                               
                                </ul>
                            </li>
                             
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown">Edit Profile</a>
                                <ul class="dropdown-menu">
                                 <li><a href="#">Employee</a></li>
                                    <li><a href="Partner-info.aspx">Partner</a></li>
                                     <li><a href="Customer-info.aspx">Customer</a></li>
                               
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
                     <h2>Show Partner</h2>
                     </div>
                     </center>   
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
                         
        
                       
         <div style="margin: 30px 20px 20px 100px; background-color: #FFFFFF; height: 626px; width: 1150px;"  >
                        
         <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" 
                             Height="642px" Width="1150px" style="margin-right: 0px" 
                             >
                             <ajaxToolkit:TabPanel runat="server" HeaderText="Pending" ID="TabPanel1">
                                 <ContentTemplate>
                                     <asp:Panel ID="pnlone" runat="server" Height="561px" ScrollBars="Both">
                                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                             <ContentTemplate>
                                                 <table id="mytab">
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="Panel20" runat="server" Height="79px" Width="499px">
                                                                 <table id="mytabnew">
                                                                     <tr id="trnew">
                                                                         <td colspan="2">
                                                                             <asp:CheckBox ID="chkByDate" runat="server" Text="By Date" AutoPostBack="True" 
                                                                                 oncheckedchanged="chkByDate_CheckedChanged" />
                                                                             <br />
                                                                             <asp:TextBox ID="txtfromdate0" runat="server" PlaceHolder="From Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             &nbsp;-&nbsp;<asp:TextBox ID="txttodate" runat="server" PlaceHolder="To Date" 
                                                                                 Height="30px" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="txttodate_CalendarExtender" runat="server" 
                                                                                 BehaviorID="txttodate_CalendarExtender" TargetControlID="txttodate" />
                                                                             &nbsp;<asp:Button ID="btnp_search" runat="server" class="btn theme-btn-color"
                                                                                 Text="Search" onclick="btnp_search_Click" />
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
                                                             </asp:Panel>
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                                 GridLines="None" AutoGenerateSelectButton="True" 
                                                                 onselectedindexchanged="GridView1_SelectedIndexChanged">
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
                                                           <!-- The Modal -->

                                             
</ContentTemplate>
</asp:UpdatePanel>

                                     </asp:Panel>

                                 
</ContentTemplate>
                             
</ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Activated">
                             
                                 <ContentTemplate>
                                     <asp:Panel ID="pnlone0" runat="server" Height="561px" ScrollBars="Both">
                                         <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                             <ContentTemplate>
                                                 <table ID="mytab0">
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="Panel21" runat="server" Height="79px" Width="499px">
                                                                 <table ID="mytabnew0">
                                                                     <tr ID="trnew2">
                                                                         <td colspan="2">
                                                                             <asp:CheckBox ID="chkByDate0" runat="server" AutoPostBack="True" 
                                                                                 oncheckedchanged="chkByDate1_CheckedChanged" Text="By Date" />
                                                                             <br />
                                                                             <asp:TextBox ID="txtfromdate1" runat="server" Height="30px" 
                                                                                 PlaceHolder="From Date" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="txtfromdate1_CalendarExtender" runat="server" 
                                                                                 BehaviorID="txtfromdate1_CalendarExtender" TargetControlID="txtfromdate1" />
                                                                             &nbsp;-&nbsp;<asp:TextBox ID="txttodate0" runat="server" Height="30px" 
                                                                                 PlaceHolder="To Date" Width="130px"></asp:TextBox>
                                                                             <ajaxToolkit:CalendarExtender ID="txttodate0_CalendarExtender" runat="server" 
                                                                                 BehaviorID="txttodate0_CalendarExtender" TargetControlID="txttodate0" />
                                                                             &nbsp;<asp:Button ID="btnp_search0" runat="server" class="btn theme-btn-color" 
                                                                                 onclick="btnp_search0_Click" Text="Search" />
                                                                             &nbsp;<asp:Label ID="lblmsg0" runat="server"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                     <tr ID="trnew3">
                                                                         <td>
                                                                             &nbsp;</td>
                                                                         <td class="style6">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                 </table>
                                                             </asp:Panel>
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             <asp:GridView ID="GridView2" runat="server" AutoGenerateSelectButton="True" 
                                                                 CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                                 onselectedindexchanged="GridView2_SelectedIndexChanged">
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
                                                             <asp:Panel ID="pnldeactivated" runat="server" BackColor="#666699" 
                                                                 BorderColor="#990000" BorderStyle="Solid" Height="145px" Width="430px" 
                                                                 Visible="False">
                                                                 <table class="ui-accordion">
                                                                     <tr>
                                                                         <td style="color: #FFFFFF; text-align: left;">
                                                                             De-Activate</td>
                                                                         <td style="text-align: right">
                                                                             <asp:Button ID="btnclose1" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                                 Text="X" onclick="btnclose1_Click" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                             Are you sure to De-Activate
                                                                             <asp:Label ID="lblpartnername" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Button ID="btndeactivate" class="btn theme-btn-color" runat="server" 
                                                                                 Text="De-Activate" onclick="btndeactivate_Click" />
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
                                                 </table>
                                                 <!-- The Modal -->
                                             </ContentTemplate>
                                         </asp:UpdatePanel>
                                     </asp:Panel>
                                 </ContentTemplate>
                             
                             </ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="DeActivated">
                                 <ContentTemplate>
                                     <asp:Panel ID="pnlone1" runat="server" Height="561px" ScrollBars="Both">
                                         <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                             <ContentTemplate>
                                                 <table ID="mytab1">
                                                     <tr>
                                                         <td>
                                                             <asp:Panel ID="Panel22" runat="server" Height="79px" Width="499px">
                                                                 <table ID="mytabnew1">
                                                                     <tr ID="trnew4">
                                                                         <td colspan="2">
                                                                             <asp:CheckBox ID="chkByDate1" runat="server" AutoPostBack="True" 
                                                                                 oncheckedchanged="chkByDate2_CheckedChanged" Text="By Date" />
                                                                             <br />
                                                                             <asp:TextBox ID="txtfromdate2" runat="server" Height="30px" 
                                                                                 PlaceHolder="From Date" Width="130px"></asp:TextBox>
                                                                             &nbsp;-&nbsp;<asp:TextBox ID="txttodate1" runat="server" Height="30px" 
                                                                                 PlaceHolder="To Date" Width="130px"></asp:TextBox>
                                                                             &nbsp;<asp:Button ID="btnp_search1" runat="server" class="btn theme-btn-color" 
                                                                                 onclick="btnp_search1_Click" Text="Search" />
                                                                             &nbsp;<asp:Label ID="lblmsg1" runat="server"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                     <tr ID="trnew5">
                                                                         <td>
                                                                             &nbsp;</td>
                                                                         <td class="style6">
                                                                             &nbsp;</td>
                                                                     </tr>
                                                                 </table>
                                                             </asp:Panel>
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                     <tr>
                                                         <td colspan="2">
                                                             <asp:GridView ID="GridView3" runat="server" AutoGenerateSelectButton="True" 
                                                                 CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                                 onselectedindexchanged="GridView3_SelectedIndexChanged">
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
                                                             <asp:Panel ID="pnldeactivated0" runat="server" BackColor="#666699" 
                                                                 BorderColor="#990000" BorderStyle="Solid" Height="145px" Visible="False" 
                                                                 Width="430px">
                                                                 <table class="ui-accordion">
                                                                     <tr>
                                                                         <td style="color: #FFFFFF; text-align: left;">
                                                                             Activate</td>
                                                                         <td style="text-align: right">
                                                                             <asp:Button ID="btnclose2" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                                 onclick="btnclose2_Click" Text="X" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                             Are you sure to Activate
                                                                             <asp:Label ID="lblpartnername0" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Button ID="btnactivate" runat="server" class="btn theme-btn-color" 
                                                                                 onclick="btnactivate_Click" Text="Activate" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td colspan="2" style="text-align: center">
                                                                             <asp:Label ID="lblmsgpopup0" runat="server" ForeColor="White"></asp:Label>
                                                                         </td>
                                                                     </tr>
                                                                 </table>
                                                             </asp:Panel>
                                                             <ajaxToolkit:AlwaysVisibleControlExtender ID="pnldeactivated0_AlwaysVisibleControlExtender" 
                                                                 runat="server" BehaviorID="pnldeactivated0_AlwaysVisibleControlExtender" 
                                                                 HorizontalSide="Center" TargetControlID="pnldeactivated0" 
                                                                 VerticalSide="Middle" />
                                                         </td>
                                                         <td>
                                                             &nbsp;</td>
                                                     </tr>
                                                 </table>
                                                 <!-- The Modal -->
                                             </ContentTemplate>
                                         </asp:UpdatePanel>
                                     </asp:Panel>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                            
                             </ajaxToolkit:TabPanel>
                         </ajaxToolkit:TabContainer>
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
