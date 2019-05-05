Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class ebooknotice
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            con.Open()

            If con.State = Data.ConnectionState.Open Then
                Response.Write("connected")

                Dim query1 As String
                Label15.Text = Convert.ToString(Session("user"))
                query1 = "select studname,photo,class from student where prnno = " + Label15.Text + ""

                Dim cmd As New SqlCommand(query1, con)
                Dim rd As SqlDataReader
                rd = cmd.ExecuteReader()
                If (rd.HasRows = True) Then
                    rd.Read()
                    Label16.Text = Convert.ToString(rd(0))

                    'Image3.ImageUrl = Convert.ToString(rd(1))
                    Image3.ImageUrl = Convert.ToString(rd(1))

                    Label21.Text = Convert.ToString(rd(2))
                End If
            End If
            con.Close()

          




        End If

    End Sub



    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session.Clear()
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("Studentprofile.aspx")
    End Sub

   

   

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("bknm") = "<embed src=ebookspdf\java-3-object-oriented-programming.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Session("bknm") = "<embed src=ebookspdf\vbNet_programming.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        Session("bknm") = "<embed src=ebookspdf\introduction-to-web-services-with-java.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        Session("bknm") = "<embed src=ebookspdf\8085.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton5_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton5.Click
        Session("bknm") = "<embed src=ebookspdf\prentice-hall-the-8051-microcontroller-mackenzie.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton6_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton6.Click
        Session("bknm") = "<embed src=ebookspdf\c-1-introduction-to-programming-and-the-c-language.pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton7_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton7.Click
        Session("bknm") = "<embed src=ebookspdf\Operating_System_Concepts,_8th_Edition[A4].pdf width=100% > "
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub ImageButton8_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton8.Click
        Session("bknm") = "<embed src=ebookspdf\ Linux The Complete Reference.6th.Edition(Nov.2007)[2842313].PDF width=100% > "
        Response.Redirect("Default.aspx")
    End Sub
End Class
