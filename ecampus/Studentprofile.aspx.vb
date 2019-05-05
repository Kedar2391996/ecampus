Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class Studentprofile
    Inherits System.Web.UI.Page

    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsupdate.Click



        If btnsupdate.Text = "Update" Then
            txtupstudnm.Enabled = True
            txtupstudmbl.Enabled = True
            txtupstudemail.Enabled = True
            txtupstudadd.Enabled = True
            txtupstudcity.Enabled = True
            txtupstudvillage.Enabled = True
            txtclass.Enabled = True
            btnsupdate.Text = "Save"
        Else
            con.Open()
            If con.State = Data.ConnectionState.Open Then
                Response.Write("connected")
                Dim query1 As String
                query1 = "update student set studname = '" + txtupstudnm.Text + "',phoneno=" + txtupstudmbl.Text + ",email='" + txtupstudemail.Text + "',address='" + txtupstudadd.Text + "',city='" + txtupstudcity.Text + "',village='" + txtupstudvillage.Text + "',class=" + txtclass.Text + "where prnno=" + txtstdprn.Text + ""
                Dim cmd As New SqlCommand(query1, con)
                cmd.ExecuteNonQuery()
                con.Close()
                txtupstudnm.Enabled = False
                txtupstudadd.Enabled = False
                txtupstudcity.Enabled = False
                txtupstudmbl.Enabled = False
                txtupstudemail.Enabled = False
                txtupstudvillage.Enabled = False
                txtclass.Enabled = False
                btnsupdate.Text = "Update"
            Else
                Response.Write("not connected")
            End If

            Response.Write("<script LANGUAGE='JavaScript'>alert('Updated Successfully')</script>")
        End If


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Response.Write("connected")
            Dim query1 As String
            query1 = "select * from student where prnno = " + txtstdprn.Text + ""

            Dim cmd As New SqlCommand(query1, con)
            Dim rd As SqlDataReader
            rd = cmd.ExecuteReader()
            If (rd.HasRows = True) Then
                rd.Read()
                txtstdprn.Text = Convert.ToString(rd(0))
                txtupstudnm.Text = Convert.ToString(rd(1))
                txtupstudmbl.Text = Convert.ToString(rd(2))
                txtupstudemail.Text = Convert.ToString(rd(3))
                txtupstudadd.Text = Convert.ToString(rd(4))
                txtupstudcity.Text = Convert.ToString(rd(9))
            Else
                TextBox8.Text = "no record found"
            End If
            con.Close()
        Else
            Response.Write("not connected")
        End If

    End Sub

    Protected Sub TextBox8_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBox8.TextChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If Page.IsPostBack = False Then
            con.Open()

            If con.State = Data.ConnectionState.Open Then
                Response.Write("connected")

                Dim query1 As String
                txtstdprn.Text = Convert.ToString(Session("user"))
                query1 = "select * from student where prnno = " + txtstdprn.Text + ""

                Dim cmd As New SqlCommand(query1, con)
                Dim rd As SqlDataReader
                rd = cmd.ExecuteReader()
                If (rd.HasRows = True) Then
                    rd.Read()
                    txtstdprn.Text = Convert.ToString(rd(0))
                    txtupstudnm.Text = Convert.ToString(rd(1))
                    txtupstudmbl.Text = Convert.ToString(rd(2))
                    txtupstudemail.Text = Convert.ToString(rd(3))
                    txtupstudadd.Text = Convert.ToString(rd(4))
                    txtupstudcity.Text = Convert.ToString(rd(9))
                    txtclass.Text = Convert.ToString(rd(5))
                    txtupstudnm.Enabled = False
                    txtupstudadd.Enabled = False
                    txtupstudcity.Enabled = False
                    txtupstudmbl.Enabled = False
                    txtupstudemail.Enabled = False
                    txtupstudvillage.Enabled = False
                    txtstdprn.Enabled = False
                    txtclass.Enabled = False

                Else
                    TextBox8.Text = "no record found"
                End If
                con.Close()
            Else
                Response.Write("not connected")
            End If
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("ebooknotice.aspx")
    End Sub
End Class
