<%@ Page Language="VB" AutoEventWireup="false" CodeFile="assignmentupload.aspx.vb" Inherits="assignmentupload"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <title>Untitled Page</title>
   
   
   
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
        .style2
        {
            height: 20px;
        }
        .style3
        {
            height: 19px;
            width: 74px;
        }
        .style4
        {
            height: 18px;
        }
        .style5
        {
            height: 16px;
        }
        .style7
        {
            height: 11px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            height: 18px;
            width: 200px;
        }
        .style11
        {
            height: 21px;
            width: 200px;
        }
        .style15
        {
            height: 21px;
            width: 119px;
        }
        .style18
        {
            height: 11px;
            width: 119px;
        }
        .style19
        {
            height: 26px;
            width: 119px;
        }
        .style20
        {
            height: 20px;
            width: 90px;
        }
        .style21
        {
            height: 20px;
            width: 119px;
        }
        .style22
        {
            width: 119px;
        }
        .style23
        {
            height: 20px;
            width: 74px;
        }
        .style24
        {
            height: 26px;
            width: 74px;
        }
        .style25
        {
            height: 26px;
            width: 200px;
        }
        .style26
        {
            height: 20px;
            width: 200px;
        }
        .style27
        {
            width: 178px;
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
       <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
</div>

<div class="topnav">
  <a href="facultyebknotice.aspx">Back</a>
</div>
<div class="row">
  <div class="column side">
  <table class="style7">
    <tr>
     <td class="style5">&nbsp;</td>
     <td class="style4" align="center" bgcolor="#000099" colspan="2">
         <asp:Label ID="Label9" runat="server" BackColor="#000099" BorderColor="Black" 
             BorderStyle="None" Font-Bold="True" Text="   Assignment Upload" 
             Height="31px" Width="381px" ForeColor="White"></asp:Label> </td>
       
     <td class="style15">&nbsp;</td>
    </tr>
    <tr>
     <td class="style5">&nbsp;</td>
     <td class="style9">&nbsp;</td>
       
     <td class="style23">&nbsp;</td>
     <td class="style15">&nbsp;</td>
    </tr>
    <tr>
     <td class="style8"></td>
     <td class="style25" bgcolor="#000099">
         <asp:Label runat="server" Text="Faculty ID" BackColor="#000099" 
             BorderColor="Black" BorderStyle="None" ForeColor="White" Font-Bold="True"></asp:Label>
        </td>
        <td class="style24" bgcolor="#000099">
         <asp:TextBox ID="txtfacid" runat="server" MaxLength="10" Enabled="False"></asp:TextBox>
        </td>
     <td class="style19" bgcolor="White">
        </td>
     <td class="style8"></td>
     <td class="style8"></td>
    </tr>
    
    <tr>
     <td class="style5"></td>
     <td class="style11" bgcolor="#000099" rowspan="2">
         <asp:Label ID="Label2" runat="server" Text="Class" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099" rowspan="2">
         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
         </asp:DropDownList>
        </td>
     <td class="style21"></td>
     <td class="style1"></td>
    </tr>
    
    
    <tr>
     <td class="style7"></td>
     <td class="style18"></td>
     <td class="style7"></td>
    </tr>
    
    
    <tr>
     <td class="style5"></td>
     <td class="style9" bgcolor="#000099">
         <asp:Label ID="Label4" runat="server" Text="Subject Code" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099">
         <asp:DropDownList ID="ddsubcode" runat="server" AutoPostBack="True">
         </asp:DropDownList>
        </td>
     <td class="style21"></td>
     <td class="style1"></td>
    </tr>
    
    
    <tr>
     <td class="style5"></td>
     <td class="style9" bgcolor="#000099">
         <asp:Label ID="Label5" runat="server" Text="Subject Name" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099">
         <asp:TextBox ID="txtsubjectnm" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td class="style22">
        </td>
     <td class="style20"></td>
     <td class="style1"></td>
    </tr>
    
    <tr>
     <td class="style5"></td>
     <td class="style9" bgcolor="#000099">
         <asp:Label ID="Label6" runat="server" Text="Upload" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099">
         <asp:TextBox ID="txtassimage" runat="server" Enabled="False"></asp:TextBox>
         <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
     <td class="style21"></td>
     <td class="style1">&nbsp;</td>
    </tr>
    
    <tr>
     <td class="style5"></td>
     <td class="style9" bgcolor="#000099">
         <asp:Label ID="Label7" runat="server" Text="Assignment Name" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099">
         <asp:TextBox ID="txtassignmentnm" runat="server"></asp:TextBox>
        </td>
     <td class="style21"></td>
     <td class="style1"></td>
    </tr>
    
    <tr>
     <td class="style5"></td>
     <td class="style9" bgcolor="#000099">
         <asp:Label ID="Label8" runat="server" Text="Date" ForeColor="White" 
             Font-Bold="True"></asp:Label>
        </td>
     <td class="style3" bgcolor="#000099">
         <asp:TextBox ID="txtdate" runat="server" Visible="False"></asp:TextBox>
         <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        </td>
     <td class="style21">
         <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        </td>
     <td class="style1">&nbsp;</td>
    </tr>
    
    <tr>
     <td class="style2">&nbsp;</td>
     <td class="style26" bgcolor="White">
         &nbsp;</td>
     <td class="style23" bgcolor="White">
         <asp:Button ID="Button1" runat="server" BackColor="Silver" Font-Bold="True" 
             Height="33px" Text="Upload" Width="111px" />
        </td>
     <td class="style21">&nbsp;</td>
     <td class="style2">&nbsp;</td>
    </tr>
    
    <tr>
     <td class="style2">&nbsp;</td>
     <td class="style26" bgcolor="White">
         &nbsp;</td>
     <td class="style23" bgcolor="White">
         &nbsp;</td>
     <td class="style21">&nbsp;</td>
     <td class="style2">&nbsp;</td>
    </tr>
     </table>
      <br />
      <asp:Panel ID="Panel1" runat="server">
          <table style="width: 530px">
          <tr>
          <td class="style27">
              <asp:Label ID="Label14" runat="server" Text="Enter Assignment Name"></asp:Label>
           </td>
          <td>
          
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          
          </td>
          </tr>
          </table>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="Remove Assignment" 
              Width="140px" />
          <br />
      </asp:Panel>
     </div> 
     </div>
    
    </form>
</body>
</html>
