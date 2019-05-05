<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <asp:Image ID="Image1" runat="server" 
           style="margin-left: 0px; right: 744px; " 
           ImageAlign="Left" ImageUrl="~/image/L_36290.gif" Height="97px" 
           Width="114px" />
       <asp:Label ID="Label4" runat="server" Text="The New College,Kolhapur" 
           Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
       <br />
       <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>
<div class="topnav">
 <a href="home.aspx">HOME</a>
</div> 
    <div>
    <h2> FEEDBACK</h2>
    <table bgcolor="White" style="height: 287px; width: 832px">
     <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099" colspan="2" align="center">
         <asp:Label ID="Label12" runat="server" Text="   Feedback" Font-Bold="True" 
             ForeColor="White"></asp:Label> </td>
             </tr> 
   <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="Label10" runat="server" Text="Student Name" BackColor="#000099" 
             BorderColor="Black" BorderStyle="None" Width="139px" Font-Bold="True" 
             ForeColor="White" Height="33px"></asp:Label>
         <br />
       </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtstudnm" runat="server" onkeypress="javascript:return ischar(event)"></asp:TextBox>
       </td>
     <td class="style144" colspan="2">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtstudnm" ErrorMessage="please enter your name"></asp:RequiredFieldValidator>
       </td>
    </tr>
   <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="Label11" runat="server" Text="College Name" Font-Bold="True" 
             ForeColor="White"></asp:Label>
         <br />
       </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtcollegenm"  onkeypress="javascript:return ischar(event)" runat="server"></asp:TextBox>
       </td>
     <td class="style144" colspan="2">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="txtcollegenm" ErrorMessage="please enter your college name"></asp:RequiredFieldValidator>
       </td>
    </tr>
   <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="city" runat="server" Text="City" Font-Bold="True" 
             ForeColor="White"></asp:Label>
         <br />
       </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtcity" onkeypress="javascript:return ischar(event)" runat="server"></asp:TextBox>
       </td>
     <td class="style144">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
             ControlToValidate="txtcollegenm" ErrorMessage="please enter your college name"></asp:RequiredFieldValidator>
       </td>
     <td class="style15"></td>
    </tr>
    <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="Label13" runat="server" Text="Mobile No" Font-Bold="True" 
             ForeColor="White"></asp:Label>
         <br />
        </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtmobileno" runat="server" MaxLength ="10" onkeypress="javascript:return isNumber(event)"></asp:TextBox>
        </td>
     <td class="style144">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
             ControlToValidate="txtmobileno" ErrorMessage="please enter your mobile number"></asp:RequiredFieldValidator>
        </td>
     <td class="style15"></td>
    </tr>
    <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="Label14" runat="server" Text="Email Address" Font-Bold="True" 
             ForeColor="White"></asp:Label>
         <br />
        </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtemadd" runat="server"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
             ControlToValidate="txtemadd" ErrorMessage="enter valid email address" 
             ForeColor="White" 
             ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
     <td class="style144">
         <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        </td>
     <td class="style15">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
             ControlToValidate="txtemadd" ErrorMessage="please enter email id"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
     <td class="style22"></td>
     <td class="style4" bgcolor="#000099">
         <asp:Label ID="Label15" runat="server" Text="Feedback" Font-Bold="True" 
             ForeColor="White"></asp:Label>
         <br />
        </td>
     <td class="style21" bgcolor="#000099">
         <asp:TextBox ID="txtfeedback" onkeypress="javascript:return ischar(event)" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
     <td class="style144" colspan="2">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
             ControlToValidate="txtfeedback" 
             ErrorMessage="please enter your feedback in minimum 20 words"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
     <td class="style22">&nbsp;</td>
     <td class="style4" bgcolor="#000099">
         <asp:Button ID="btnfeedback" runat="server" Font-Bold="True" Text="Submit" 
             Height="35px" Width="130px" />
         </td>
     <td class="style21" bgcolor="#000099">
         &nbsp;</td>
     <td class="style144">
         <asp:TextBox ID="txtemsub" runat="server" Visible="False">REGARDING FEEDBACK</asp:TextBox>
         </td>
     <td class="style15">
         <asp:TextBox ID="txtemfbody" runat="server" Visible="False">THANK YOU FOR YOUR FEEDBACK</asp:TextBox>
         </td>
    </tr>
    </table>
    
    
    
    
    
    
    </div>
    </form>
</body>
</html>
