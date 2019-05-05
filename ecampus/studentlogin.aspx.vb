Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO
Imports System.Net
Imports System.Net.Mail


Partial Class studentlogin
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")


    Protected Sub btnstudlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnstudlogin.Click


        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")

            If (txtstudpass.Text = txtstupass.Text) Then

                If FileUpload1.HasFile = True Then

                    Dim filename = FileUpload1.PostedFile.FileName

                    Dim fpath = Server.MapPath("upload/" + filename)
                    txtimage.Text = Convert.ToString(fpath)
                    FileUpload1.SaveAs(fpath)

                    imgph.ImageUrl = "upload/" + filename

                End If

                Dim query1 As String
                query1 = "insert into student (prnno,studname,phoneno,email,address,class,addmissionyear,dob,adharno,city,village,pincode,password,photo) values (" + txtprn.Text + " ,'" + txtnckstudname.Text + "'," + txtnckmobile.Text + ",'" + txtemail.Text + "','" + txtnckadd.Text + "','" + ddclass.Text + "','" + txtaddyear.Text + "','" + txtdob.Text + "'," + txtadhar.Text + ",'" + ddlcity.Text + "','" + txtvillage.Text + "'," + txtpincode.Text + ",'" + txtstupass.Text + "','" + txtimage.Text + "')"

                Dim cmd As New SqlCommand(query1, con)
                cmd.ExecuteNonQuery()

                con.Close()
                Label29.Text = " Registred Sucess"
                Response.Write("<script LANGUAGE='JavaScript'>alert('Registered Successfully ..')</script>")
                Try
                    Dim mm As MailMessage = New MailMessage("kesashtekar@gmail.com", txtemail.Text)
                    mm.Subject = txtemailsubject.Text
                    mm.Body = txtemailbody.Text
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
                Label29.Text = " password & retypt  password does not match"


            End If
        Else
            Response.Write("not connected")
        End If


    End Sub




           

      

        'Response.Redirect("ebooknotice.aspx")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

   
    Protected Sub txtdob_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtdob.TextChanged

    End Sub

    Protected Sub txtnckadd_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtnckadd.TextChanged

    End Sub

    Protected Sub txtadhar_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtadhar.TextChanged

    End Sub

    'Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
    'Calendar1.Visible = True
    'End Sub

    '    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged

    '        TextBox2.Text = Calendar1.SelectedDate.Date.ToString()
    '        txtdob.Text = Calendar1.SelectedDate.Date.ToString("MM/dd/yyyy")
    '        Calendar1.Visible = False
    '    End Sub
End Class
