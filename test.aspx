<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 261px;
            text-align: center;
        }
    </style>
            <!--animated  css-->
        <link href="http:\\www.vedasolution.com\assets\css\animate.css" rel="stylesheet">
         <link rel="javascript" href="http://www.vedasolution.com/assets/js/" />
 
    <script src="1.4.2_JScript.js" type="text/javascript"></script>
         <script type="text/javascript" src="http://www.vedasolution.com/jquery-1.3.2.min.js"></script>
     <script type="text/javascript" src="http://www.vedasolution.com/main.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            $('#imgaadharb').hide(10);
            $("#imgaadhar").click(function () {
                alert('hello');
                $('#imgaadharb').fadeIn(2000);

            });
        });    
     </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
                                                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                 <ContentTemplate>
                                                                     <asp:Panel ID="Panel21" runat="server" BackColor="#CCCCFF" BorderColor="Maroon" 
                                                                         BorderStyle="Inset" Height="726px" ScrollBars="Both" Width="575px">
                                                                         <table class="style1">
                                                                             <tr>
                                                                                 <td class="style3">
                                                                                     &nbsp;</td>
                                                                                 <td style="text-align: right">
                                                                                     <asp:Button ID="btnclose" runat="server" BackColor="#CC0000" Font-Size="Large" 
                                                                                         ForeColor="White" onclick="btnclose_Click" Text="X" />
                                                                                 </td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td class="style3">
                                                                                     <asp:Image ID="imgaadhar" runat="server" Height="186px" 
                                                                                         ImageUrl="~/new_images/electrician.jpeg" Width="201px" />
                                                                                           <asp:Image ID="imgaadharb" runat="server" Height="500px" 
                                                                                         ImageUrl="~/new_images/electrician.jpeg" Width="500px" />
                                                                                 </td>
                                                                                 <td rowspan="3">
                                                                                     <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                                                                                         ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                                                                                         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                                         <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                                                         <EditRowStyle BackColor="#999999" />
                                                                                         <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                                     </asp:DetailsView>
                                                                                 </td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td class="style3">
                                                                                     <asp:Image ID="imgprofilepic" runat="server" Height="186px" Width="201px" />
                                                                                 </td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td class="style3">
                                                                                     <asp:Image ID="imgidproof" runat="server" Height="186px" Width="201px" />
                                                                                 </td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td class="style2" colspan="2">
                                                                                     <asp:Button ID="btnactivate" runat="server" Text="Activate" />
                                                                                 </td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td class="style3">
                                                                                     &nbsp;</td>
                                                                                 <td>
                                                                                     <asp:Label ID="lblmsgnew" runat="server"></asp:Label>
                                                                                 </td>
                                                                             </tr>
                                                                         </table>
                                                                     </asp:Panel>
                                                                     <ajaxToolkit:AlwaysVisibleControlExtender ID="Panel21_AlwaysVisibleControlExtender" 
                                                                         runat="server" BehaviorID="Panel21_AlwaysVisibleControlExtender" 
                                                                         HorizontalSide="Center" TargetControlID="Panel21" VerticalSide="Middle" />
                                                                 </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
