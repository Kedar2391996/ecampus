Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Imports System.Data
Imports System.Data.SqlClient
Partial Class facultydetails
    Inherits System.Web.UI.Page
    Public con As New SqlConnection("server=ADMIN-PC;Initial Catalog=ecampuss;Integrated Security=true;")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()

        If con.State = Data.ConnectionState.Open Then
            Dim da As New SqlDataAdapter("select * from faculty", con)
            Dim ds As New DataSet1()
            da.Fill(ds, "faculty")
            con.Close()
            Dim rd As New ReportDocument()
            rd.Load(Server.MapPath("~/Reportfaculty.rpt"))
            rd.SetDataSource(ds)
            CrystalReportViewer1.ReportSource = rd



        End If
    End Sub
    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer1.Init
      
    End Sub
End Class
