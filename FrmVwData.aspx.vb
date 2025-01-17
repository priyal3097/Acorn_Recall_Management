Imports System.Data.SqlClient
Public Class FrmVwData
    Inherits System.Web.UI.Page
    Public constr As String = ConfigurationManager.ConnectionStrings("ConnString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (Session("USERACCESS") = "ADMIN" Or Session("USERACCESS") = "Ind_Recall" Or Session("USERACCESS") = "WareHouse" Or Session("USERACCESS") = "Ind_Claim") Then
            Response.Redirect("Frm_Errorform.aspx")
        End If

        BindData(txtTrackingNumbSearch.Text.Trim())
    End Sub


    ' Method to bind data to GridView
    Private Sub BindData(Optional TrackingNumbSearch As String = "") ', Optional categorySearch As String = "", Optional dateSearch As String = "")
        Dim query As String = "SELECT convert(date,[REQUEST-DATE],101) As [Request Date],[ORDER-ID] As [Oorder-Id],[SHIPMENT-DATE] As [Shipment Date], [SKU], [FNSKU], [DISPOSITION] As [Disposition], [SHIPPED-QUANTITY] As [Shipped Qty], [CARRIER] As Carrier, [TRACKING-NUMBER] As [Tracking No], [TRACKING STATUS] As [Tracking Status], [DELIVERY DATE] As [Delivery Date], [NAV CODE] As [NAV Code], [NAV DESCRIPTION] As [NAV Description], [ASIN], [PACK SIZE] As [Pack Size], [TOTAL SINGLE QTY] As [Total Single Qty], [REASON FOR RECALL] As [Reason For Recall], [DATE OF SCAN] As [Date Of Scan], [UNIT COST AS PER SKU] As [Unit Cost As Per SKU], [TOTAL AMOUNT REMAININGIN WH] As [Total Amount Remaining Wh], [TOTAL PENDING /MISSING VALUE] As [Total Pending/Missing Value], [Account] FROM [Tbl_ReCall_Polland] WHERE 1=1 " ' Base query

        ' Add conditions for search criteria
        If Not String.IsNullOrEmpty(TrackingNumbSearch) Then
            query &= " AND [TRACKING-NUMBER] LIKE @TrackingNumbSearch "
        End If

        query &= " ORDER BY ID DESC"
        'If Not String.IsNullOrEmpty(categorySearch) Then
        '    query &= " AND Category = @CategorySearch"
        'End If

        'If Not String.IsNullOrEmpty(dateSearch) Then
        '    query &= " AND DateColumn = @DateSearch"
        'End If

        'Dim cnn As New SqlConnection(constr)
        Using conn As New SqlConnection(constr)
            Using cmd As New SqlCommand(query, conn)
                ' Add parameters based on search criteria
                If Not String.IsNullOrEmpty(TrackingNumbSearch) Then
                    cmd.Parameters.AddWithValue("@TrackingNumbSearch", "%" & TrackingNumbSearch & "%")
                End If

                'If Not String.IsNullOrEmpty(categorySearch) Then
                '    cmd.Parameters.AddWithValue("@CategorySearch", categorySearch)
                'End If

                'If Not String.IsNullOrEmpty(dateSearch) Then
                '    cmd.Parameters.AddWithValue("@DateSearch", DateTime.Parse(dateSearch))
                'End If

                conn.Open()

                Dim dt As New DataTable()
                Using reader As SqlDataReader = cmd.ExecuteReader()
                    dt.Load(reader)
                End Using

                ' Bind the DataTable to GridView
                GridView1.DataSource = dt
                GridView1.DataBind()
            End Using
        End Using
    End Sub

    'Protected Sub GridView1_SelectedIndexChanging(sender As Object, e As GridViewSelectEventArgs) Handles GridView1.SelectedIndexChanging
    '    GridView1.PageIndex = e.NewPageIndex
    '    BindData(txtNameSearch.Text.Trim() , ddlCategorySearch.SelectedValue, txtDateSearch.Text.Trim()) ' Rebind data with current search text

    'End Sub

    'Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs)
    '    GridView1.PageIndex = e.NewPageIndex
    '    BindData(txtNameSearch.Text.Trim(), ddlCategorySearch.SelectedValue, txtDateSearch.Text.Trim()) ' Rebind data with current search text
    'End Sub

    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        BindData(txtTrackingNumbSearch.Text.Trim()) ', ddlCategorySearch.SelectedValue, txtDateSearch.Text.Trim()) ' Rebind data with current search text
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        BindData(txtTrackingNumbSearch.Text.Trim())
    End Sub
End Class