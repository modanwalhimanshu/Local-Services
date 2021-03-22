<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new_leads.aspx.cs" Inherits="new_leads" %>

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
                        
        .ui-accordion { width: 100%; }
                        
        </style>

        </head>
    <body>
  
    <form id="Form1" runat="server" style="background-color: #C0C0C0; height: 637px;">
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                 <div class="container">
                    <div class="navbar-header">
                   
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                   
                            <div class="divForText1" >
                             <asp:Image ID="P_partnerimage" runat="server" class="my img-circle" alt="" Height="55px" Width="55px" ImageUrl='~/P_partnerimage/default.jpg' />
    
                           
                               <asp:Label ID="P_txtname2"  runat="server" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                   
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

                                        <asp:LinkButton ID="lnkbtnlogout" runat="server" onclick="LinkButton4_Click1" >Log Out</asp:LinkButton>
                                                 
                                    </td>
                                </tr>
                    </table></div> 
                       
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                      
                         
                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
        </div>   <!--navigation end--></header><!--header main end-->
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
                       
         <div style="margin: 120px 20px 20px 100px; background-color: #FFFFFF; height: 390px; width: 1150px;"  >
             
  
                         <p style="margin-left:1px; width: 91px;"  class="style1">NOTIFIED DATE</p>
                       
                         <div class="divForText3"> 
                       <p>SORT</p>
                        <asp:DropDownList ID="ddllistdates" runat="server" Height="22px" Width="180px" 
                             >
                        <asp:ListItem>Notified Date - Newest to Oldest</asp:ListItem>
                        <asp:ListItem>Notified Date - Oldest to Newest</asp:ListItem>
                        <asp:ListItem>Booking Date - Newest to Oldest</asp:ListItem>
                        <asp:ListItem>Booking Date - Oldest to Newest</asp:ListItem>
                      
                        </asp:DropDownList></div>
         <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                             Height="365px" Width="1150px" style="margin-right: 0px" 
                             >
                             <ajaxToolkit:TabPanel runat="server" HeaderText=" All Days" ID="TabPanel1">
                                 <ContentTemplate>
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <asp:Panel ID="pnlone" runat="server" Height="303px" ScrollBars="Both">
                                                 <asp:GridView ID="g1" runat="server" AutoGenerateSelectButton="True" 
                                                     BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                                     CellPadding="4" Height="16px" OnSelectedIndexChanged="g1_SelectedIndexChanged" 
                                                     Width="1122px">
                                                     <Columns>
                                                         <asp:CommandField ShowSelectButton="True" />
                                                     </Columns>
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
                                                 <br />
                                                 <asp:Panel ID="pnldeactivated0" runat="server" BackColor="#666699" 
                                                     BorderColor="#990000" BorderStyle="Solid" Height="145px" Visible="False" 
                                                     Width="430px">
                                                     <table class="ui-accordion">
                                                         <tr>
                                                             <td style="color: #FFFFFF; text-align: left;">
                                                                 Book Lead</td>
                                                             <td style="text-align: right">
                                                                 <asp:Button ID="btnclose2" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                     OnClick="btnclose2_Click" Text="X" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                 Are you sure to Book
                                                                 <asp:Label ID="lblcustname0" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center; margin-left: 40px;">
                                                                 <asp:Button ID="btnactivate" runat="server" class="btn theme-btn-color" 
                                                                     OnClick="btnactivate_Click" Text="Book Lead" />
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
                                             </asp:Panel>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Today">
                                 <ContentTemplate>
                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                         <ContentTemplate>
                                             <asp:Panel ID="Panel1" runat="server" Height="309px" ScrollBars="Both">
                                                 <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                                     BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                     Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                                                     Width="1108px">
                                                     <Columns>
                                                         <asp:CommandField ShowSelectButton="True" />
                                                     </Columns>
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
                                                 <br />
                                                 <asp:Panel ID="pnldeactivated1" runat="server" BackColor="#666699" 
                                                     BorderColor="#990000" BorderStyle="Solid" Height="145px" Visible="False" 
                                                     Width="430px">
                                                     <table class="ui-accordion">
                                                         <tr>
                                                             <td style="color: #FFFFFF; text-align: left;">
                                                                 Book Lead</td>
                                                             <td style="text-align: right">
                                                                 <asp:Button ID="btnclose3" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                     OnClick="btnclose3_Click" Text="X" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                 Are you sure to Book
                                                                 <asp:Label ID="lblcustname1" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center; margin-left: 40px;">
                                                                 <asp:Button ID="btnactivate0" runat="server" class="btn theme-btn-color" 
                                                                     OnClick="btnactivate1_Click" Text="Book Lead" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center">
                                                                 <asp:Label ID="lblmsgpopup1" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                     </table>
                                                 </asp:Panel>
                                                 <ajaxToolkit:AlwaysVisibleControlExtender ID="pnldeactivated1_AlwaysVisibleControlExtender" 
                                                     runat="server" BehaviorID="pnldeactivated0_AlwaysVisibleControlExtender" 
                                                     HorizontalSide="Center" TargetControlID="pnldeactivated1" 
                                                     VerticalSide="Middle" />
                                             </asp:Panel>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Tomorrow">
                                 <ContentTemplate>
                                     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                         <ContentTemplate>
                                             <asp:Panel ID="Panel2" runat="server" Height="310px" ScrollBars="Both">
                                                 <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                                                     BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                     Height="16px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" 
                                                     Width="1110px">
                                                     <Columns>
                                                         <asp:CommandField ShowSelectButton="True" />
                                                     </Columns>
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
                                                 <asp:Panel ID="pnldeactivated2" runat="server" BackColor="#666699" 
                                                     BorderColor="#990000" BorderStyle="Solid" Height="145px" Visible="False" 
                                                     Width="430px">
                                                     <table class="ui-accordion">
                                                         <tr>
                                                             <td style="color: #FFFFFF; text-align: left;">
                                                                 Book Lead</td>
                                                             <td style="text-align: right">
                                                                 <asp:Button ID="btnclose4" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                     OnClick="btnclose4_Click" Text="X" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                 Are you sure to Book
                                                                 <asp:Label ID="lblcustname2" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center; margin-left: 40px;">
                                                                 <asp:Button ID="btnactivate1" runat="server" class="btn theme-btn-color" 
                                                                     OnClick="btnactivate2_Click" Text="Book Lead" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center">
                                                                 <asp:Label ID="lblmsgpopup2" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                     </table>
                                                 </asp:Panel>
                                                 <ajaxToolkit:AlwaysVisibleControlExtender ID="pnldeactivated2_AlwaysVisibleControlExtender" 
                                                     runat="server" BehaviorID="pnldeactivated0_AlwaysVisibleControlExtender" 
                                                     HorizontalSide="Center" TargetControlID="pnldeactivated2" 
                                                     VerticalSide="Middle" />
                                             </asp:Panel>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                 </ContentTemplate>
                             </ajaxToolkit:TabPanel>
                             <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="This week">
                                 <HeaderTemplate>
                                     Next 10 Days
                                 </HeaderTemplate>
                                 <ContentTemplate>
                                     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                         <ContentTemplate>
                                             <asp:Panel ID="Panel3" runat="server" Height="308px" ScrollBars="Both" 
                                                 Width="1133px">
                                                 <asp:GridView ID="GridView3" runat="server" BackColor="White" 
                                                     BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                     Height="85px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" 
                                                     Width="1119px">
                                                     <Columns>
                                                         <asp:CommandField ShowSelectButton="True" />
                                                     </Columns>
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
                                                 <asp:Panel ID="pnldeactivated3" runat="server" BackColor="#666699" 
                                                     BorderColor="#990000" BorderStyle="Solid" Height="145px" Visible="False" 
                                                     Width="430px">
                                                     <table class="ui-accordion">
                                                         <tr>
                                                             <td style="color: #FFFFFF; text-align: left;">
                                                                 Book Lead</td>
                                                             <td style="text-align: right">
                                                                 <asp:Button ID="btnclose5" runat="server" BackColor="#CC0000" ForeColor="White" 
                                                                     OnClick="btnclose5_Click" Text="X" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="color: #FFFFFF; text-align: center;">
                                                                 Are you sure to Book
                                                                 <asp:Label ID="lblcustname3" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center; margin-left: 40px;">
                                                                 <asp:Button ID="btnactivate2" runat="server" class="btn theme-btn-color" 
                                                                     OnClick="btnactivate3_Click" Text="Book Lead" />
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                             <td colspan="2" style="text-align: center">
                                                                 <asp:Label ID="lblmsgpopup3" runat="server" ForeColor="White"></asp:Label>
                                                             </td>
                                                         </tr>
                                                     </table>
                                                 </asp:Panel>
                                                 <ajaxToolkit:AlwaysVisibleControlExtender ID="pnldeactivated3_AlwaysVisibleControlExtender" 
                                                     runat="server" BehaviorID="pnldeactivated0_AlwaysVisibleControlExtender" 
                                                     HorizontalSide="Center" TargetControlID="pnldeactivated3" 
                                                     VerticalSide="Middle" />
                                                 <br />
                                             </asp:Panel>
                                         </ContentTemplate>
                                     </asp:UpdatePanel>
                                 </ContentTemplate>
                                 
                             </ajaxToolkit:TabPanel>
                         </ajaxToolkit:TabContainer>
                       </div>
        
         </form>
</body>
</html>
