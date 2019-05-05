<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Studentprofile.aspx.vb" Inherits="Studentprofile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="column.css" rel="stylesheet" type="text/css" />
    <link href="layout.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         function isNumber(evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode
             if ((charCode >= 48 && charCode <= 57) || (charCode == 32))
                 return true;
             else
                 return false;
         }

         function ischar(evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode
             if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode == 8) || (charCode == 32))
                 return true;
             else
                 return false;
         } 
        </script>
   
  
    <style type="text/css">
        .style1
        {
            width: 12px;
        }
        .style2
        {
            width: 111px;
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
       <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>

<div class="topnav">
  <table>
  <tr>
  <td class="style2">
  
  
  
  
  
      <asp:Button ID="Button3" runat="server" Text="Back" Width="106px" />
  
  
  
  
  
  </td>
  </tr> 
  </table>
</div>  
  <div class="column middle">
    <table style="height: 380px; width: 303px;">
    <tr>
   <td class="style7"></td>
   <td align="center" class="style1" bgcolor="#000099">
       <asp:Label ID="Label1" runat="server" Text="Update Profile" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
        </td>
   <td class="style5">
       <asp:Button ID="Button2" runat="server" Text="Button" 
           style="height: 26px; width: 56px" Visible="False" />
       <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
       <asp:Label ID="Label2" runat="server" Text="Name" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudnm" onkeypress="javascript:return ischar(event)" runat="server" Enabled="False"></asp:TextBox>
        </td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtupstudnm" ErrorMessage="enter name"></asp:RequiredFieldValidator>
        </td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label3" runat="server" Text="Mobile No-" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudmbl" onkeypress="javascript:return isNumber(event)" runat="server" MaxLength="10"></asp:TextBox>
        </td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="txtupstudmbl" ErrorMessage="enter mobile number"></asp:RequiredFieldValidator>
        </td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label4" runat="server" Text="Email Address-" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudemail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label8" runat="server" Text="PRN No-" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtstdprn" runat="server"></asp:TextBox>
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label5" runat="server" Text="Address-" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label9" runat="server" Text="City-" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudcity" runat="server"></asp:TextBox>
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
    <asp:Label ID="Label10" runat="server" Text="Village/Tashil" BackColor="#000099" 
           Font-Bold="True" ForeColor="White"></asp:Label>
       <br />
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtupstudvillage" runat="server"></asp:TextBox>
        </td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
       <asp:Label ID="Label13" runat="server" BackColor="#000099" Font-Bold="True" 
           ForeColor="White" Text="Class"></asp:Label>
        </td>
   <td class="style5" bgcolor="#000099">
       <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
        </td>
   <td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="txtclass" ErrorMessage="enter your class"></asp:RequiredFieldValidator>
        </td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1" bgcolor="#000099">
       &nbsp;</td>
   <td class="style5" bgcolor="#000099">
       &nbsp;</td>
   <td></td>
   </tr>
    <tr>
   <td class="style7"></td>
   <td class="style1">
       <asp:Button ID="btnsupdate" runat="server" Font-Bold="True" Text="Update" />
        </td>
   <td class="style5">
       &nbsp;</td>
   <td></td>
   </tr>
   </table> 
  </div>
 </form>
</body>
</html>
