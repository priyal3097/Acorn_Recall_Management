Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Public Class Frm_FileUpload
    Inherits System.Web.UI.Page
    Public constr As String = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
    Dim xConnStr As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Key1") = Nothing Then
            Response.Redirect("Login.aspx")
        Else

        End If


        If Not (Session("USERACCESS") = "Ind_Recall" Or Session("USERACCESS") = "ADMIN") Then
            Response.Redirect("Frm_Errorform.aspx")
        End If

        'If Session("USERACCESS") = "Admin" Then
        '    Menu1.Items(0).Enabled = True

        '    'Menu1.Items(0).Visible = True ' Admin Section
        '    Menu1.Items(1).Enabled = True ' User Section
        '    'ElseIf userRole = "User" Then
        '    '    Menu1.Items(0).Visible = False ' Admin Section
        '    '    Menu1.Items(1).Visible = True ' User Section
        'Else
        '    Menu1.Items(0).Enabled = False ' Admin Section
        '    Menu1.Items(1).Enabled = False ' User Section
        'End If


        'If Not Me.IsPostBack Then

        '    If Session("username") IsNot Nothing Then
        '        Me.Label3.Text = String.Format("Welcome {0}", Session("username").ToString())
        '    End If
        'End If

        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()
        Response.Expires = -1

        If Not IsPostBack Then

            ' Check if the form has already been uploaded.
            ' You can check if the file is uploaded, then perform a redirect.
            If Session("FileUploaded") IsNot Nothing AndAlso CType(Session("FileUploaded"), Boolean) Then
                ' Redirect to avoid resubmission when going forward/back
                Response.Redirect("Login.aspx")
            End If
        End If





    End Sub
    Protected Sub CMDUPLOAD_Click(sender As Object, e As EventArgs) Handles CMDUPLOAD.Click
        Dim cnn As New SqlConnection(constr)
        Dim rss As SqlDataReader
        Dim comm As New SqlCommand

        'cnn.Open()
        'comm.CommandText = "DELETE FROM [Test].[dbo].[TblUser] where id=5"
        'comm.Connection = cnn
        'comm.ExecuteNonQuery()
        'cnn.Close()

        Dim fname As String
        Dim PTH As String = Server.MapPath(Request.ApplicationPath) & FileUpload1.FileName

        If FileUpload1.HasFile = True Then
            fname = FileUpload1.FileName
        End If

        If fname = "" Then
            LBLUPLOADERROR.Text = "Please select File"
            Exit Sub
            ' MsgBox("Please select File", MsgBoxStyle.OkCancel)
        End If


        Try

            FileUpload1.SaveAs(Server.MapPath(Request.ApplicationPath) & FileUpload1.FileName)
            LBLPATH.Text = PTH

            If PTH.EndsWith(".xlsx") Or PTH.EndsWith(".XLSX") Then
                xConnStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & PTH & ";Extended Properties=""Excel 12.0;HDR=YES;IMEX=1"";" '

                'ElseIf PTH.EndsWith(".xls") Or PTH.EndsWith(".XLS") Then
                '    xConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & PTH & ";Extended Properties=""Excel 8.0;HDR=YES;IMEX=1"";"
            End If

            ' xConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & PTH & ";Extended Properties=""Excel 8.0;HDR=YES;IMEX=1"";"


            LBLUPLOADERROR.Text = ""
        Catch ex As Exception
            LBLUPLOADERROR.Text = ex.Message
            Exit Sub
        End Try

        Dim MyConnection As New OleDbConnection(xConnStr)
        If xConnStr = "" Then
            Exit Sub
        End If


        Try
            cnn.Open()
            comm.CommandText = "DELETE FROM Upload_Tbl_ReCall_Polland"
            comm.Connection = cnn
            comm.ExecuteNonQuery()
            cnn.Close()

            MyConnection.Open()
            Dim strSql As String = "SELECT * FROM [Sheet1$]"

            Dim cmd As OleDbCommand = New OleDbCommand(strSql, MyConnection)
            Dim bdr As OleDbDataReader = cmd.ExecuteReader


            cnn.Open()
            Using blkcp As New SqlBulkCopy(constr)
                blkcp.DestinationTableName = "dbo.Upload_Tbl_ReCall_Polland"
                blkcp.BulkCopyTimeout = 1900
                blkcp.BatchSize = 10000

                Try
                    blkcp.WriteToServer(bdr)
                    LBLUPLOADERROR.Text = ""
                Catch ex As Exception
                    LBLUPLOADERROR.Text = ex.Message
                    MyConnection.Close()
                    ' System.IO.File.Delete(LBLPATH.Text)
                    cnn.Close()
                    bdr.Close()
                    Exit Sub

                Finally
                    bdr.Close()
                End Try
            End Using
            cnn.Close()
            MyConnection.Close()

            '  System.IO.File.Delete(LBLPATH.Text)


            cnn.Open()
            comm.CommandText = "EXEC [PROC_Upload_Tbl_ReCall_Polland] '" & DropDownList1.SelectedValue & "'"
            comm.Connection = cnn
            comm.CommandTimeout = 1600
            comm.ExecuteNonQuery()
            cnn.Close()

            CMDUPLOAD.Visible = False
            'FileUpload1.Visible = False
            '  FileUpload1.Attributes.Clear()


            Session("UploadSuccess") = "File uploaded successfully!"


            'MsgBox("Records Updated")
            LBLUPLOADERROR.Text = "Records Uploaded Suceesfully."

        Catch ex As Exception
            MyConnection.Close()
            ' System.IO.File.Delete(LBLPATH.Text)
            LBLUPLOADERROR.Text = "Error - " & ex.Message
            Exit Sub

            ' Response.Redirect(Request.Url.ToString(), True)

        End Try
    End Sub
End Class