Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class passwordchange
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim s As Integer
        s = Convert.ToInt16(Session("s"))
        If (s = 1) Then


            con.Open()
            Dim query1 As String
            query1 = "update student set password='" + txtnewpassword.Text + "' where prnno=" + txtuserid.Text.Trim() + ""
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Write("<script LANGUAGE='JavaScript'>alert('password changed successfully ..')</script>")
        End If

        If (s = 2) Then


            con.Open()
            Dim query1 As String
            query1 = "update faculty set password='" + txtnewpassword.Text + "' where facultyid=" + txtuserid.Text.Trim() + ""
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Write("<script LANGUAGE='JavaScript'>alert('password changed successfully ..')</script>")

        End If

        'Response.Redirect("Studentprofile.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim s As Integer
        s = Convert.ToInt16(Session("s"))

    End Sub
End Class
