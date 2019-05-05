<%@ Page Language="VB" AutoEventWireup="false" CodeFile="eventregistration.aspx.vb" Inherits="eventregistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            height: 26px;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 31px;
        }
        .style4
        {
            height: 24px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: 8px;
        }
        .row
        {
            height: 956px;
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
 <div class="column middle">
   <table>
    <tr>
    <td></td>
    <td class="style1" align="center" bgcolor="#000099" colspan="2" rowspan="2">
        <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" 
            Text="New Horizon Registration" BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Student Name" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtstudnm" placeholder="(enter full name)" onkeypress="javascript:return ischar(event)" runat="server" 
            Height="28px" Width="184px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtstudnm" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
          </td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="College Name" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtcollnm" placeholder="(enter college name)" onkeypress="javascript:return ischar(event)" runat="server" 
            Height="35px" Width="185px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtcollnm" ErrorMessage="Please enter college name"></asp:RequiredFieldValidator>
          </td>
     </tr>
      <tr>
    <td class="style1"></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label26" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Class"></asp:Label>
          </td>
    <td class="style1">
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
          </td>
    <td class="style1"></td>
     </tr>
      <tr>
    <td>&nbsp;</td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label25" runat="server" Font-Bold="True" 
            Text="Select Activities" BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            Font-Bold="True" Text="POSTER PRESENTATION" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" 
            Font-Bold="True" Text="PAPER PRESENTATION" />
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
            Font-Bold="True" Text="PROGRAMMING SKILLS" />
          </td>
    <td>&nbsp;</td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Mobile Number" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td colspan="2">
        <asp:TextBox ID="txtmbno" placeholder="( mobile number)" runat="server" 
        onkeypress="javascript:return isNumber(event)"  Height="30px" Width="181px" MaxLength="10"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtmbno" ErrorMessage="PLease enter mobile number"></asp:RequiredFieldValidator>
          </td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Email Address" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtemadd" placeholder="(email address)" runat="server" 
            Height="34px" Width="175px"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="txtemadd" ErrorMessage="Enter valid email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </td>
    <td>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtemadd" ErrorMessage="Please enter email id"></asp:RequiredFieldValidator>
        &nbsp;</td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Bank Name" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>State Bank Of India</asp:ListItem>
            <asp:ListItem>Bank Of India</asp:ListItem>
            <asp:ListItem>Bank Of Maharashtra</asp:ListItem>
            <asp:ListItem>ICICI Bank</asp:ListItem>
            <asp:ListItem>IDBI Bank</asp:ListItem>
            <asp:ListItem>HDFC Bank</asp:ListItem>
        </asp:DropDownList>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Card Type" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:RadioButton ID="rddc" runat="server" AutoPostBack="True" 
            Text="Debit Card" />
        <asp:RadioButton ID="rdcd" runat="server" AutoPostBack="True" 
            Text="Credit Card" />
          </td>
    <td>
        <asp:TextBox ID="txtcard" runat="server" Visible="False"></asp:TextBox>
          </td>
     </tr>
      <tr>
    <td>&nbsp;</td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Cardholder Name"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtcardholdernm" placeholder="(full card holder name)" onkeypress="javascript:return ischar(event)"
            runat="server" Height="33px" Width="178px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtcardholdernm" ErrorMessage="Enter Card holder name"></asp:RequiredFieldValidator>
          </td>
    <td>&nbsp;</td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Card Number" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtcardno"  placeholder="(card number)" runat="server" 
          onkeypress="javascript:return isNumber(event)" Height="29px" Width="177px" MaxLength="16"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtcardno" ErrorMessage="Enter Card number"></asp:RequiredFieldValidator>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="CVV Number" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtcvvno" placeholder="(cvv number)" runat="server" 
          onkeypress="javascript:return isNumber(event)"  Height="27px" Width="178px" MaxLength="3"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtcvvno" ErrorMessage="Enter cvv number"></asp:RequiredFieldValidator>
          </td>
    <td></td>
     </tr>
      <tr>
    <td class="style6"></td>
    <td class="style6" bgcolor="#000099">
        <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Expiry Date" 
            BackColor="#000099" ForeColor="White"></asp:Label>
          </td>
    <td class="style6">
        <asp:TextBox ID="txtexpirydate" placeholder="(expiry date)" runat="server" 
            Height="25px" Width="183px" Visible="False"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtexpirydate" ErrorMessage="Enter expiry date"></asp:RequiredFieldValidator>
          </td>
    <td class="style6">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
            ImageUrl="~/image/calender.jpg" Width="70px" />
          </td>
          <td class="style6">
              <asp:Calendar ID="Calendar1" runat="server" Height="171px"></asp:Calendar>
          </td>
     </tr>
      <tr>
    <td class="style6">&nbsp;</td>
    <td class="style6" bgcolor="#000099">
        &nbsp;</td>
    <td class="style6">
        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Width="164px"></asp:TextBox>
          </td>
    <td class="style6">&nbsp;</td>
          <td class="style6">
              &nbsp;</td>
     </tr>
      <tr>
    <td>&nbsp;</td>
    <td class="style1" bgcolor="#000099">
        <asp:Label ID="Label28" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Payable"></asp:Label>
          </td>
    <td>
        <asp:TextBox ID="txtamt" runat="server" Enabled="False">150</asp:TextBox>
          </td>
    <td>&nbsp;</td>
     </tr>
      <tr>
    <td></td>
    <td class="style1"></td>
    <td>
        <asp:TextBox ID="txttransacid" runat="server" Enabled="False"></asp:TextBox>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style4"></td>
    <td>
        <asp:TextBox ID="txttrandate" runat="server" Enabled="False"></asp:TextBox>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style5">
        <asp:Button ID="btnregister" runat="server" Font-Bold="True" Text="Register" />
          </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
          <asp:Button ID="btnreceip" runat="server" Text="Print Receipt" 
            Visible="False" />
          </td>
    <td></td>
     </tr>
      <tr>
    <td class="style2"></td>
    <td class="style2"></td>
    <td class="style2">
        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
          </td>
    <td class="style2"></td>
     </tr>
      <tr>
    <td></td>
    <td class="style3"></td>
    <td>
        <asp:TextBox ID="txtemsub" runat="server" Visible="False">New Horizon Registration</asp:TextBox>
          </td>
    <td></td>
     </tr>
      <tr>
    <td></td>
    <td class="style1"></td>
    <td>
        <asp:TextBox ID="txtembody" runat="server" Visible="False">Thank you for Registration.</asp:TextBox>
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
    <td class="style1"></td>
    <td></td>
    <td></td>
     </tr>
    </table>
 </div>
     </div> 
    </form>
</body>
</html>
