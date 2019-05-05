<%@ Page Language="VB" AutoEventWireup="false" CodeFile="facultyprofile.aspx.vb" Inherits="facultyprofile" %>

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
        .style2
        {
        }
        .style3
        {
            width: 12px;
        }
        .style4
        {
            width: 132px;
        }
        .style5
        {
            width: 241px;
        }
    </style>
   
   
</head>
<body>
    <form id="form1" runat="server">
      <div class="header">
  <asp:Image ID="Image2" runat="server" style="margin-left: 0px" Width="144px" 
            Height="102px" ImageAlign="Left" ImageUrl="~/image/L_36290.gif" />
       <asp:Label ID="Label8" runat="server" Text="The New College,Kolhapur" 
           Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
       <br />
       <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>

<div class="topnav">
  <table>
  <tr>
  <td class="style4">
  
  
  
  
  
  
      <asp:Button ID="Button4" runat="server" BackColor="#000099" Font-Bold="True" 
          ForeColor="White" Text="Back" Width="120px" />
  
  
  
  
  
  
  </td>
  </tr>
  </table>
</div>

<div>
     <table>
    <tr>
     <td>
         &nbsp;</td>
          <td class="style13">    
              &nbsp;</td>
     <td class="style14"></td>
     <td class="style5"></td>
      </tr>
   
    <tr>
    <td class="style16">
        <asp:Button ID="Button3" runat="server" Text="Button" Visible="False" />
        </td>
    <td class="style6">
        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
    <tr>
    <td class="style15" bgcolor="#000099" colspan="2">
        <asp:Label ID="Label12" runat="server" BackColor="#000099" Font-Bold="True" 
            ForeColor="White" Text="Update Profile"></asp:Label>
        </td>
    <td class="style2"></td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label1" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Name" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfacnm" runat="server"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2" colspan="2">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtupfacnm" ErrorMessage="please enter your name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style17">
        <asp:Label ID="Label2" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Qualification" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style18">
        <asp:TextBox ID="txtupfacqua" runat="server"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style18">
        </td>
    <td class="style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtupfacqua" ErrorMessage="please enter your qualification"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label3" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Mobile No-" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfacmbl"  onkeypress="javascript:return isNumber(event)" runat="server" MaxLength="10"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtupfacmbl" ErrorMessage="enter mobile number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label4" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Email Address" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfacemail" runat="server" style="margin-left: 0px"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label5" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Address" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfacadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtupfacadd" ErrorMessage="enter address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label6" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="City" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfaccity" runat="server"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label7" runat="server" BackColor="#000099" BorderColor="Black" 
            BorderStyle="None" Text="Village" Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtupfacvillage" runat="server"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td bgcolor="#000099" class="style15">
        <asp:Label ID="Label15" runat="server" Text="Faculty ID" BackColor="#000099" 
            Font-Bold="True" ForeColor="White"></asp:Label>
        <br />
        </td>
    <td bgcolor="#000099" class="style2">
        <asp:TextBox ID="txtfacid"  onkeypress="javascript:return isNumber(event)" runat="server" MaxLength="10"></asp:TextBox>
        </td>
    <td bgcolor="White" class="style2">
        &nbsp;</td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td class="style15" bgcolor="#000099">
        &nbsp;</td>
    <td class="style2" bgcolor="#000099">
        &nbsp;</td>
    <td class="style2"></td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td class="style15" bgcolor="#000099">
        &nbsp;</td>
    <td class="style3" bgcolor="#000099">
        &nbsp;</td>
    <td class="style2"></td>
    <td class="style5"></td>
    </tr>
    <tr>
    <td class="style15">
        <asp:Button ID="btnfacupdate" runat="server" Font-Bold="True" Text="Update" />
        </td>
    <td class="style3">
        &nbsp;</td>
    <td class="style2">&nbsp;</td>
    <td class="style5">&nbsp;</td>
    </tr>
    </table>
     <p>
         &nbsp;</p>
  </div>
  <div>
  </div>
  
    </form>
</body>
</html>
