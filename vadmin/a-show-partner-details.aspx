<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a-show-partner-details.aspx.cs" Inherits="employee_home" %>

<!DOCTYPE html>


<html>

    <head>
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

       

    <link href="http://www.vedasolution.com/assets/css/test.css" rel="stylesheet" />
       
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(function () {
        $("#dialog").dialog({
            modal: true,
            autoOpen: false,
            title: "Aadhar Card",
            width: 500,
            height: 700
        });
        $("#imgaadhar").click(function () {
            $('#dialog').dialog('open');
        });
    });
    $(function () {
        $("#dialog1").dialog({
            modal: true,
            autoOpen: false,
            title: "ID Proof",
            width: 400,
            height: 500
        });
        $("#imgprofilepic").click(function () {
            $('#dialog1').dialog('open');
        });
    });
    $(function () {
        $("#dialog2").dialog({
            modal: true,
            autoOpen: false,
            title: "Profile Pic",
            width: 400,
            height: 500
        });
        $("#imgidproof").click(function () {
            $('#dialog2').dialog('open');
        });
    });
</script>
    </head>

    <body>
     
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
                          
                             
                              <li><a href="a_logout.aspx">Logout</a></li>
                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->
        </header><!--header main end-->   
       
        <div class="space-70"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div>
                         <form id="form1" runat="server">
            <center>
                <div>
                   <asp:Panel ID="Panel21" runat="server" BackColor="#CCCCFF" BorderColor="Maroon" 
                                                                 BorderStyle="Inset" 
                        Height="787px" ScrollBars="Both" 
                                                                 Width="616px">
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
                        
                       
                       
                    <div id="dialog" style="display: none" align = "center">
 <asp:Image ID="imgbigaadhar" runat="server" Height="680px" Width="280px" 
                                                                                 ImageUrl="" />
</div>
 <div id="dialog1" style="display: none" align = "center">
 <asp:Image ID="imgbigprofilepic" runat="server" Height="480px" Width="380px" 
                                                                                 ImageUrl="" />
</div>
<div id="dialog2" style="display: none" align = "center">
 <asp:Image ID="imgbigidproof" runat="server" Height="480px" Width="380px" 
                                                                                 ImageUrl="" />
</div>
                </div>
            </center>
        </form>
  
                    </div>
                </div>
            </div>
        </div>
        <div class="space-70"></div>
               <div id="footer">
             <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center footer-bottom">
                        <a href="index.aspx"> <img src="http:\\www.vedasolution.com\assets\img\logo-dark.png" /></a>
                        <div class="space-20"></div>
                        <span>© Copyrights 2015-16. All Rights Reserved </span>
                    </div>
                </div><!--footer copyright row end-->
            </div><!--container-->
        </div><!--footer main end-->
        <!--scripts-->
           <!--scripts-->
      
    </body>
</html>