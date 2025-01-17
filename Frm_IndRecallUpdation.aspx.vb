Public Class Frm_IndRecallUpdation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not User.IsInRole("Ind_Claim") Or ("ADMIN") Then
        '    Response.Redirect("~/Frm_Errorform.aspx") ' Or any page you want to show
        'End If

        'If Not (User.IsInRole("Ind_Claim") Or User.IsInRole("ADMIN")) Then
        '    Response.Redirect("~/Frm_Errorform.aspx") ' Or any page you want to show
        'End If
        If Not (Session("USERACCESS") = "Ind_Recall" Or Session("USERACCESS") = "ADMIN") Then
            Response.Redirect("Frm_Errorform.aspx")
        End If
    End Sub
End Class