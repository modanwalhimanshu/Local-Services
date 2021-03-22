<%@ Page Language="C#" AutoEventWireup="true" CodeFile="converted_leads.aspx.cs" Inherits="converted_leads" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
         <link rel="javascript" href="assets/js/" />
       
         <script type="text/javascript" src="./jquery-1.3.2.min.js"></script>
     <script type="text/javascript" src="./main.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link href="assets/css/image.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/table.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .style1
            {
                font-size: x-small;
            }
            #page
            {
                width: 419px;
                height: 57px;
            }
                        
        </style>

        </head>
    <body>
  
    <form id="Form1" runat="server" style="background-color: #C0C0C0; height: 951px;">
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                   
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                   </div>
                            <div class="divForText1" >
                             <asp:Image ID="P_partnerimage" runat="server" class="my img-circle" alt="" Height="55px" Width="55px" ImageUrl='~/P_partnerimage' />
                               <asp:Label ID="P_txtname2"  runat="server" Font-Size="Large" ForeColor="#CC3300" ></asp:Label>
                   
                                <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" 
                                    BehaviorID="P_txtname2_HoverMenuExtender" DynamicServicePath="" 
                                    TargetControlID="P_txtname2" PopupControlID="linktabel" 
                                    PopupPosition="Bottom">
                                </ajaxToolkit:HoverMenuExtender>
                                    <table id="linktabel" runat="server" class="linktabel">
                                <tr>
                                    <td >
                                        <asp:LinkButton ID="lnkbtnuplodphoto" runat="server" 
                                            PostBackUrl="~/P_UploadPhoto.aspx">Upload Photo</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:LinkButton ID="lnkbtneditprofile" runat="server" 
                                            PostBackUrl="~/P_EditProfile.aspx">Edit Profile</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:LinkButton ID="lnkbntnchngepwd" runat="server" 
                                            PostBackUrl="~/P_changePassword.aspx">Change Password</asp:LinkButton>
                                    </td>
                                </tr>
                                 <tr>
                                    <td >
                                        <asp:LinkButton ID="lnkbtnuploddcmnt" runat="server" 
                                            PostBackUrl="~/P_DocumentUpload.aspx">Upload Document</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            PostBackUrl="~/P-Bank-Info.aspx">Bank Details</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td >

                                        <asp:LinkButton ID="lnkbtnlogout" runat="server" 
                                            PostBackUrl="~/p_logout.aspx" >Log Out</asp:LinkButton>
                                    </td>
                                </tr>
                    </table></div> 
                     <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                      

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            <!--navigation end--></header><!--header main end-->
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                         </asp:ScriptManager>
            <div class="divForText2">
                         
                         <asp:Button ID="pbtnnewleads" runat="server" 
                            Text="New Leads" Height="40px" Width="170px" PostBackUrl="~/new_leads.aspx" 
                       /> <asp:Button ID="pbtnongoingleads" runat="server" 
                            Text="Ongoing Leads" Height="40px" Width="170px" PostBackUrl="~/ongoing_leads.aspx"
                       /> 
                         <asp:Button ID="pbtncnvrtdleads" runat="server" 
                            Text="Closed Leads" Height="40px" Width="170px" PostBackUrl="~/converted_leads.aspx"
                       /></div>
                       
         <div style="margin: 120px 20px 20px 100px; background-color: #FFFFFF; height: 698px; width: 1150px;"  >
             
  
                         <p style="margin-left:1px; width: 91px;"  class="style1">NOTIFIED DATE</p>
                  
                          
                         <div class="divForText3"> 
                       <p>SORT</p>
                        <asp:DropDownList ID="ddllistdates" runat="server" Height="20px" Width="180px" 
                             >
                        <asp:ListItem>Notified Date - Newest to Oldest</asp:ListItem>
                        <asp:ListItem>Notified Date - Oldest to Newest</asp:ListItem>
                        <asp:ListItem>Booking Date - Newest to Oldest</asp:ListItem>
                        <asp:ListItem>Booking Date - Oldest to Newest</asp:ListItem>
                      
                        </asp:DropDownList></div>
         <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                             Height="656px" Width="1150px" style="margin-right: 0px" 
                             >
                             <ajaxToolkit:TabPanel runat="server" HeaderText=" All Days" ID="TabPanel1">
                                 <ContentTemplate>
                                     <table class="nav-justified">
                                         <tr>
                                             <td>
                                                 <asp:Panel ID="Panel22" runat="server" Height="74px" Width="519px">
                                                     <table ID="mytabnew1">
                                                         <tr ID="trnew4">
                                                             <td colspan="2">
                                                                 <asp:TextBox ID="txtfromdate2" runat="server" Height="30px" 
                                                                     PlaceHolder="From Date" Width="130px"></asp:TextBox>
                                                                 <ajaxToolkit:CalendarExtender ID="txtfromdate2_CalendarExtender" runat="server" 
                                                                     BehaviorID="txtfromdate2_CalendarExtender" TargetControlID="txtfromdate2" />
                                                                 &nbsp;-&nbsp;<asp:TextBox ID="txttodate1" runat="server" Height="30px" 
                                                                     PlaceHolder="To Date" Width="130px"></asp:TextBox>
                                                                 <ajaxToolkit:CalendarExtender ID="txttodate1_CalendarExtender" runat="server" 
                                                                     BehaviorID="txttodate1_CalendarExtender" TargetControlID="txttodate1" />
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
                                         </tr>
                                         <tr>
                                             <td>
                                                 <asp:Panel ID="Panel23" runat="server" ScrollBars="Both">
                                                     <asp:GridView ID="g1" runat="server" BackColor="White" BorderColor="#CC9966" 
                                                         BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="16px" 
                                                         OnSelectedIndexChanged="g1_SelectedIndexChanged" Width="1122px">
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
                                                 </asp:Panel>
                                             </td>
                                         </tr>
                                     </table>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                         </ajaxToolkit:TabContainer>
                       </div>
        
         </form>
</body>
</html>