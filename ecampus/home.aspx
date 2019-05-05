<%@ Page Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
        .style3
        {
        }
        .style5
        {
        }
        .style15
        {
            width: 169px;
            height: 38px;
        }
        .style16
        {
            width: 168px;
        }
        .style19
        {
        }
        .style23
        {
            width: 823px;
        }
        .style26
        {
        }
        .container
        {
            height: 355px;
            width: 316px;
        }
        .style29
        {
            width: 1109px;
            height: 14px;
        }
        .style30
        {
            height: 14px;
        }
        .st
        {
        	 margin-top: 600px;
        	 margin-left:500px;
        	 border-color :Blue;
        	 border-style:double;
        	 
        }
        .pp
        {
        
             	 margin-top: 500px;
        	 margin-left:500px;
        }
       
        .style31
        {
            width: 195px;
            height: 14px;
        }
       
    </style>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <link href="imagehover.css" rel="stylesheet" type="text/css" />
</head>
<body style="height: 1312px; width: 1116px;">
    <form id="form1" runat="server">
   <table>
   <tr>
   <td align="center" class="style31">


       <asp:Image ID="Image2" runat="server" style="margin-left: 0px" Width="144px" 
            Height="102px" ImageAlign="Left" ImageUrl="~/image/L_36290.gif" />&nbsp;</td>
   <td align="center" class="style29">


       <asp:Label ID="Label4" runat="server" Text="The New College,Kolhapur" 
           Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
       <br />
       <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="Department Of Bachelor Of Computer Science"></asp:Label>
       <br />
       <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
           ForeColor="#000099" Text="E-Campus"></asp:Label>
           </td>
</tr>
</table>
<table>
<tr>
<td>
 <div class="dropdown">
  <button class="dropbtn">Facilities</button>
   <div class="dropdown-content">
    <a href="ncc.aspx">NCC</a>
    <a href="nss.aspx">NSS</a>
     <a href="hcc.aspx">Hostel And Conference Hall</a>
  </div>
  </div> 
  </td>
       <td>
          <div class="dropdown">
  <button class="dropbtn">About Us</button>
  <div class="dropdown-content">
    <a href="aboutcollege.aspx">About College</a>
    <a href="aboutbcs.aspx">About BCS</a>
    <a href="addmissiontobcs.aspx">Admissions To BCS</a>
  </div>
</div>
</td>
  <td> 
    <div class="dropdown">
  <button class="dropbtn">Activities</button>
  <div class="dropdown-content">
    <a href="eal.aspx">Earn And Learn Schme</a>
    <a href="compexcen.aspx">Competative Exam Centre</a>
    <a href="placement.aspx">Placement Cell</a>
  </div>
</div>
 </td>
    <td>


    <asp:Button ID="Button6" runat="server" BackColor="#000099" Font-Bold="True" 
        ForeColor="White" Text="FEEDBACK" Width="177px" Height="52px" />
        

    </td>
    <td bgcolor="#000099" ></td>
   

</tr>
</table>





<table style="width: 1109px; height: 240px">
<tr>
<td class="style23">




  <h2 align="left" style="width: 1107px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Principal Desk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label7" runat="server" BackColor="#000099" Font-Bold="True" 
          ForeColor="White" Text="User Login"></asp:Label>
    </h2>
  <table style="height: 152px; width: 1113px">
   <tr>
  <td class="style5" rowspan="6" align="center">
  <marque>&nbsp;</marque><p style="height: 71px">
   Dear Students

  As we step into this new academic year, filled with hope and dreams of scaling new heights,
    I wish to reiterate the importance of few things that we have to keep in mind.
  Parents should remember that children should not be forced, but should be guided Be very serious and attentive in class.
  Hard work, dedication and perseverance are the most important traits in a person that lead to success.
 
Wishing you all Good Luck .

With Prayers,
Principal 
  </p>
       </td>
  <td class="style3" bgcolor="#000099" colspan="2">
        <asp:RadioButton ID="rdstudent" runat="server" Text="Student" 
            BackColor="#000099" ForeColor="White" Font-Bold="True" 
            AutoPostBack="True" />
        &nbsp;<asp:RadioButton ID="rdfaculty" runat="server" Text="Faculty" 
            BackColor="#000099" ForeColor="White" Font-Bold="True" 
            AutoPostBack="True" />
          </td>
</tr>
 <tr>
  <td class="style19" bgcolor="#000099">
        <asp:Label ID="Label2" runat="server" Text="Enter ID Number" BackColor="#000099" 
            BorderColor="#333300" BorderStyle="None" ForeColor="White" 
            Font-Bold="True"></asp:Label>
        </td>
<td>
        <asp:TextBox ID="txtusername" runat="server" Rows="10"></asp:TextBox>
        </td>
</tr>
 <tr>
  <td class="style30" bgcolor="#000099">
        <asp:Label ID="Label3" runat="server" Text="Password" BackColor="#000099" 
            ForeColor="White" Font-Bold="True"></asp:Label>
          </td>
<td class="style30">
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Rows="10"></asp:TextBox>
          </td>
</tr>
 <tr>
  <td class="style15">
      <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
     </td>
     <td class="style16">
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#CCCCCC" 
            ForeColor="Black" Font-Bold="True" Height="37px" Width="149px" />
          </td>
</tr>
 <tr>
  <td class="style19">
        <asp:Button ID="Button2" runat="server" Font-Bold="True" 
            Text="Forgot Password /" Height="36px" />
          </td>
<td>
        <asp:Button ID="Button7" runat="server" Text="New Registration" Width="153px" 
            Font-Bold="True" Height="38px" />
          </td>
</tr>
 <tr>
  <td class="style19" colspan="2">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            NavigateUrl="~/adminlogin.aspx">Admin Login</asp:HyperLink>
          </td>
</tr>
</table>






</td>
<td>



</td>

</tr>
</table>







    <h2 style="height: 36px; margin-top: 80px;">UPCOMING EVENTS</h2>
<table align="center" style="width: 1106px; height: 419px">
    <tr>
    <td class="style68" height="6">
   <div class="container" align="center">
  &nbsp;<img src="image1/newhorizon.jpg" alt="" style="height: 340px" /><p class="title">NEW HORIZON</p>
  <div class="overlay"></div>
 <div class ="button "> <a href="eventregistration.aspx"> APPLY NOW </a></div>
</div>
</div>
  </td>
  <td>
 <%--<div class ="st">
 <video width="300" height="240" controls >
   <source src="key.mp4" type="vidro/mp4"></source>
  
   </video>
  
 
  </td>
 --%> </tr>    
    </table>
   
    

<h1>LOCATE US AT</h1>
<table style="height: 230px; width: 900px">
<tr>
<td align="left" class="style26">







<p>
ADDRESS:A WARD SHIVAJI PETH,KOLHAPUR<br />
PHONE NO:0231-2549890<br />




</p>






    </td>









    <td>
   
   
   
   
   
   
      
   
   
   
   
   
   
    </td>









</tr>
</table>
    
 </form>
</body>



</html>
