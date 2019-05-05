Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class facultyprofile
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = "select * from faculty where facultyid = " + txtfacid.Text + ""

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                rd.Read()
                txtupfacnm.Text = Convert.ToString(rd(0))
                txtupfacqua.Text = Convert.ToString(rd(1))
                txtfacid.Text = Convert.ToString(rd(2))
                txtupfacmbl.Text = Convert.ToString(rd(3))
                txtupfacemail.Text = Convert.ToString(rd(4))
                txtupfacadd.Text = Convert.ToString(rd(5))
                txtupfaccity.Text = Convert.ToString(rd(6))
                txtupfacvillage.Text = Convert.ToString(rd(7))
            Else
                TextBox1.Text = "no record found"
            End If
            con.Close()
        Else
            Response.Write("not connected")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()

        If Page.IsPostBack = False Then
            If con.State = Data.ConnectionState.Open Then
                Response.Write("connected")
                Dim query1 As String
                txtfacid.Text = Convert.ToString(Session("user"))
                query1 = "select * from faculty where facultyid = " + txtfacid.Text + ""

                Dim cmd As New SqlCommand(query1, con)
                Dim rd As SqlDataReader
                rd = cmd.ExecuteReader()
                If (rd.HasRows = True) Then
                    rd.Read()
                    txtupfacnm.Text = Convert.ToString(rd(0))
                    txtupfacqua.Text = Convert.ToString(rd(1))
                    txtfacid.Text = Convert.ToString(rd(2))
                    txtupfacmbl.Text = Convert.ToString(rd(3))
                    txtupfacemail.Text = Convert.ToString(rd(4))
                    txtupfacadd.Text = Convert.ToString(rd(5))
                    txtupfaccity.Text = Convert.ToString(rd(6))
                    txtupfacvillage.Text = Convert.ToString(rd(7))

                    txtupfacnm.Enabled = False
                    txtupfacadd.Enabled = False
                    txtupfaccity.Enabled = False
                    txtupfacmbl.Enabled = False
                    txtupfacemail.Enabled = False
                    txtupfacvillage.Enabled = False
                    txtfacid.Enabled = False
                    txtupfacqua.Enabled = False

                Else
                    TextBox1.Text = "no record found"
                End If
                con.Close()
            Else
                Response.Write("not connected")
            End If

        End If
    End Sub

    Protected Sub txtupfaccity_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtupfaccity.TextChanged

    End Sub

    Protected Sub btnfacupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnfacupdate.Click

        If btnfacupdate.Text = "Update" Then
            txtupfacnm.Enabled = True
            txtupfacqua.Enabled = True
            txtupfacmbl.Enabled = True
            txtupfacadd.Enabled = True
            txtupfacemail.Enabled = True
            txtupfaccity.Enabled = True
            txtupfacvillage.Enabled = True
            btnfacupdate.Text = "Save"
        Else
            con.Close()
            con.Open()
            If con.State = Data.ConnectionState.Open Then
                Response.Write("connected")
                Dim query1 As String
                query1 = "update faculty set name = '" + txtupfacnm.Text + "',qualification='" + txtupfacqua.Text + "',mobileno=" + txtupfacmbl.Text + ",email='" + txtupfacemail.Text + "',address='" + txtupfacadd.Text + "',city='" + txtupfaccity.Text + "',village='" + txtupfacvillage.Text + "' where facultyid=" + txtfacid.Text + ""
                Dim cmd As New SqlCommand(query1, con)
                cmd.ExecuteNonQuery()
                con.Close()

                txtupfacnm.Enabled = False
                txtupfacadd.Enabled = False
                txtupfaccity.Enabled = False
                txtupfacmbl.Enabled = False
                txtupfacemail.Enabled = False
                txtupfacvillage.Enabled = False
                txtupfacqua.Enabled = False
                btnfacupdate.Text = "SAVE"

            Else
                Response.Write("not connected")
            End If
            Response.Write("<script LANGUAGE='JavaScript'>alert('Updated Successfully')</script>")
        End If

    End Sub

    Protected Sub txtupfacmbl_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtupfacmbl.TextChanged

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("facultyebknotice.aspx")
    End Sub
End Class
