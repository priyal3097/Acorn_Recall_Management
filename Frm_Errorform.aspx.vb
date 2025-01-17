Imports System.Data.SqlClient
Public Class Frm_Errorform
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim constr As String = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
        Try
            Using cnn As New SqlConnection(constr)
                Dim comm As New SqlCommand
                comm.CommandText = "update TblUser set IS_LOGGEDIN = null where userid='" & Session("username").ToString() & "'"
                comm.Connection = cnn
                cnn.Open()
                comm.ExecuteNonQuery()
                cnn.Close()
            End Using
        Catch ex As Exception

        End Try

        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub

End Class