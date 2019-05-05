Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class faculty
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")



    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfaclogin.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = " Insert into faculty(name,qualification,facultyid,mobileno,email,address,city,village,password)values('" + txtfacname.Text + "','" + txtqualification.Text + "'," + txtempid.Text + "," + txtfacmobileno.Text + ",'" + txtfacemail.Text + "','" + txtfacaddress.Text + "','" + txtfaccity.Text + "','" + txtfacvillage.Text + "','" + txtfacpassword.Text + "')"
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Label15.Text = " Registred Sucess"
            Response.Write("<script LANGUAGE='JavaScript'>alert('Registered successfully ..')</script>")
            Try
                Dim mm As MailMessage = New MailMessage("kesashtekar@gmail.com", txtfacemail.Text)
                mm.Subject = txtemfsub.Text
                mm.Body = txtfacultyembody.Text
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
            Catch ex As Exception
                Response.Write("<script LANGUAGE='JavaScript'>alert('email not sent ..')</script>")

            End Try
        Else
            Response.Write("not connected")
        End If
        Session("user") = txtempid.Text
        Response.Redirect("facultyebknotice.aspx")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub
End Class