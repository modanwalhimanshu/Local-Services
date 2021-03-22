<%@ Page Language="C#" AutoEventWireup="true" CodeFile="P_EditProfile.aspx.cs" Inherits="P_EditProfil" %>
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
                    Update Your Profile
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
                          
                        <h4 class="heading-mini">Edit Profile</h4>
                        <div class="row">
                         <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_txtname" runat="server"  placeholder="Full name" 
                                 class="form-control" MaxLength="50" ></asp:TextBox><p></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                           <asp:TextBox ID="P_txtcity" runat="server"   class="form-control" 
                                  placeholder="City" MaxLength="50" ></asp:TextBox><p></p>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                            <asp:DropDownList ID="ddlservicetype"  runat="server" class="form-control" 
                                            placeholder="Select your service" >
                                           <asp:ListItem>Select your service</asp:ListItem>
                                    	   <asp:ListItem>AC Service & Repairs</asp:ListItem>
                                           <asp:ListItem>Carpenter</asp:ListItem>
                                           <asp:ListItem>Car Service & Repair</asp:ListItem>
                                           <asp:ListItem>Chimney & Hob Repair</asp:ListItem>
                                           <asp:ListItem>Electrician</asp:ListItem>
                                           <asp:ListItem>Interior Work / Civil Repair</asp:ListItem>
	                                       <asp:ListItem>Laptop Repair</asp:ListItem>
                                            <asp:ListItem>Microwave Repair</asp:ListItem>
                                           <asp:ListItem>Mobile Repair</asp:ListItem>
                                           <asp:ListItem>Plumber</asp:ListItem>
	                                       <asp:ListItem>Refrigerator Repair </asp:ListItem>
                                           <asp:ListItem>RO & Water Purifier Repair</asp:ListItem>
                                           <asp:ListItem>TV /DTH Installation</asp:ListItem>
                                           <asp:ListItem>Washing Machine Repair</asp:ListItem>
	                                       <asp:ListItem>Water Tank Cleaning</asp:ListItem>
	                                       </asp:DropDownList>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                          <asp:TextBox ID="P_txtmob" runat="server" class="form-control" placeholder="mobile" 
                                  MaxLength="10" Enabled="False" Height="29px"  Width="100%" ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                                    ControlToValidate="P_txtmob" ErrorMessage="Invalid Mobile No." ForeColor="Red" 
                                    ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                          <asp:TextBox ID="P_dob" runat="server" class="form-control" placeholder="Date of Birth*" 
                                  MaxLength="10"  ></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="P_dob_CalendarExtender" 
                                runat="server" BehaviorID="P_dob_CalendarExtender" TargetControlID="P_dob" 
                                PopupPosition="TopRight" />
                                    </div>
                        <div class="col-md-6 margin-btm-20">
                          <asp:TextBox ID="P_altrntmob" runat="server" class="form-control" placeholder="Alternat mobile No..." 
                                  MaxLength="10" ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="P_altrntmob" ErrorMessage="Invalid Mobile No." ForeColor="Red" 
                                    ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                            <asp:DropDownList ID="QualificationList"  runat="server" class="form-control" 
                                            placeholder="Select your Qualification" >
                                           <asp:ListItem>Select your Qualification</asp:ListItem>
                                    	   <asp:ListItem>Below 10th</asp:ListItem>
                                           <asp:ListItem>10th</asp:ListItem>
                                           <asp:ListItem>12th</asp:ListItem>
                                           <asp:ListItem>Graduate</asp:ListItem>
                                           <asp:ListItem>Post Graduate</asp:ListItem>
                                             </asp:DropDownList>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                            <asp:DropDownList ID="experienceList"  runat="server" class="form-control" 
                                            placeholder="Select your experience" >
                                           <asp:ListItem>Select your experience</asp:ListItem>
                                    	   <asp:ListItem>0-1 year</asp:ListItem>
                                           <asp:ListItem>1-3 year</asp:ListItem>
                                           <asp:ListItem>3-5 year</asp:ListItem>
                                           <asp:ListItem>5-10 year</asp:ListItem>
                                           <asp:ListItem>10-15 year</asp:ListItem>
                                           <asp:ListItem>15-20 year</asp:ListItem>
	                                       <asp:ListItem>20+ year</asp:ListItem>
                                            </asp:DropDownList>
                        </div>
                          <div class="col-md-6 margin-btm-20">
                                   <asp:TextBox ID="P_txtmail" runat="server" placeholder="E-mail" class="form-control" MaxLength="50"   ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="P_txtmail" ErrorMessage="Invalid E-mail" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6 margin-btm-20">
                                <asp:TextBox ID="txtpincode" runat="server"  class="form-control" placeholder="Pincode"
                              MaxLength="6"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                  ErrorMessage="Invalid Pincode" ControlToValidate="txtpincode" 
                                  ForeColor="#CC0000" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>                                  
                        </div>
                         <div class="col-md-6 margin-btm-20">
                                <asp:TextBox ID="txtads" runat="server"  class="form-control" placeholder="address...."
                              MaxLength="200" TextMode="MultiLine"></asp:TextBox></div>
                      
             <div class="col-md-12 text-right"> 
                 <asp:Button ID="pbtnupdate" runat="server" class="btn theme-btn-color"
                            Text="Update" onclick="Button1_Click"
                       /></div>
                     <div class="form-btm-link text-center"> 
                     <asp:Label   ID="lblmsg1" runat="server" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                      </div> 
                      <div class="col-md-12 text-center">
                         <h4> 
                      <asp:LinkButton ID="lnkbtnhome" 
                          runat="server" onclick="lnkbtnhome_Click" >Home</asp:LinkButton> </h4>
                       
                     </div>
          </div>  
         </div>  </div> </div></div>
         </ContentTemplate>
          </asp:UpdatePanel >
        
        </form>
        
</body>
</html>
