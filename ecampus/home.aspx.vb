Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class home
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    

   




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub rdstudent_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdstudent.CheckedChanged
        rdfaculty.Checked = False
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
        End If
        If rdstudent.Checked = True Then

            Dim query1 As String
            query1 = "select password from student where prnno = " + txtusername.Text + ""

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                rd.Read()

                Dim s As String
                s = Convert.ToString(rd(0)).Trim()
                If txtpassword.Text.Trim() = s Then
                    Session("user") = txtusername.Text.Trim()
                    con.Close()
                    Response.Redirect("ebooknotice.aspx")
                Else

                    lblmsg.Text = "Password doesnot match"
                End If
            Else

                lblmsg.Text = "User Doesnt exist"

            End If
        ElseIf rdfaculty.Checked = True Then

            Dim query1 As String
            query1 = "select password from faculty where facultyid = " + txtusername.Text + ""

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                rd.Read()

                Dim s As String
                s = Convert.ToString(rd(0)).Trim()
                If txtpassword.Text.Trim() = s Then
                    Session("user") = txtusername.Text.Trim()
                    con.Close()
                    Response.Redirect("facultyebknotice.aspx")
                Else

                    lblmsg.Text = "Password doesnot match"
                End If
            Else

                lblmsg.Text = "User Doesnt exist"
            End If
        End If
    End Sub

    Protected Sub rdfaculty_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rdfaculty.CheckedChanged
        rdstudent.Checked = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If (rdstudent.Checked = True) Then
            Session("s") = 1
            Response.Redirect("passwordchange.aspx")
        End If
        If (rdfaculty.Checked = True) Then
            Session("s") = 2
            Response.Redirect("passwordchange.aspx")

        End If



    End Sub


    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button7.Click
        If (rdstudent.Checked = True) Then
            Session("s") = 1
            Response.Redirect("studentlogin.aspx")
        End If
        If (rdfaculty.Checked = True) Then
            Session("s") = 2
            Response.Redirect("faculty.aspx")

        End If
    End Sub

   

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        Response.Redirect("feedback.aspx")
    End Sub

End Class
