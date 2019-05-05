<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminlogin.aspx.vb" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="layout.css" rel="stylesheet" type="text/css" />  
    <link href="column.css" rel="stylesheet" type="text/css" />   
    <style type="text/css">
        .style1
        {
            width: 768px;
        }
        .style2
        {
            width: 341px;
        }
        .style3
        {
            width: 278px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
  <asp:Image ID="Image2" runat="server" style="margin-left: 0px" Width="144px" 
            Height="102px" ImageAlign="Left" ImageUrl="~/image/L_36290.gif" />
       <asp:Label ID="Label12" runat="server" Text="The New College,Kolhapur" 
           Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
       <br />
       <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>

<div class="topnav">
  <a href="home.aspx">HOME</a>
</div>
<div>
<table>
<tr>
<td></td>
<td class="style3"></td>
<td class="style2"></td>
<td class="style1"></td>
</tr>
<tr>
<td></td>
<td class="style3">
    <asp:Label ID="Label15" runat="server" BackColor="#000099" Font-Bold="True" 
        ForeColor="White" Text="User Name"></asp:Label>
    </td>
<td class="style2">
    <asp:TextBox ID="txtusernm" runat="server"></asp:TextBox>
    </td>
<td class="style1"></td>
</tr>
<tr>
<td></td>
<td class="style3">
    <asp:Label ID="Label16" runat="server" BackColor="#000099" Font-Bold="True" 
        ForeColor="White" Text="Password"></asp:Label>
    </td>
<td class="style2">
    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
    </td>
<td class="style1"></td>
</tr>
<tr>
<td></td>
<td class="style3">
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Login" />
    </td>
<td class="style2"></td>
<td class="style1"></td>
</tr>
</table>

</div>

    </form>
</body>
</html>
