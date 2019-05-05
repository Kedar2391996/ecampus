Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class subjectdetails
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        con.Open()
        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = "insert into subjecttable(subjectname,subjectcode,class,facultyid)values('" + txtsubjectnm.Text + "'," + txtsubcode.Text + "," + txtclass.Text + "," + txtfacultyid.Text + ")"
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()

            con.Close()
        End If
    End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button5.Click
        Session.Clear()
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbkupload.Click
        con.Close()
        con.Open()
        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            If fluploadebkpdf.HasFile = True Then

                Dim filename = fluploadebkpdf.PostedFile.FileName

                Dim fpath = Server.MapPath("upload/" + filename)
                txtbkpdf.Text = "upload/" + filename
                fluploadebkpdf.SaveAs(fpath)
            End If
            If flupbkimg.HasFile = True Then

                Dim filename = flupbkimg.PostedFile.FileName

                Dim fpath = Server.MapPath("upload/" + filename)
                txtbkimg.Text = "upload/" + filename
                flupbkimg.SaveAs(fpath)
            End If

            Dim query1 As String
            query1 = "insert into book(bookid,booknm,bookphoto,bookpdf)values(" + txtbkid.Text + ",'" + txtbknm.Text + "','" + txtbkimg.Text + "','" + txtbkpdf.Text + "')"
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()
            con.Close()
        End If
    End Sub

    Protected Sub btnnoticeupload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnnoticeupload.Click
        con.Open()
        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            If fileupnotice.HasFile = True Then

                Dim filename = fileupnotice.PostedFile.FileName

                Dim fpath = Server.MapPath("upload/" + filename)
                txtnoticeimg.Text = "upload/" + filename
                fileupnotice.SaveAs(fpath)
            End If
            Dim query1 As String
            query1 = "insert into notice(noticephoto,date,type)values('" + txtnoticeimg.Text + "','" + txtnoticedate.Text + "','" + ddltype.Text + "')"
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Write("<script LANGUAGE='JavaScript'>alert('Notice uploaded successfully ..')</script>")
        End If
    End Sub

    Protected Sub Button6_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click
        con.Open()

        Dim query1 As String
        query1 = "delete from notice  where type ='" + DropDownList1.Text + "' "

        Dim cmd As New SqlCommand(query1, con)
        Dim k = cmd.ExecuteNonQuery()

        con.Close()
        Response.Write("<script LANGUAGE='JavaScript'>alert('Notice removed successfully ..')</script>")

    End Sub
End Class
