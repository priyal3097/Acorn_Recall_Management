Public Class Site
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If Not Me.IsPostBack Then
            LoadData()
        End If
    End Sub
    Sub LoadData()
        LBLUSERNAME.Text = UCase(Session("username").ToString)
        LBLUSERACCESS.Text = UCase(Session("USERACCESS").ToString)

        'Dim cnn As New SqlConnection(constr)
        'Dim rss As SqlDataReader
        'Dim comm As New SqlCommand

        'Try
        '    cnn.Open()
        '    'comm.CommandText = "SELECT MENU,URL,TARGET FROM USERTYPE_MENU_LIST WHERE USERTYPE IN (SELECT USERTYPE FROM USERTYPE WHERE USERID = '" & LBLUSERNAME.Text & "') GROUP BY MENU,URL,TARGET ORDER BY SEQ"
        '    comm.CommandText = "SELECT MENU,URL,TARGET FROM USERTYPE_MENU_LIST WHERE USERTYPE = '" & LBLUSERTYPE.Text & "' GROUP BY MENU,URL,TARGET,SEQ ORDER BY SEQ"
        '    comm.Connection = cnn
        '    rss = comm.ExecuteReader
        '    NavigationMenu.Items.Clear()
        '    'NavigationMenu.Items.Add(New MenuItem("", "", "", "", ""))
        '    Do While rss.Read
        '        NavigationMenu.Items.Add(New MenuItem(rss("MENU") & "", "", "", rss("URL") & "", rss("TARGET") & ""))
        '    Loop
        '    cnn.Close()
        'Catch ex As Exception
        '    'LBLSTATUS.Text = ex.Message
        '    Exit Sub
        'End Try



    End Sub
End Class