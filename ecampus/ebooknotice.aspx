<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ebooknotice.aspx.vb" Inherits="ebooknotice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="layout.css" rel="stylesheet" type="text/css" />
    <link href="column.css" rel="stylesheet" type="text/css" />
     <title></title>
    <style type="text/css">
        .style1
        {
            height: 143px;
        }
        .style2
        {
            height: 77px;
        }
        .style3
        {
            width: 121px;
        }
        .style5
        {
            width: 129px;
        }
        .style6
        {
            height: 77px;
        }
        .style7
        {
            width: 256px;
        }
        .style11
        {
            width: 145px;
            height: 143px;
        }
        .style12
        {
            height: 143px;
        }
        .style14
        {
            width: 165px;
        }
        .style15
        {
            width: 196px;
        }
        .style16
        {
            width: 37px;
        }
        .style17
        {
            width: 174px;
        }
        .style18
        {
            width: 123px;
        }
        .style19
        {
            width: 112px;
        }
        .style20
        {
            width: 122px;
        }
        .style21
        {
            width: 97px;
        }
        .style22
        {
            width: 137px;
        }
        .style23
        {
            width: 128px;
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
    <td class="style5">
    
    
        <asp:Button ID="Button2" runat="server" BackColor="#000099" Font-Bold="True" 
            ForeColor="White" Text="LOGOUT" Width="118px" />
    
    
    </td>
     </tr>
     </table>  
  </div>
<div>

<table style="width: 899px; height: 105px">
<tr>
<td class="style2">

<marquee>

    <asp:Label ID="Label15" runat="server" Text="Label">                        </asp:Label>
         


    <asp:Label ID="Label16" runat="server" Text="Label">                    </asp:Label>
    
    
        <asp:Label ID="Label21" runat="server" Text="Label">             </asp:Label>
    </marquee>
    

</td>

    <td>
    
    
    </td>
    <td>
    
    
    
    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />
    
    
    
    </td>
    </tr> 
    
</table>
</div>
    <div>
    <h1>ASSIGNMENTS</h1> 
<table style="height: 173px; width: 907px">
<tr><td class="style14">
    &nbsp;</td><td class="style15">
        &nbsp;</td><td></td><td></td><td></td><td class="style16"></td></tr>
<tr><td class="style14">
    &nbsp;</td><td class="style15">
        &nbsp;</td><td>&nbsp;</td><td colspan="2" rowspan="3">
    &nbsp;</td><td class="style16"></td></tr><tr><td class="style14">
    &nbsp;</td><td class="style15">
        &nbsp;</td><td></td><td class="style16"></td></tr><tr><td class="style14">
    &nbsp;</td><td class="style15">
        &nbsp;</td><td></td><td class="style16"></td></tr><tr><td class="style14"></td>
    <td class="style15">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="subjectcode" HeaderText="subjectcode" 
                    SortExpression="subjectcode" />
                <asp:BoundField DataField="assignmentname" HeaderText="assignmentname" 
                    SortExpression="assignmentname" />
                <asp:BoundField DataField="subjectname" HeaderText="subjectname" 
                    SortExpression="subjectname" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("upload") %>'>view</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ecampussConnectionString %>" 
            SelectCommand="SELECT [class], [subjectcode], [upload], [assignmentname], [subjectname], [date] FROM [assignmentuploadtable]">
        </asp:SqlDataSource>
    </td><td></td><td></td><td></td><td class="style16"></td></tr>
</table>




</div>
<div>
<h1>NOTICES</h1>

<table style="width: 1083px; height: 167px">
<tr>
 <td class="style11">
 
 
     &nbsp;</td>
 <td class="style1">
 
 
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
         DataSourceID="SqlDataSource2">
         <Columns>
             <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
             <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
             <asp:TemplateField>
                 <ItemTemplate>
                     <asp:HyperLink ID="HyperLink3" runat="server" 
                         NavigateUrl='<%# Eval("noticephoto") %>'>View</asp:HyperLink>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <EmptyDataTemplate>
             <asp:HyperLink ID="HyperLink2" runat="server" 
                 NavigateUrl='<%# Eval("noticephoto") %>'>HyperLink</asp:HyperLink>
         </EmptyDataTemplate>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ecampussConnectionString %>" 
         SelectCommand="SELECT * FROM [notice] WHERE ([type] = @type)">
         <SelectParameters>
             <asp:Parameter DefaultValue="STUDENT" Name="type" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
    </td>

 <td class="style12">
 
 
 </td>

 
 </tr>
</table> 
</div>
<div>
<h1>EBOOKS</h1>
<table style="height: 53px; width: 1076px;">
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
     <td>
    
    
    
    
    
    </td>
     <td>
    
    
    
    
    
    </td>
     <td>
    
    
    
    
    
    </td>
     <td>
    
    
    
    
    
    </td>







</tr>








</table>

</div>
</form>
</body>
</html>
