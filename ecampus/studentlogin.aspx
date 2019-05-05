<%@ Page Language="VB" AutoEventWireup="false" CodeFile="studentlogin.aspx.vb" Inherits="studentlogin" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
             function isNumber(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if ((charCode >= 48 &&  charCode <= 57) || (charCode == 32))
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
        }
        .style2
        {
            width: 207px;
        }
        .style3
        {
            height: 42px;
        }
        .style4
        {
            width: 149px;
        }
        .style6
        {
            width: 207px;
            height: 42px;
        }
        .style7
        {
            width: 149px;
            height: 42px;
        }
        .style8
        {
            width: 149px;
            height: 29px;
        }
        .style9
        {
            width: 207px;
            height: 29px;
        }
    </style>
   
</head>
<body style="height: 973px; width: 873px">
    <form id="form1" runat="server">
    <div class="header">
  <asp:Image ID="Image2" runat="server" style="margin-left: 0px" Width="144px" 
            Height="102px" ImageAlign="Left" ImageUrl="~/image/L_36290.gif" />
       <asp:Label ID="Label12" runat="server" Text="The New College,Kolhapur" 
           Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
       <br />
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>

<div class="topnav">
  <a href="home.aspx">HOME</a>
</div>
 <div class="column middle">
 <table style="width: 910px">
      <tr>
    <td class="style1" colspan="3" align="center">
        <asp:Label ID="Label13" runat="server" Font-Bold="True" 
            Text="Student Registration"></asp:Label>
          </td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4"></td>
    <td></td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style7">
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Student Name"></asp:Label>
          </td>
    <td class="style3" colspan="2">
        <asp:TextBox ID="txtnckstudname" placeholder="enter full name" runat="server" onkeypress="javascript:return ischar(event)"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtnckstudname" ErrorMessage="Name should no be "></asp:RequiredFieldValidator>
          </td>
    <td class="style6"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label15" runat="server" Font-Bold="True" 
            Text="Student PRN Number"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtprn" placeholder="prn" runat="server" MaxLength="10"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtprn" ErrorMessage="PRN should not be blank"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtprn" ErrorMessage="prn no must be 10 digit" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
          </td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Mobile Number"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtnckmobile" placeholder="mobile number" runat="server" MaxLength="10" onkeypress="javascript:return isNumber(event)"></asp:TextBox>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Email Address"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtemail" placeholder="email address" runat="server" 
            MaxLength="50"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
            runat="server" ControlToValidate="txtemail" ErrorMessage="enter valid email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Address"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtnckadd" placeholder="address" runat="server" TextMode="MultiLine"></asp:TextBox>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Class"></asp:Label>
          </td>
    <td>
        <asp:DropDownList ID="ddclass" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Admission Year"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtaddyear" placeholder=" addmission year" runat="server" MaxLength="4"></asp:TextBox>
          </td>
    <td>&nbsp;</td>
    <td class="style2">&nbsp;</td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="DOB"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtdob" placeholder="date of birth" runat="server" 
            Visible="False"></asp:TextBox>
          <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" 
            ImageUrl="~/image/calender.jpg" Width="65px" />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          </td>
    <td>
        <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
          </td>
    <td class="style2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtdob" ErrorMessage="Please enter your dob"></asp:RequiredFieldValidator>
          </td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Adhar Number"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtadhar"  placeholder="adhar number" runat="server" 
            MaxLength="12"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
            runat="server" ControlToValidate="txtadhar" 
            ErrorMessage=" ENTER VALID No" ValidationExpression="\d{12}"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtadhar" 
            ErrorMessage="Please enter adhar no "></asp:RequiredFieldValidator>
          </td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style8">
        <asp:Label ID="Label25" runat="server" Text="City" Font-Bold="True"></asp:Label>
          </td>
    <td class="style8">
        <asp:DropDownList ID="ddlcity" runat="server">
            <asp:ListItem>kolhapur</asp:ListItem>
        </asp:DropDownList>
          </td>
    <td class="style8"></td>
    <td class="style9"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label26" runat="server" Text="Village" Font-Bold="True"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtvillage" placeholder="village" runat="server" MaxLength="15"></asp:TextBox>
          </td>
    <td>&nbsp;</td>
    <td class="style2">&nbsp;</td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label27" runat="server" Text="Pincode" Font-Bold="True"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtpincode" placeholder="pincode" runat="server" MaxLength="6"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtpincode" ErrorMessage="Please Enter Pin Code" 
            Font-Bold="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtpincode" 
            ErrorMessage="Please Enter 6 digit pin code" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
          </td>
    <td class="style2">&nbsp;</td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Password"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtstupass" placeholder="password" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtstupass" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Retype Password"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtstudpass" placeholder="confirm password" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
          </td>
    <td></td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Label ID="Label28" runat="server" Text="Upload Photo" Font-Bold="True"></asp:Label>
          </td>
    <td>
        <asp:Image ID="imgph" runat="server" />
        <asp:TextBox ID="txtimage" runat="server"></asp:TextBox>
          <asp:FileUpload ID="FileUpload1" runat="server" />
          </td>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <td>&nbsp;</td>
    <td class="style2">
        <asp:TextBox ID="txtemailsubject" runat="server" Visible="False" Width="172px">LOGIN AT ECAMPUS</asp:TextBox>
          </td>
     </tr>
      <tr>
    <td class="style4">
        <asp:Button ID="btnstudlogin" runat="server" Font-Bold="True" Text="Login" />
          </td>
    <td>
        <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
          </td>
    <td>&nbsp;</td>
    <td class="style2">
        <asp:TextBox ID="txtemailbody" runat="server" Visible="False" Width="170px">THANK YOU FOR REGISTERING AT ECAMPUS</asp:TextBox>
          </td>
     </tr>
      <tr>
    <td class="style4">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="style2">&nbsp;</td>
     </tr>
 </table>
 </div> 
    </form>
</body>
</html>
