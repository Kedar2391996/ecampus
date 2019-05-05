<%@ Page Language="VB" AutoEventWireup="false" CodeFile="facultyebknotice.aspx.vb" Inherits="facultyebknotice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="column.css" rel="stylesheet" type="text/css" />
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            width: 128px;
        }
        .style5
        {
            width: 11px;
        }
        .style6
        {
            width: 452px;
        }
        .style7
        {
            width: 450px;
        }
        .style8
        {
            width: 254px;
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
    <td class="style3">
    
    
    
    
        <asp:Button ID="Button1" runat="server" BackColor="#000099" Font-Bold="True" 
            ForeColor="White" Text="UPDATE PROFILE" Width="122px" />
    
    
    
    
    </td>
    <td>
    
    
    
    
    
        <asp:Button ID="Button3" runat="server" BackColor="#000099" Font-Bold="True" 
            ForeColor="White" Text="Upload Assignment" Width="145px" />
    
    
    
    
    
    </td>
    <td class="style5">
    
    
        <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Bold="True" 
            ForeColor="White" Text="LOGOUT" Width="118px" />
    
    
    </td>
     </tr>
     </table>  
</div>
<table>
<tr>
<td class="style8">






    <asp:Label ID="lblfacnm" runat="server" Text="Label"></asp:Label>






</td>
<td class="style7">





    <asp:Label ID="lblfacid" runat="server" Text="Label"></asp:Label>





</td>
<td class="style6">







</td>






</tr>
</table>
<div>
  <h2>E-BOOKS</h2>
  <table style="width: 899px; height: 167px">
<tr>
 <td class="style17">






    <asp:ImageButton ID="ImageButton1" runat="server" Height="208px" 
        ImageUrl="~/booksimages/java 2.jpg" Width="171px" />
    </td>
    <td class="style18">
    
    
    
    
    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="182px" 
            ImageUrl="~/booksimages/ADO.net book.jpg" Width="119px" />
    
    
    
    
    
    </td>
     <td class="style19">
    
    
    
    
    
         <asp:ImageButton ID="ImageButton3" runat="server" Height="183px" 
             ImageUrl="~/booksimages/HTML.jpg" Width="106px" />
    
    
    
    
    
    </td>
     <td class="style20">
    
    
    
    
    
         <asp:ImageButton ID="ImageButton4" runat="server" Height="187px" 
             ImageUrl="~/booksimages/mcroprocessor 8085.jpg" Width="118px" />
    
    
    
    
    
    </td>
     <td class="style21">
    
    
    
    
    
         <asp:ImageButton ID="ImageButton5" runat="server" Height="175px" 
             ImageUrl="~/booksimages/microcontroller 8051.jpg" Width="113px" />
    
    
    
    
    
    </td>
     <td class="style22">
    
    
    
    
    
         <asp:ImageButton ID="ImageButton6" runat="server" Height="179px" 
             ImageUrl="~/booksimages/object oriented programming.jpg" Width="129px" />
    
    
    
    
    
    </td>
     <td class="style23">
    
    
    
    
    
         <asp:ImageButton ID="ImageButton7" runat="server" Height="179px" 
             ImageUrl="~/booksimages/osbookimage.jpg" Width="114px" />
    
    
    
    
    
    </td>
     <td>
    
    
    
    
    
         <asp:ImageButton ID="ImageButton8" runat="server" Height="182px" 
             ImageUrl="~/booksimages/vb.net book.jpg" Width="94px" />
    
    
    
    
    
    </td>
 
 </tr>
</table>
</div>

<div>
  <h2>NOTICES</h2
  <p>  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="noticephoto" HeaderText="noticephoto" 
                SortExpression="noticephoto" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("noticephoto") %>'>View</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ecampussConnectionString %>" 
        SelectCommand="SELECT [noticephoto], [date], [type] FROM [notice] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="faculty" Name="type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</div>
    </form>
</body>
</html>
