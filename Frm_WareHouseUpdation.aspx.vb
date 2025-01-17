Public Class Frm_WareHouseUpdation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim filterValue As String = DropDownList1.SelectedValue

        'If Not User.IsInRole("Ind_Claim") Or ("ADMIN") Then
        '    Response.Redirect("~/Frm_Errorform.aspx") ' Or any page you want to show
        'End If

        'If Not (User.IsInRole("Ind_Claim") Or User.IsInRole("ADMIN")) Then
        '    Response.Redirect("~/Frm_Errorform.aspx") ' Or any page you want to show
        'End If
        If Not (Session("USERACCESS") = "WareHouse" Or Session("USERACCESS") = "ADMIN") Then
            Response.Redirect("Frm_Errorform.aspx")
        End If

        'SqlDataSource1.DataBind()
        'GridView1.DataBind()

        ' If Not IsPostBack Then
        ' Initially bind the GridView with all data (no filter)



        'GridView1.DataSourceID = "SqlDataSource1"
        '    GridView1.DataBind()




        '   End If

    End Sub


    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    'SqlDataSource1.DataBind()
    '    ' GridView1.DataBind()

    'End Sub
End Class