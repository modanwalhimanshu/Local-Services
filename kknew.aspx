<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kknew.aspx.cs" Inherits="kknew" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


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
        $("#btnShow").click(function () {
            $('#dialog').dialog('open');
        });
    });
</script>
<input type="button" id="btnShow" value="Show Popup" />
<div id="dialog" style="display: none" align = "center">
    <asp:Panel ID="Panel21" runat="server" BackColor="#CCCCFF" BorderColor="Maroon" 
                                                                 BorderStyle="Inset" Height="600px" ScrollBars="Both" Visible="False" 
                                                                 Width="575px">
                                                                 <table style="width: 551px">
                                                                     <tr>
                                                                         <td class="style3">
                                                                             &nbsp;</td>
                                                                         <td style="text-align: left" class="style12">
                                                                              &nbsp;</td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td class="style3">
                                                                             <asp:Label ID="lblmsgnew" runat="server" ForeColor="#CC0000"></asp:Label>
                                                                         </td>
                                                                         <td class="style12" style="text-align: right">
                                                                             <asp:Button ID="btnclose" runat="server" BackColor="#CC0000" Font-Size="Large" 
                                                                                 ForeColor="White" onclick="btnclose_Click" Text="X" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td class="style3">
                                                                     
                                                                             <asp:Image ID="imgaadhar" runat="server" Height="286px" Width="201px" 
                                                                                 ImageUrl="" />
                                                                                
                                                                         </td>
                                                                         <td rowspan="3" class="style12">
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
                                                                             <asp:Button ID="btnactivate" class="btn theme-btn-color" runat="server" Text="Activate" 
                                                                                 onclick="btnactivate_Click" />
                                                                         </td>
                                                                     </tr>
                                                                     <tr>
                                                                         <td class="style3">
                                                                             &nbsp;</td>
                                                                         <td class="style12">
                                                                            
                                                                         </td>
                                                                     </tr>
                                                                 </table>

                                                             </asp:Panel>
</div>
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