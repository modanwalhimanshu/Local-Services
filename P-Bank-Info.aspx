<%@ Page Language="C#" AutoEventWireup="true" CodeFile="P-Bank-Info.aspx.cs" Inherits="P_Bank_Info" %>
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
         <link href="assets/css/image.css" rel="stylesheet" type="text/css" />
         <link href="assets/css/table.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .style7
            {
                color: #0000FF;
            }
            .style8
            {
                width: 41px;
            }
            .style9
            {
                color: #000000;
            }
            .style10
            {
                width: 239px;
            }
            .style11
            {
                width: 266px;
            }
        </style>
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
                    <div class="navbar-collapse collapse">

                        <ul class="nav navbar-nav navbar-right">
                                                    <div class="divForText1">
                                                     <asp:Image ID="P_partnerimage" runat="server" class="my img-circle" alt="" Height="55px" Width="55px" ImageUrl='~/P_partnerimage' />
                            <asp:Label ID="P_txtname2" width="125px" runat="server" Font-Size="Large" ForeColor="#CC3300" Height="24px"></asp:Label>
                             <ajaxToolkit:HoverMenuExtender ID="HoverMenuExtender1" runat="server" 
                                    BehaviorID="P_txtname2_HoverMenuExtender" DynamicServicePath="" 
                                    TargetControlID="P_txtname2" PopupControlID="linktabel" 
                                    PopupPosition="Bottom">
                                </ajaxToolkit:HoverMenuExtender>
                                 <table id="linktabel"  runat="server" class="linktabel">
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
                                            PostBackUrl="~/p_logout.aspx">Log Out</asp:LinkButton>
                                    </td>
                                </tr>
                    </table>
                                   </div>
                            <!--mega menu-->
                            
                            <!--menu Features li end here-->   

                           
                        </ul>

                    </div><!--/.nav-collapse -->
                </div><!--/.container-->
            </div><!--navigation end-->

        </header><!--header main end-->
          <section id="content-region-3" class="padding-40 page-tree-bg">
            <div class="container">
                <h3 class="page-tree-text">
                    Update Your Bank Details
                </h3>
            </div>
        </section><!--page-tree end here-->
        <div class="space-70"></div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="my-login-form">
                          
                        <h4 class="heading-mini">Bank Details</h4>
                        <div class="row">
                        
                         <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_txtabnkname" runat="server"  placeholder="Bank name*" 
                                 class="form-control" MaxLength="500" ></asp:TextBox>
                        </div>
                         <div class="col-md-6 margin-btm-20">
                            <asp:DropDownList ID="AcTypeList"  runat="server" class="form-control" 
                                            placeholder="Select your Account*" >
                                            <asp:ListItem>Select Your Account Type</asp:ListItem>
                                    	   <asp:ListItem>Saving</asp:ListItem>
                                           <asp:ListItem>Current</asp:ListItem>
                                           </asp:DropDownList>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_BankBranch" runat="server"   class="form-control" 
                                  placeholder="Branch*" MaxLength="500" ></asp:TextBox>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="bankcity" runat="server"   class="form-control" 
                                  placeholder="City*" MaxLength="30" ></asp:TextBox>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="txtAcNo" runat="server"   class="form-control" 
                                  placeholder="Account No*...." MaxLength="30" ></asp:TextBox>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="txtifsccode" runat="server"   class="form-control" 
                                  placeholder="IFSC code*" MaxLength="50" ></asp:TextBox>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="AcHolderName" runat="server"   class="form-control" 
                                  placeholder="Account Holder name*" MaxLength="50" ></asp:TextBox>
                        </div>
                      
             <div class="col-md-12 text-right"> 
                 <asp:Button ID="bankupdate" runat="server" class="btn theme-btn-color"
                            Text="Update" onclick="bankupdate_Click" 
                       /></div>
                     <div class="form-btm-link text-center"> 
                     <asp:Label   ID="lblmsg1" runat="server" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                      </div> 
                      <div class="col-md-12 text-center">
                         <h4> 
                      <asp:LinkButton ID="lnkbtnhome" 
                          runat="server" >Home</asp:LinkButton> </h4>
                       
                     </div>
          </div>  
         </div>  </div> </div></div>
         
        </ContentTemplate></asp:UpdatePanel >
       
        </form>
        
</body>
</html>
