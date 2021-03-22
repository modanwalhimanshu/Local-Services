<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ongoing_leads.aspx.cs" Inherits="ongoing_leads" %>

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
                        
        .ui-accordion { width: 100%;
                height: 140px;
                }
                        
            .style2
            {
                width: 246px;
            }
                        
            .style3
            {
                width: 169px;
            }
                        
        </style>

        </head>
    <body>
  
    <form id="Form1" runat="server" style="background-color: #C0C0C0; height: 955px;">
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
                                            PostBackUrl="~/p_logout.aspx" onclick="lnkbtnlogout_Click" >Log Out</asp:LinkButton>
                                    </td>
                                </tr>
                    </table></div> 
                       
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end--></header><!--header main end-->
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
                       
         <div style="margin: 120px 20px 20px 100px; background-color: #FFFFFF; height: 577px; width: 1150px;"  >
             
  
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
                             Height="583px" Width="1150px" style="margin-right: 0px" 
                             >
                             <ajaxToolkit:TabPanel runat="server" HeaderText=" All Days" ID="TabPanel1">  
                                 <HeaderTemplate>
                                     All Days
                                 </HeaderTemplate>
                             <ContentTemplate>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<asp:Panel ID="pnlone" runat="server" Height="488px" ScrollBars="Both"><asp:GridView ID="g1" runat="server" AutoGenerateSelectButton="True" 
                                                     BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                                     CellPadding="4" Height="16px" OnSelectedIndexChanged="g1_SelectedIndexChanged" 
                                                     Width="1122px"><FooterStyle BackColor="#FFFFCC" ForeColor="#330099" /><HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" /><RowStyle BackColor="White" ForeColor="#330099" /><SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" /></asp:GridView>
    <br />
    <asp:Panel ID="pnlcontent" runat="server" BackColor="#666699" 
        BorderColor="#990000" BorderStyle="Solid" Height="727px" Visible="False" 
        Width="538px">
        <table class="style1" width="520px">
            <tr>
                <td>
                    <asp:Label ID="lblcustname0" runat="server" ForeColor="White"></asp:Label>
                </td>
                <td style="text-align: right">
                    <asp:Button ID="btnclose2" runat="server" BackColor="#CC0000" ForeColor="White" 
                        text="X" onclick="btnclose2_Click1" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnl1" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                        Height="65px" Width="530px">
                        <table class="style1">
                            <tr>
                                <td class="style3" style="text-align: left">
                                    <asp:RadioButton ID="rbt1" runat="server" ForeColor="White" 
                                        Text="Service Start" Font-Size="Large" GroupName="g1" />
                                </td>
                                <td>
                                    <asp:Button ID="btnstartservice" class="btn theme-btn-color" runat="server" 
                                        Text="Start Service" ForeColor="White" onclick="btnstartservice_Click" />
                                    <asp:Label ID="lblstartservice0" runat="server" ForeColor="White"></asp:Label>
                                    S</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
           
            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnl2" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                        ForeColor="White" Height="411px" Width="530px">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:RadioButton ID="rbt2" Font-Size="Large" runat="server" ForeColor="White" 
                                        Text="Service Closed" GroupName="g1" />
                                </td>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    Discription* (Labour)</td>
                                <td colspan="2">
                                    Amount*</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtlabour" runat="server"></asp:TextBox>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtlabourcharge" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Material*</td>
                                <td>
                                    Amount*</td>
                                <td>
                                    Tax*</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtmaterial" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaterialamount" Text="0.0" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmaterialtax" Text="0.0" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center">
                                    <asp:Button ID="btnadd" runat="server" class="btn theme-btn-color" onclick="btnadd_Click" Text="Add" />
                                    <asp:Label ID="lblmsgadd" runat="server" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                Details (Material)*</td>
                                            <td>
                                                Amount*</td>
                                            <td colspan="2">
                                                Tax*</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ListBox ID="lstmaterial" runat="server" AutoPostBack="True" width="120px">
                                                </asp:ListBox>
                                            </td>
                                            <td>
                                                <asp:ListBox ID="lstamount" runat="server" AutoPostBack="True" width="120px">
                                                </asp:ListBox>
                                            </td>
                                            <td>
                                                <asp:ListBox ID="lsttax" runat="server" AutoPostBack="True" width="120px">
                                                </asp:ListBox>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnremovefrmlist" class="btn theme-btn-color" runat="server" 
                                                    Text="Remove" onclick="btnremovefrmlist_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: center">
                                    <table class="style1">
                                        <tr align="right">
                                            <td>
                                                Total</td>
                                            <td>
                                                <asp:TextBox ID="txttotal" runat="server" Text="0.0" Height="19px" Width="87px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="right">
                                            <td>
                                                Tax</td>
                                            <td>
                                                <asp:TextBox ID="txtttltax" runat="server" Text="0.0" Height="19px" Width="87px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="right">
                                            <td>
                                                Discount</td>
                                            <td>
                                                <asp:TextBox ID="txtdscnt" runat="server" Text="0.0" Height="19px" Width="87px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="right">
                                            <td>
                                                Grand Total</td>
                                            <td>
                                                <asp:TextBox ID="txtgrndttl" runat="server" Text="0.0" Height="19px" Width="87px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr align="center">
                                            <td>
                                                <asp:Button ID="btngeneratebill" class="btn theme-btn-color" runat="server" 
                                                    Text="Generate Bill" onclick="btngeneratebill_Click" />
                                                <asp:Label ID="lblmsggenbill" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnl3" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                        ForeColor="White" Height="127px" Width="530px">
                        <table class="style1">
                            <tr>
                                <td style="text-align: left">
                                    <asp:RadioButton ID="rbtservicewithoutcom" runat="server" 
                                        Text="Service Closed with out Completed" Font-Size="Large" 
                                        ForeColor="White" GroupName="g1" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:TextBox ID="txtdiscription" runat="server" Height="40px" 
                                        placeholder="Reason*" Width="216px"></asp:TextBox>
                                        <asp:Button ID="btnCloseLead" runat="server" class="btn theme-btn-color" 
                                        onclick="btnactivate_Click1" Text="Close Lead" />
                                </td>
                            </tr>
                           
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="lblmsgpopup4" runat="server" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <ajaxToolkit:AlwaysVisibleControlExtender ID="pnlcontent_AlwaysVisibleControlExtender" 
        runat="server" BehaviorID="pnlcontent_AlwaysVisibleControlExtender" 
        HorizontalSide="Center" TargetControlID="pnlcontent" VerticalSide="Middle" />
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
