Public Class Frm_DownloadCSV
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Session("USERACCESS") = "CSV USER" Or Session("USERACCESS") = "ADMIN") Then
            Response.Redirect("Frm_Errorform.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
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
End Class