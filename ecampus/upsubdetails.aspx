<%@ Page Language="VB" AutoEventWireup="false" CodeFile="upsubdetails.aspx.vb" Inherits="upsubdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <link href="column.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 760px;
        }
        .style2
        {
            width: 758px;
        }
        .style3
        {
            width: 142px;
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
  <table>
  <tr>
  <td class="style1">
  
  
  
      <asp:Button ID="Button5" runat="server" Text="Back" Width="106px" 
          Font-Bold="True" />
  
  
  
  </td>
  
   <td class="style2">
  
  
  
       &nbsp;</td>
  </tr>
   </table>
</div>
    <div>
    <table style="width: 1036px; height: 195px">
    <tr>
    <td class="style3"></td>
     <td></td>
     <td></td>
     <td></td>
   </tr>
     <tr>
    <td class="style3"></td>
     <td></td>
     <td></td>
     <td></td>
   </tr>
     <tr>
    <td class="style3">
      <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Faculty Id"></asp:Label>
         </td>
     <td>
         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         </td>
     <td></td>
     <td></td>
   </tr>
     <tr>
    <td class="style3">
      <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Class"></asp:Label>
         </td>
     <td>
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         </td>
     <td></td>
     <td></td>
   </tr>
     <tr>
    <td class="style3">
      <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Subject Code"></asp:Label>
         </td>
     <td>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         </td>
     <td></td>
     <td></td>
   </tr>
     <tr>
    <td class="style3">
  
  
  
       <asp:Button ID="Button6" runat="server" Font-Bold="True" Text="Update" 
           Width="116px" />
  
  
  
         </td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
     </table>
    
    </div>
    </form>
</body>
</html>
