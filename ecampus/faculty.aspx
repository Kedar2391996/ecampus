<%@ Page Language="VB" AutoEventWireup="false" CodeFile="faculty.aspx.vb" Inherits="faculty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
   
    <link href="layout.css" rel="stylesheet" type="text/css" />
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
 <div class="column middle">
 <table>
 <tr>
   <td class="style15" bgcolor="#000099" colspan="2" align="center">
       <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
           Text="  Faculty Login" ForeColor="White" Font-Bold="True"></asp:Label>
        </td>
   <td class="style38"></td>
   <td class="style18"></td>
   </tr>
    <tr>
   <td class="style9" bgcolor="#000099">
       <asp:Label ID="Label1" runat="server" BackColor="#000099" BorderColor="Black" 
           BorderStyle="None" BorderWidth="2px" Font-Bold="True" Font-Italic="False" 
           Font-Names="Arial" Font-Overline="False" Font-Underline="False" 
           ForeColor="White" Text="Name" Width="190px" Height="17px"></asp:Label>
        </td>
   <td class="style10" bgcolor="#000099">
       <asp:TextBox ID="txtfacname" placeholder="full name" onkeypress="javascript:return ischar(event)" runat="server" Width="235px"></asp:TextBox>
        </td>
   <td class="style39">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="txtfacname" ErrorMessage="Please enter name"></asp:RequiredFieldValidator>
        </td>
   <td class="style27"></td>
   </tr>
    <tr>
   <td class="style24" bgcolor="#000099">
       <asp:Label ID="Label2" runat="server" Text="Qualification" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td class="style3" bgcolor="#000099">
       <asp:TextBox ID="txtqualification" placeholder="qualification" runat="server" Width="239px" Height="23px"></asp:TextBox>
        <br />
        </td>
   <td class="style37"></td>
   <td class="style1"></td>
   </tr>
    <tr>
   <td class="style19" bgcolor="#000099">
       <asp:Label ID="Label3" runat="server" Text="Employee ID-" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td class="style20" bgcolor="#000099">
       <asp:TextBox ID="txtempid" placeholder="faculty id" runat="server" Height="23px" Width="239px" 
           MaxLength="10"></asp:TextBox>
        <br />
        </td>
   <td class="style40">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="txtempid" ErrorMessage="please enter employee id"></asp:RequiredFieldValidator>
        </td>
   <td class="style14"></td>
   </tr>
    <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label10" runat="server" Text="Mobile No" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacmobileno" placeholder="mobile number" runat="server" 
           onkeypress="javascript:return isNumber(event)" Height="23px" Width="239px" 
           MaxLength="10"></asp:TextBox>
        <br />
        </td>
   <td class="style37"></td>
   <td class="style1"></td>
   </tr>
    <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label4" runat="server" Text="Email Address-" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacemail" placeholder="email address" runat="server" Height="23px" Width="239px"></asp:TextBox>
        <br />
        </td>
   <td class="style37">
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ControlToValidate="txtfacemail" ErrorMessage="enter valid email address" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
   <td class="style1"></td>
   </tr>
    <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label7" runat="server" Text="Address" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacaddress" placeholder="address" runat="server" TextMode="MultiLine" 
           Width="239px"></asp:TextBox>
        <br />
        </td>
   <td class="style37"></td>
   <td class="style1"></td>
   </tr>
    <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label8" runat="server" Text="City" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfaccity" placeholder="city" runat="server" Width="238px"></asp:TextBox>
        <br />
        </td>
   <td class="style37"></td>
   <td class="style1"></td>
   </tr>
   <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label9" runat="server" Text="Vilage" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacvillage" placeholder="village" runat="server" Height="23px" Width="239px" 
           TextMode="MultiLine"></asp:TextBox>
       <br />
       </td>
   <td class="style37"></td>
   <td class="style1"></td>

   
   
   
   
   </tr>
   
    <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label5" runat="server" Text="Password" ForeColor="White" 
           Font-Bold="True"></asp:Label>
        <br />
        </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacpassword" placeholder="password" runat="server" Height="23px" Width="239px" 
           TextMode="Password" MaxLength="10"></asp:TextBox>
        <br />
        </td>
   <td class="style37">
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="txtfacpassword" ErrorMessage="enter password"></asp:RequiredFieldValidator>
        </td>
   <td class="style1"></td>

   
   
   
   
   </tr> <tr>
   <td bgcolor="#000099" class="style24">
       <asp:Label ID="Label6" runat="server" Text="Retype Password-" ForeColor="White" 
           Font-Bold="True"></asp:Label>
           <br />
           </td>
   <td bgcolor="#000099" class="style3">
       <asp:TextBox ID="txtfacrepass" placeholder="confirm password" runat="server" Height="23px" Width="239px" 
           TextMode="Password"></asp:TextBox>
           <br />
           </td>
   <td class="style37"></td>
   <td class="style1"></td>

   
   
   
   
   </tr> <tr>
   <td class="style4">&nbsp;</td>
   <td class="style4">&nbsp;</td>
   <td class="style4">&nbsp;</td>
   <td class="style24">&nbsp;</td>
   <td class="style3">
       &nbsp;</td>
   <td class="style37"></td>
   <td class="style1"></td>

   
   
   
   
   </tr> <tr>
   <td class="style32">
       <asp:Button ID="btnfaclogin" runat="server" Text="Login" Width="94px" 
           Height="27px" BackColor="#000099" Font-Bold="True" ForeColor="White" />
           </td>
   <td class="style32"></td>
   <td class="style32"></td>
   <td class="style33">
       &nbsp;</td>
   <td class="style34"></td>
   <td class="style41"></td>
   <td class="style36"></td>

   
   
   
   
   </tr> <tr>
   <td class="style4">
       <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
           </td>
   <td class="style4">
       <asp:TextBox ID="txtemfsub" runat="server" Visible="False">FACULTY REGISTRATION</asp:TextBox>
         </td>
   <td class="style4">&nbsp;</td>
   <td class="style24"></td>
   <td class="style3"></td>
   <td class="style37"></td>
   <td class="style1"></td>

   
   
   
   
   </tr> <tr>
   <td class="style4">&nbsp;</td>
   <td class="style4">
       <asp:TextBox ID="txtfacultyembody" runat="server" Visible="False">THANK YOU FOR REGISTRATION</asp:TextBox>
         </td>
   <td class="style4">&nbsp;</td>
   <td class="style24"></td>
   <td class="style3"></td>
   <td class="style37"></td>
   <td class="style1"></td>
 </tr>
   </table>
   </div> 
    </form>
</body>
</html>
