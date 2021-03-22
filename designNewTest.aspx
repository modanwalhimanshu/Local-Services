<%@ Page Language="C#" AutoEventWireup="true" CodeFile="designNewTest.aspx.cs" Inherits="designNewTest" %>

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
            height: 23px;
            text-align: center;
        }
        .style3
        {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td>
    <asp:Panel ID="pnldeactivated0" runat="server" BackColor="#666699" 
                                                     BorderColor="#990000" BorderStyle="Solid" 
                        Height="677px" Visible="False" 
                                                     Width="521px">
        <table style="width: 513px">
            <tr><td class="style4" colspan="3" style="color: #FFFFFF; text-align: left;">
                &nbsp;</td><td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">
                    &nbsp;</td></tr>
            <tr><td class="style4" colspan="3" style="color: #FFFFFF; text-align: left;">&#160;</td>
                <td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">&nbsp;</td></tr><tr>
                <td class="style4" colspan="6" style="color: #FFFFFF; text-align: left;">
                    <asp:RadioButtonList ID="rdbtnsrvce" runat="server" AutoPostBack="True" 
                        RepeatDirection="Horizontal" 
                        onselectedindexchanged="rdbtnsrvce_SelectedIndexChanged">
                        <asp:ListItem>Service Complited</asp:ListItem>
                        <asp:ListItem>Service Not Complited</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                </tr><tr>
                <td class="style17" colspan="3" style="color: #FFFFFF; ">&nbsp;</td>
                <td class="style2" colspan="3" style="color: #FFFFFF; ">&nbsp;</td></tr>
            <tr><td class="style17" colspan="3" style="color: #FFFFFF; ">&nbsp;</td><td class="style2" colspan="3" style="color: #FFFFFF; ">
                    &nbsp;</td></tr>
            <tr><td class="style15" colspan="2" style="color: #FFFFFF; text-align: left;">&nbsp;</td>
                <td class="style15" colspan="2" style="color: #FFFFFF; text-align: center;">&nbsp;</td><td class="style5" colspan="2" style="color: #FFFFFF; text-align: center;">
                &nbsp;</td></tr>
            <tr><td class="style16" style="color: #FFFFFF; text-align: left;">
                &nbsp;</td>
                <td class="style12" colspan="4" style="color: #FFFFFF; text-align: center;">&nbsp;</td><td class="style4" style="color: #FFFFFF; text-align: center;">
                    &nbsp;</td></tr>
            <tr><td class="style16" style="color: #FFFFFF; text-align: left;">&#160;</td>
                <td class="style12" colspan="4" style="color: #FFFFFF; text-align: left;">&#160;</td><td class="style4" style="color: #FFFFFF; text-align: center;">&#160;</td></tr>
            <tr><td class="style4" colspan="3" style="color: #FFFFFF; text-align: right;">
                &nbsp;</td><td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">&#160;</td></tr>
            <tr><td class="style16" style="color: #FFFFFF; text-align: left;">&nbsp;</td>
                <td class="style12" colspan="4" style="color: #FFFFFF; text-align: Center;">&nbsp;</td><td class="style4" style="color: #FFFFFF; text-align: center;">
                &nbsp;</td></tr>
            <tr><td class="style16" style="color: #FFFFFF; text-align: left;">
                &nbsp;</td><td class="style13" colspan="4" style="color: #FFFFFF; text-align: center;">
                    &nbsp;</td><td class="style6" style="color: #FFFFFF; text-align: center;">
                    &nbsp;</td></tr>
            <tr><td class="style17" colspan="3" style="color: #FFFFFF; "></td><td class="style14" colspan="3" style="color: #FFFFFF; ">&#160;</td>
                <tr><td class="style17" colspan="3" style="color: #FFFFFF; ">Total</td><td class="style14" colspan="3" style="color: #FFFFFF; ">
                    &nbsp;</td></tr>
                <tr><td class="style17" colspan="3" style="color: #FFFFFF; ">Tax</td><td class="style14" colspan="3" style="color: #FFFFFF; ">
                    &nbsp;</td></tr>
                <tr><td class="style17" colspan="3" style="color: #FFFFFF; ">Discount</td><td class="style14" colspan="3" style="color: #FFFFFF; ">
                    &nbsp;</td></tr>
                <tr><td class="style17" colspan="3" style="color: #FFFFFF; ">Grand Total</td><td class="style14" colspan="3" style="color: #FFFFFF; ">
                    &nbsp;</td></tr>
                <tr><td class="style4" colspan="3" style="color: #FFFFFF; text-align: left;">&#160;</td>
                    <td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">&#160;</td></tr><tr>
                    <td class="style4" colspan="3" style="color: #FFFFFF; text-align: left;"><strong>
                        <span class="style7"></span></strong></td>
                    <td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">&#160;</td></tr><tr>
                    <td class="style8" colspan="6" style="color: #FFFFFF; text-align: center;">&#160;</td></tr><tr>
                    <td class="style8" colspan="6" style="color: #FFFFFF; text-align: center;">&nbsp;</td></tr>
                <tr><td class="style4" colspan="3" style="color: #FFFFFF; text-align: left;">&#160;</td>
                    <td class="style2" colspan="3" style="color: #FFFFFF; text-align: right;">&#160;</td></tr><tr>
                    <td colspan="6" style="color: #FFFFFF; text-align: center;">&#160;</td></tr><tr>
                    <td colspan="6" style="text-align: center; margin-left: 40px;">&nbsp;</td></tr>
                <tr><td colspan="6" style="text-align: center">&nbsp;</td></tr></tr></table></asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="pnlcontent" runat="server" BackColor="#666699" 
                        BorderColor="#990000" BorderStyle="Solid" Height="727px" Width="538px" 
                        Visible="False">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="lblcustname0" runat="server" ForeColor="White"></asp:Label>
                                </td>
                                <td style="text-align: right">
                                    <asp:Button ID="btnclose2" runat="server" BackColor="#CC0000" ForeColor="White" 
                                        text="X" onclick="btnclose2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="pnl1" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                                        Height="65px">
                                        <table class="style1">
                                            <tr>
                                                <td style="text-align: left" class="style3">
                                                    <asp:RadioButton ID="rbt1" runat="server" ForeColor="White" 
                                                        Text="Service Start" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnstartservice" runat="server" Text="Start Service" 
                                                        onclick="btnstartservice_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style3">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="lblstartservice" runat="server" ForeColor="White"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="pnl2" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                                        ForeColor="White" Height="411px">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    <asp:RadioButton ID="rbt2" runat="server" ForeColor="White" 
                                                        Text="Service Closed" />
                                                </td>
                                                <td colspan="2">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">
                                                    Discription*(Labour)</td>
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
                                                    <asp:TextBox ID="txtmaterialamount" runat="server"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtmaterialtax" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
                                                    <asp:Label ID="lblmsgadd" runat="server" ForeColor="White"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <table class="style1">
                                                        <tr>
                                                            <td>
                                                                Details (Material)</td>
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
                                                                <asp:Button ID="btnremovefrmlist" runat="server" Text="Remove" 
                                                                    onclick="btnremovefrmlist_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="text-align: center">
                                                    <table class="style1">
                                                        <tr>
                                                            <td>
                                                                Total</td>
                                                            <td>
                                                                <asp:TextBox ID="txttotal" runat="server" Height="19px" Width="87px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Tax</td>
                                                            <td>
                                                                <asp:TextBox ID="txtttltax" runat="server" Height="19px" Width="87px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Discount</td>
                                                            <td>
                                                                <asp:TextBox ID="txtdscnt" runat="server" Height="19px" Width="87px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Grand Total</td>
                                                            <td>
                                                                <asp:TextBox ID="txtgrndttl" runat="server" Height="19px" Width="87px"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Button ID="btngeneratebill" runat="server" Text="Generate Bill" 
                                                                    onclick="btngeneratebill_Click" />
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
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="pnl3" runat="server" BorderColor="#990000" BorderStyle="Solid" 
                                        ForeColor="White" Height="127px">
                                        <table class="style1">
                                            <tr>
                                                <td style="text-align: left">
                                                    <asp:RadioButton ID="rbtservicewithoutcom" runat="server" 
                                                        Text="Service Closed with out Completed" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2">
                                                    <asp:TextBox ID="txtdiscription" placeholder="Reason*" runat="server" Height="40px" Width="216px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Button ID="btnCloseLead" runat="server" class="btn theme-btn-color" 
                                                        onclick="btnactivate_Click1" Text="Close Lead" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:Label ID="lblmsgpopup1" runat="server" ForeColor="White"></asp:Label>
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
                        TargetControlID="pnlcontent">
                    </ajaxToolkit:AlwaysVisibleControlExtender>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
