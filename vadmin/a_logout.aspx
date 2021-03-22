<%@ Page Language="C#" AutoEventWireup="true" CodeFile="a_logout.aspx.cs" Inherits="p_logout" %>

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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        </head>
    <body> 
    <form id="Form1" runat="server" >
   
      
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <header class="header-main">
            <div class="navbar navbar-default yamm" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        
                        <a class="navbar-brand" href="index.aspx"><img src="assets\img\logo-dark.png" class="img-responsive" alt=""></a>
                    </div>
                     
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                        

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
           <!--navigation end-->
</header><!--header main end-->
          <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                     
                </h3>
            </div>
        </section><!--page-tree end here-->
         
        <div class="space-70"></div>
        <div class="container">
       
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel1" runat="server" Height="409px">
        <br />
                <table align="center" class="style1">
                    <tr>
                        <td align="center" class="style4">
                            <h3 class="style5">
                                Loging out.....</h3>
                        </td>
                        <td align="center" class="style2">
                            <asp:Image ID="Image1" runat="server" Height="40px" ImageAlign="Bottom" 
                                ImageUrl="~/new_images/logingout.png" Width="40px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                            </asp:Timer>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

            </div>
              </form>     
</body>
</html>
