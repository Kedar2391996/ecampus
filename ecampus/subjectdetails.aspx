<%@ Page Language="VB" AutoEventWireup="false" CodeFile="subjectdetails.aspx.vb" Inherits="subjectdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <link href="column.css" rel="stylesheet" type="text/css" />
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
            width: 117px;
        }
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 122px;
        }
        .style4
        {
            width: 411px;
        }
        .style5
        {
            width: 410px;
        }
        .style6
        {
            width: 171px;
        }
        .style7
        {
            width: 492px;
        }
        .style8
        {
            width: 227px;
        }
        .style9
        {
            width: 162px;
        }
    </style>
    <link href="menu.css" rel="stylesheet" type="text/css" />
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

  <table>
  <tr>
  <td class="style1">
  
  
  
      &nbsp;</td>
  
   <td class="style2">
  
  
  
<div class="dropdown">
 <button class="dropbtn">Report</button>
  <div class="dropdown-content">
    <a href="assignmentdetails.aspx">Assignment Details</a>
    <a href="noticedetails.aspx">Notices Details</a>
    <a href="eventtotal.aspx">Event Details</a>
     <a href="facultydetails.aspx">Faculty Details</a>
      <a href="rptviewstudent2.aspx">Student Details</a>
  </div>
</div>

      </td>
  <td class="style3">
  
  
  
      <asp:Button ID="Button5" runat="server" Text="Logout" Width="114px" 
          BackColor="#000099" Font-Bold="True" ForeColor="White" Height="46px" />
  
  
  
      </td>
  </tr>
   </table>
<div>
  <table>
  <tr>
  <td></td>
  <td class="style7" colspan="2">
      <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Subject Details"></asp:Label>
      </td>
  <td class="style4"></td>
  </tr>
  <tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5"></td>
  <td class="style4"></td>
  </tr>
  <tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5">
      <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Subject Name"></asp:Label>
      </td>
  <td class="style4">
      <asp:TextBox ID="txtsubjectnm"  runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5">
      <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Subject Code"></asp:Label>
      </td>
  <td class="style4">
      <asp:TextBox ID="txtsubcode"  runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5">
      <asp:Label ID="Label19" runat="server" Font-Bold="True" Text="Class"></asp:Label>
      </td>
  <td class="style4">
      <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
      </td>
  </tr>
  <tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5">
      <asp:Label ID="Label20" runat="server" Font-Bold="True" Text="Faculty Id"></asp:Label>
      </td>
  <td class="style4">
      <asp:TextBox ID="txtfacultyid" onkeypress="javascript:return isNumber(event)" runat="server"></asp:TextBox>
      </td>
  </tr><tr>
  <td></td>
  <td class="style7"></td>
  <td class="style5">
      <asp:Button ID="Button4" runat="server" Text="submit" />
          </td>
  <td class="style4"></td>
  </tr>
  </table>
  </div>
  <div>
  <h1>UPLOAD EBOOK</h1>
  <table style="width: 880px; height: 189px">
  <tr>
  <td class="style6"></td>
   <td></td>
   <td></td>
   <td></td>
  </tr>
   <tr>
  <td class="style6"></td>
   <td></td>
   <td></td>
   <td></td>
  </tr>
   <tr>
  <td class="style6">
      <asp:Label ID="Label21" runat="server" Font-Bold="True" Text="Book Id"></asp:Label>
       </td>
   <td>
       <asp:TextBox ID="txtbkid"  onkeypress="javascript:return isNumber(event)" runat="server"></asp:TextBox>
       </td>
   <td></td>
   <td></td>
  </tr>
   <tr>
  <td class="style6">
      <asp:Label ID="Label22" runat="server" Font-Bold="True" Text="Book Name"></asp:Label>
       </td>
   <td>
       <asp:TextBox ID="txtbknm" onkeypress="javascript:return ischar(event)" runat="server"></asp:TextBox>
       </td>
   <td></td>
   <td></td>
  </tr>
   <tr>
  <td class="style6">
      <asp:Label ID="Label23" runat="server" Font-Bold="True" Text="Book Image"></asp:Label>
       </td>
   <td>
       <asp:TextBox ID="txtbkimg" runat="server"></asp:TextBox>
       </td>
   <td>
       <asp:FileUpload ID="flupbkimg" runat="server" />
       </td>
   <td></td>
  </tr>
   <tr>
  <td class="style6">
      <asp:Label ID="Label24" runat="server" Font-Bold="True" Text="Book Pdf"></asp:Label>
       </td>
   <td>
       <asp:TextBox ID="txtbkpdf" runat="server"></asp:TextBox>
       </td>
   <td>
       <asp:FileUpload ID="fluploadebkpdf" runat="server" />
       </td>
   <td></td>
  </tr>
   <tr>
  <td class="style6"></td>
   <td>
       <asp:Button ID="btnbkupload" runat="server" Font-Bold="True" Text="Upload" 
           Width="120px" />
       </td>
   <td></td>
   <td></td>
  </tr>
  </table>
  </div>
  <div style="height: 279px">
  <h1>UPLOAD NOTICE</h1>
  <table style="height: 254px; width: 769px">
  <tr>
  <td class="style8"></td>
  <td class="style9"></td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8"></td>
  <td class="style9"></td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="Notice Image"></asp:Label>
       </td>
  <td class="style9">
      <asp:TextBox ID="txtnoticeimg" runat="server"></asp:TextBox>
       </td>
  <td>
      <asp:FileUpload ID="fileupnotice" runat="server" />
       </td>
  <td></td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Label ID="Label26" runat="server" Font-Bold="True" Text="Date"></asp:Label>
       </td>
  <td class="style9">
      <asp:TextBox ID="txtnoticedate" runat="server"></asp:TextBox>
       </td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Label ID="Label27" runat="server" Font-Bold="True" Text="For"></asp:Label>
       </td>
  <td class="style9">
      <asp:DropDownList ID="ddltype" runat="server">
          <asp:ListItem>FACULTY</asp:ListItem>
          <asp:ListItem>STUDENT</asp:ListItem>
      </asp:DropDownList>
       </td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8"></td>
  <td class="style9">
      <asp:Button ID="btnnoticeupload" runat="server" Font-Bold="True" Text="Upload" 
          Width="124px" />
       </td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Label ID="Label28" runat="server" Font-Bold="True" Text="Remove Notice"></asp:Label>
       </td>
  <td class="style9"></td>
  <td></td>
  <td></td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Label ID="Label29" runat="server" Text="Notice Type"></asp:Label>
       </td>
  <td class="style9">
      <asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>faculty</asp:ListItem>
          <asp:ListItem>student</asp:ListItem>
      </asp:DropDownList>
       </td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
   <tr>
  <td class="style8">
      <asp:Button ID="Button6" runat="server" Text="Remove Notice" Width="168px" />
       </td>
  <td class="style9">&nbsp;</td>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
  </tr>
  </table>
  </div>
    </form>
</body>
</html>
