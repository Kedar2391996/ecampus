Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class feedback
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    Protected Sub btnfeedback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfeedback.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = "insert into studentfeedbacktable (studentname,collegename,city,phoneno,email,feedback)values('" + txtstudnm.Text + "','" + txtcollegenm.Text + "','" + txtcity.Text + "'," + txtmobileno.Text + ",'" + txtemadd.Text + "','" + txtfeedback.Text + "')"

            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()

            con.Close()
            Label16.Text = " Registred Sucess"
            Dim mm As MailMessage = New MailMessage("kesashtekar@gmail.com", txtemadd.Text)
            mm.Subject = txtemsub.Text
            mm.Body = txtemfbody.Text
            mm.IsBodyHtml = False
            Dim smtp As SmtpClient = New SmtpClient
            smtp.Host = "smtp.gmail.com"
            smtp.Port = 587
            smtp.EnableSsl = True
            Dim nc As NetworkCredential = New NetworkCredential("kesashtekar@gmail.com", "kesashtekar231996")
            smtp.UseDefaultCredentials = False
            smtp.Credentials = nc
            smtp.Send(mm)


        Else
            Response.Write("not connected")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
