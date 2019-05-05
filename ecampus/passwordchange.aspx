<%@ Page Language="VB" AutoEventWireup="false" CodeFile="passwordchange.aspx.vb" Inherits="passwordchange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 130px;
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

<div class="row">
  <div class="column side">
     <table style="height: 254px; width: 495px">
   <tr>
   <td></td>
   <td class="style1"></td>
   <td></td>
   <td></td>
    </tr>
    <tr>
   <td></td>
   <td class="style1"></td>
   <td></td>
   <td></td>
    </tr>
     <tr>
   <td></td>
   <td bgcolor="#000099" class="style1">
       <asp:Label ID="Label15" runat="server" BackColor="#000099" Font-Bold="True" 
           ForeColor="White" Text="User Id"></asp:Label>
         </td>
   <td bgcolor="#000099">
       <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
         </td>
   <td></td>
    </tr>
     <tr>
   <td></td>
   <td bgcolor="#000099" class="style1">
       <asp:Label ID="Label16" runat="server" BackColor="#000099" Font-Bold="True" 
           ForeColor="White" Text="New Password"></asp:Label>
         </td>
   <td bgcolor="#000099">
       <asp:TextBox ID="txtnewpassword" runat="server"></asp:TextBox>
         </td>
   <td></td>
    </tr>
     <tr>
   <td></td>
   <td bgcolor="#000099" class="style1">
       <asp:Label ID="Label17" runat="server" BackColor="#000099" Font-Bold="True" 
           ForeColor="White" Text="Confirm Password"></asp:Label>
         </td>
   <td bgcolor="#000099">
       <asp:TextBox ID="txtconfirmpass" runat="server"></asp:TextBox>
         </td>
   <td></td>
    </tr>
     <tr>
   <td></td>
   <td class="style1"></td>
   <td></td>
   <td></td>
    </tr>
     <tr>
   <td></td>
   <td class="style1">
       <asp:Button ID="Button1" runat="server" BackColor="#999999" Font-Bold="True" 
           Height="30px" Text="Login" Width="124px" />
         </td>
   <td></td>
   <td></td>
    </tr>
   
   
  
   </table>
  </div>
  <div class="column middle">
  
  </div>
  <div class="column side">
    
  </div>
</div>

<div class="footer">
 
</div>
    </form>
</body>
</html>
