Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.IO

Partial Class assignmentupload
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")

            If FileUpload1.HasFile = True Then

                Dim filename = FileUpload1.PostedFile.FileName

                Dim fpath = Server.MapPath("upload/" + filename)
                txtassimage.Text = "upload/" + filename
                FileUpload1.SaveAs(fpath)

                'Image3.ImageUrl = "upload/" + filename



            End If



            Dim query1 As String
            query1 = "insert into assignmentuploadtable(facultyid,class,subjectcode,upload,assignmentname,date)values(" + txtfacid.Text + "," + DropDownList1.Text + "," + ddsubcode.Text + ",'" + txtassimage.Text + "','" + txtassignmentnm.Text + "','" + txtdate.Text + "')"
            Dim cmd As New SqlCommand(query1, con)
            cmd.ExecuteNonQuery()

            con.Close()
        End If
        Response.Write("<script LANGUAGE='JavaScript'>alert('Assignment uploaded successfully ..')</script>")
    End Sub

    Protected Sub txtdate_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtdate.TextChanged

    End Sub

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtfacid.Text = Convert.ToInt16(Session("user"))
        txtdate.Text = Date.Today.ToString("MM/dd/yyyy")
        TextBox1.Text = Date.Today.ToString("dd/MM/yyyy")
        ' txtfacid.Text = 
        If IsPostBack = False Then


            con.Open()
            DropDownList1.Items.Clear()
            Dim query1 As String
            query1 = "select distinct class from subjecttable where facultyid=" + txtfacid.Text + ""

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                While (rd.Read())

                    DropDownList1.Items.Add(Convert.ToString(rd(0)))


                End While
            End If
            con.Close()
        End If


        ''    End While

        ''    con.Close()
        'con.Open()
        'ddsubcode.Items.Clear()
        'Dim query1 As String
        'query1 = "select subjectcode from subjecttable where subjectcode=" + ddsubcode.Text + ""

        'Dim cmd As New SqlCommand(query1, con)
        'Dim rd As SqlDataReader
        'rd = cmd.ExecuteReader()
        'If (rd.HasRows = True) Then
        '    rd.Read()
        '    txtsubjectnm.Text = Convert.ToString(rd(0))
        'End If

    End Sub

    Protected Sub ddsubcode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddsubcode.SelectedIndexChanged
        con.Open()
        'subcode.Items.Clear()
        Dim query1 As String
        query1 = "select subjectname from subjecttable where subjectcode=" + ddsubcode.Text + ""

        Dim cmd As New SqlCommand(query1, con)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader()
        If (rd.HasRows = True) Then
            rd.Read()
            txtsubjectnm.Text = Convert.ToString(rd(0))
        End If
        con.Close()
    End Sub

    Protected Sub txtfacid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtfacid.TextChanged

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        con.Open()
        ddsubcode.Items.Clear()
        Dim query1 As String
        query1 = "select subjectcode from subjecttable where facultyid=" + txtfacid.Text + " and class= " + DropDownList1.Text + ""

        Dim cmd As New SqlCommand(query1, con)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader()
        While (rd.Read())

            ddsubcode.Items.Add(Convert.ToString(rd(0)))


        End While

        con.Close()
    End Sub

    
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()

        Dim query1 As String
        query1 = "delete from assignmentuploadtable  where assignmentname ='" + TextBox2.Text + "'"

        Dim cmd As New SqlCommand(query1, con)
        Dim k = cmd.ExecuteNonQuery()

        con.Close()
        Response.Write("<script LANGUAGE='JavaScript'>alert('Assignment removed successfully ..')</script>")
        TextBox2.Text = ""
    End Sub
End Class
