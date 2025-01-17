Imports System.Data
Imports System.Data.SqlClient
Imports System.Collections
Imports System.Configuration
Imports Recall.Encryptpass
Public Class Login
    'Inherits System.Web.UI.Page
    Inherits System.Web.UI.Page
    Public constr As String = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            '-------Below script use for showing wait image on click of submit button
            Dim script As String = "$(document).ready(function () { $('[id*=btnSubmit]').click(); });"
            ClientScript.RegisterStartupScript(Me.GetType, "load", script, True)
        End If
    End Sub

    Protected Sub CMDOK_Click(sender As Object, e As EventArgs) Handles CMDOK.Click
        ' System.Threading.Thread.Sleep(1000)
        Dim Password As String
        Dim USERNAME, USERTYPE, IS_LOGGEDIN, USERACCESS As String
        ' Dim PASSWORDCHANGE As Date

        If TXTUSERNAME.Text = "" Then
            Lblpasserror.Text = "UserID required."
            Exit Sub
        Else
            Lblpasserror.Text = ""
        End If
        If TxtPassword.Text = "" Then
            Lblpasserror.Text = "Password required."
            Exit Sub
        Else
            Lblpasserror.Text = ""
        End If

        Dim cnn As New SqlConnection(constr)
        Dim rss As SqlDataReader
        Dim comm As New SqlCommand

        Try
            cnn.Open()
            comm.CommandText = "select * from TblUser where UserId = @userid"
            comm.Parameters.AddWithValue("@userid", TXTUSERNAME.Text.Trim())
            comm.Connection = cnn
            rss = comm.ExecuteReader
            If rss.Read = True Then
                IS_LOGGEDIN = rss("IS_LOGGEDIN") & ""

                If IS_LOGGEDIN = "TRUE" Then
                    LBLSTATUS.Text = "User ID already logged in."
                    cnn.Close()
                    Exit Sub
                End If

                USERNAME = rss("USERID") & ""
                Password = rss("Password") & ""
                ' USERTYPE = rss("USERTYPE") & ""
                'PASSWORDCHANGE = rss("PASSWORD_CHANGE_DATE") & ""
                USERACCESS = rss("USERACCESS") & ""

                If (TxtPassword.Text) = Password Then
                    Session("key1") = "value1"
                    Session("username") = USERNAME
                    Session("USERACCESS") = USERACCESS
                    If USERACCESS = "Ind_Recall" Then
                        Response.Redirect("Frm_FileUpload.aspx")
                    ElseIf USERACCESS = "WareHouse" Then
                        Response.Redirect("Frm_WareHouseUpdation.aspx")
                    ElseIf USERACCESS = "Ind_Claim" Then
                        Response.Redirect("Frm_IndClaimUpdation.aspx")
                    ElseIf USERACCESS = "CSV USER" Then
                        Response.Redirect("Frm_DownloadCSV.aspx")
                    ElseIf USERACCESS = "ADMIN" Then
                        Response.Redirect("Frm_FileUpload.aspx")
                        ' Response.Redirect("Frm_Testing.aspx")

                    Else
                        Response.Redirect("Frm_Errorform.aspx")
                    End If

                Else
                        Lblpasserror.Visible = True
                    Lblpasserror.Text = "Incorrect password!"
                    Lblpasserror.Text = "<Marquee><h1>Invalid password</Marquee></h1>"

                End If

            Else
                Lblpasserror.Visible = True
                Lblpasserror.Text = "Invalid Username!"
                Lblpasserror.Text = "<Marquee><h1>Invalid Username</Marquee></h1>"
            End If
            cnn.Close()
        Catch ex As Exception
            If ex.Message.Contains("A network-related or instance-specific error occurred while establishing a connection to SQL Server") Then
                LBLSTATUS.Text = "Connection error please try after sometime."
            Else
                LBLSTATUS.Text = ex.Message
            End If
        End Try
    End Sub
End Class