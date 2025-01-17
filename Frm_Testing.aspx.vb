Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Public Class Frm_Testing
    Inherits System.Web.UI.Page
    Public constr As String = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'BindGridView()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Dim searchValue As String = TextBox1.Text.Trim()

        ' Set the SqlDataSource parameter based on the search value
        'SqlDataSource2.SelectCommand = "SELECT [SKU], [FNSKU], [TRACKING-NUMBER] AS column1, [TRACKING STATUS] AS TRACKING_STATUS, [ASIN] FROM [Tbl_ReCall_Polland_2024] WHERE [TRACKING-NUMBER] LIKE '%' + @column1 + '%' OR @column1 = ''"

        ' Clear previous parameters and add the new search parameter
        'SqlDataSource2.SelectParameters.Clear()
        'SqlDataSource2.SelectParameters.Add("column1", searchValue)
        'GridTracking.SelectParameters.Add("column1", searchValue)
        'GridView1.DataBind()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ' Define the file path
        Dim filePath As String = "C:\Users\Aniruddh.Toke\source\repos\Window Application\AutoEmail\AutoEmail\bin\Debug/BCG_Pol_StockReport.csv" ' Update path as needed

        ' Check if the file exists
        If System.IO.File.Exists(filePath) Then
            ' Set the response headers to prompt a file download
            Response.Clear()
            Response.ContentType = "text/csv"
            Response.AddHeader("Content-Disposition", "attachment;filename=BCG_Pol_StockReport.csv")
            Response.TransmitFile(filePath)
            Response.End()
        Else
            ' If the file does not exist, show an error message or redirect
            Response.Write("File not found!")
        End If
    End Sub

    'Private Sub BindGridView()
    '    Dim query As String = "SELECT [REQUEST-DATE],[ORDER-ID],[SHIPMENT-DATE],[SKU],[id] FROM [Test].[dbo].[Tbl_ReCall_Polland_2024]"
    '    Using con As New SqlConnection(constr)
    '        Using cmd As New SqlCommand(Query, con)
    '            Using da As New SqlDataAdapter(cmd)
    '                Dim dt As New DataTable()
    '                da.Fill(dt)
    '                GridView2.DataSource = dt
    '                GridView2.DataBind()
    '            End Using
    '        End Using
    '    End Using
    'End Sub

End Class