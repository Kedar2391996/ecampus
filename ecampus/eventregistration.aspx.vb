Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class eventregistration
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")
    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click


        Dim k As Integer
        Dim a As String
        Dim b As String
        Dim c As String


        k = Convert.ToInt16(Session("c"))
        If (k = 3) Then
            Response.Write("<script LANGUAGE='JavaScript'>alert('Please choose only two')</script>")
        Else
            If (CheckBox1.Checked = True) Then

                a = Convert.ToString(CheckBox1.Text)
            End If
            If (CheckBox2.Checked = True) Then

                b = Convert.ToString(CheckBox2.Text)
            End If
            If (CheckBox3.Checked = True) Then

                c = Convert.ToString(CheckBox3.Text)
            End If
            If (a = "") Then

                TextBox2.Text = b
                TextBox3.Text = c

            End If
            If (b = "") Then

                TextBox2.Text = a
                TextBox3.Text = c

            End If
            If (c = "") Then

                TextBox2.Text = a
                TextBox3.Text = b

            End If

            



        con.Open()
        Dim query1 As String
            query1 = "insert into sturegistration (studentname,collegename,class,mobilenumber,emailaddress,activity1,activity2,bankname,cardtype,expirydate,cardholdername,cardnumber,cvvnumber,transactionid,transactiondate,amount) values ('" + txtstudnm.Text + "','" + txtcollnm.Text + "'," + DropDownList2.Text + "," + txtmbno.Text + ",'" + txtemadd.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "', '" + txtcard.Text + "','" + txtexpirydate.Text + "','" + txtcardholdernm.Text + "'," + txtcardno.Text + "," + txtcvvno.Text + "," + txttransacid.Text + ",'" + txttrandate.Text + "'," + txtamt.Text + ")"
        Dim cmd As New SqlCommand(query1, con)
        cmd.ExecuteNonQuery()
            con.Close()
            Session("td") = txttransacid.Text
            btnreceip.Visible = True
        End If
        Response.Write("<script LANGUAGE='JavaScript'>alert('Registered Successfully ..')</script>")
        con.Close()


        Try

            Dim mm As MailMessage = New MailMessage("kesashtekar@gmail.com", txtemadd.Text)
            mm.Subject = txtemsub.Text
            mm.Subject = txtembody.Text
            mm.IsBodyHtml = False
            Dim smtp As SmtpClient = New SmtpClient
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.EnableSsl = True
            Dim nc As NetworkCredential = New NetworkCredential("kesashtekar@gmail.com", "kesashtekar231996")
            smtp.UseDefaultCredentials = False
            smtp.Credentials = nc
            smtp.Send(mm)
            ClientScript.RegisterStartupScript(Me.GetType, "alert('email sent');", True)
            Response.Write("<script LANGUAGE='JavaScript'>alert('email  sent ..')</script>")
        Catch ex As Exception
            Response.Write("<script LANGUAGE='JavaScript'>alert('email not sent ..')</script>")

        End Try

    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Calendar1.Visible = False
        If IsPostBack = False Then
            Session("c") = 0
        End If
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = "select  isNull(max(transactionid),0) from sturegistration"

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                rd.Read()
                Dim m As Integer
                m = Convert.ToInt16(rd(0))
                m = m + 1
                txttransacid.Text = Convert.ToString(m)
                txttrandate.Text = Convert.ToString(Date.Now.ToString("MM/dd/yy"))


            End If
        End If
        con.Close()

    End Sub

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox2.CheckedChanged
        Session("c") = Convert.ToInt16(Session("c")) + 1
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        Session("c") = Convert.ToInt16(Session("c")) + 1
    End Sub

    Protected Sub CheckBox3_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox3.CheckedChanged
        Session("c") = Convert.ToInt16(Session("c")) + 1
    End Sub

    Protected Sub rddc_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rddc.CheckedChanged
        If (rddc.Checked = True) Then
            rdcd.Checked = False
            txtcard.Text = "D"
        End If
    End Sub

    Protected Sub rdcd_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdcd.CheckedChanged
        If (rdcd.Checked = True) Then

            txtcard.Text = "C"
            rddc.Checked = False
        End If
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox2.TextChanged

    End Sub

    Protected Sub txtcard_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtcard.TextChanged

    End Sub

    Protected Sub txtemsub_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtembody.TextChanged

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

    Protected Sub TextBox3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox3.TextChanged

    End Sub

    Protected Sub btnreceip_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreceip.Click
        Response.Redirect("eventreceipt.aspx")

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox2.Text = Calendar1.SelectedDate.Date.ToString()
        txtexpirydate.Text = Calendar1.SelectedDate.Date.ToString("MM/dd/yyyy")
        Calendar1.Visible = False
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Calendar1.Visible = True
    End Sub
End Class
