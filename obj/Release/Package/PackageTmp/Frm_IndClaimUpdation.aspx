<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_IndClaimUpdation.aspx.vb" Inherits="Acorn_Recall_Management.Frm_IndClaimUpdation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style20 {
        width: 100%;
        height: 604px;
        margin-top: 25px;
    }
    .auto-style21 {
        height: 426px;
    }
    .auto-style22 {
        width: 1690px;
        height: 426px;
    }
        .auto-style25 {
            height: 426px;
            width: 5px;
        }
        .auto-style26 {
            width: 1690px;
            height: 179px;
        }
        .auto-style27 {
            width: 5px;
            height: 179px;
        }
    .auto-style28 {
        width: 106%;
            margin-top: 4px;
            height: 371px;
            margin-right: 0px;
        }
        .auto-style35 {
            width: 5px;
            height: 31px;
        }
        .auto-style36 {
            width: 1690px;
            height: 31px;
        }
        .auto-style41 {
            height: 31px;
        }
    .auto-style42 {
        width: 5px;
        height: 57px;
    }
    .auto-style43 {
        width: 1690px;
        height: 57px;
    }
    .auto-style44 {
        height: 57px;
    }
        .auto-style45 {
            height: 179px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style20">
    <tr>
        <td class="auto-style42"></td>
        <td class="auto-style43">
                <br />
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Font-Bold="True" Font-Size="Large">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Frm_FileUpload.aspx" Text="File Upload" Value="File Upload"></asp:MenuItem>
                        
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        
                        <asp:MenuItem NavigateUrl="~/Frm_IndRecallUpdation.aspx" Text="Recall Team" Value="Recall Team"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Frm_IndClaimUpdation.aspx" Text="Claim Team" Value="Claim Team"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Frm_WareHouseUpdation.aspx" Text="WareHouse Team" Value="WareHouse Team"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/FrmVwData.aspx" Text="View Data" Value="View Data"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                    </td>
        <td class="auto-style44"></td>
    </tr>
    <tr>
        <td class="auto-style35"></td>
        <td class="auto-style36">
                <asp:Label ID="Label1" runat="server" Text="Account"></asp:Label>
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Account_DataSource" DataTextField="Accountt" DataValueField="Accountt" AutoPostBack="True" Height="23px" Width="144px">
                        <asp:ListItem Value="Select Account">Select Account</asp:ListItem>
                        <asp:ListItem>Jumbo</asp:ListItem>
                        <asp:ListItem>VW360</asp:ListItem>
                        <asp:ListItem>ASL</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Account_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Accountt] FROM [Tbl_ReCall_Polland] ORDER BY [Accountt]"></asp:SqlDataSource>
                    </td>
        <td class="auto-style41"></td>
    </tr>
    <tr>
        <td class="auto-style25"></td>
        <td class="auto-style22">
            <div style="overflow-x: auto; max-width: 1751px;" class="auto-style28">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="Grid_DataSource" Height="289px" Width="1774px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="column1" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Request-Date" SortExpression="column1" />
                        <asp:BoundField DataField="column2" HeaderText="Order-Id" SortExpression="column2" />
                        <asp:BoundField DataField="column3" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Shipment-Date" SortExpression="column3" />
                        <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                        <asp:BoundField DataField="FNSKU" HeaderText="FNSKU" SortExpression="FNSKU" />
                        <asp:BoundField DataField="column4" HeaderText="Tracking-Number" SortExpression="column4" />
                        <asp:BoundField DataField="DELIVERY_DATE" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Delivery_Date" SortExpression="DELIVERY_DATE" />
                        <asp:BoundField DataField="column5" HeaderText="Damage Qty (For WH)" SortExpression="column5" />
                        <asp:BoundField DataField="column6" HeaderText="Missing Single Qty (For WH)" SortExpression="column6" />
                        <asp:BoundField DataField="LEFT_UNITS_PACK_SIZE_WH" HeaderText="Left_Units_Pack_Size_WH" SortExpression="LEFT_UNITS_PACK_SIZE_WH" />
                        <asp:BoundField DataField="LEFT_UNITS_WH_SINGLE" HeaderText="Left_Units_WH_Single" SortExpression="LEFT_UNITS_WH_SINGLE" />
                        <asp:BoundField DataField="CASE_ID1" HeaderText="Case_id1" SortExpression="CASE_ID1" />
                        <asp:BoundField DataField="REIMBURSHMENT_ID" HeaderText="Reimburshement_Id" SortExpression="REIMBURSHMENT_ID" />
                        <asp:BoundField DataField="REIMBURSEMENT_AMOUNT" HeaderText="Reimburshement_Amount" SortExpression="REIMBURSEMENT_AMOUNT" />
                        <asp:BoundField DataField="CASE_QTY" HeaderText="Case_Qty" SortExpression="CASE_QTY" />
                        <asp:BoundField DataField="REIMBURSEMENT_QTY" HeaderText="Reimbursement_Qty" SortExpression="REIMBURSEMENT_QTY" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="Grid_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" DeleteCommand="DELETE FROM [Tbl_ReCall_Polland] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_ReCall_Polland] ([REQUEST-DATE], [ORDER-ID], [SHIPMENT-DATE], [SKU], [FNSKU], [TRACKING-NUMBER], [DELIVERY DATE], [DAMAGE QTY (FOR WH)], [MISSING SINGLE QTY (FOR WH)], [LEFT UNITS PACK SIZE WH], [LEFT UNITS WH SINGLE], [CASE ID1], [REIMBURSHMENT ID], [REIMBURSEMENT AMOUNT], [CASE QTY], [REIMBURSEMENT QTY]) VALUES (@column1, @column2, @column3, @SKU, @FNSKU, @column4, @DELIVERY_DATE, @column5, @column6, @LEFT_UNITS_PACK_SIZE_WH, @LEFT_UNITS_WH_SINGLE, @CASE_ID1, @REIMBURSHMENT_ID, @REIMBURSEMENT_AMOUNT, @CASE_QTY, @REIMBURSEMENT_QTY)" SelectCommand="SELECT [REQUEST-DATE] AS column1, [ORDER-ID] AS column2, [SHIPMENT-DATE] AS column3, [SKU], [FNSKU], [TRACKING-NUMBER] AS column4, [DELIVERY DATE] AS DELIVERY_DATE, [DAMAGE QTY (FOR WH)] AS column5, [MISSING SINGLE QTY (FOR WH)] AS column6, [LEFT UNITS PACK SIZE WH] AS LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] AS LEFT_UNITS_WH_SINGLE, [CASE ID1] AS CASE_ID1, [REIMBURSHMENT ID] AS REIMBURSHMENT_ID, [REIMBURSEMENT AMOUNT] AS REIMBURSEMENT_AMOUNT, [CASE QTY] AS CASE_QTY, [REIMBURSEMENT QTY] AS REIMBURSEMENT_QTY, [id] FROM [Tbl_ReCall_Polland] WHERE ([Accountt] = @Accountt) ORDER BY [id] DESC" UpdateCommand="UPDATE [Tbl_ReCall_Polland] SET [REQUEST-DATE] = @column1, [ORDER-ID] = @column2, [SHIPMENT-DATE] = @column3, [SKU] = @SKU, [FNSKU] = @FNSKU, [TRACKING-NUMBER] = @column4, [DELIVERY DATE] = @DELIVERY_DATE, [DAMAGE QTY (FOR WH)] = @column5, [MISSING SINGLE QTY (FOR WH)] = @column6, [LEFT UNITS PACK SIZE WH] = @LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] = @LEFT_UNITS_WH_SINGLE, [CASE ID1] = @CASE_ID1, [REIMBURSHMENT ID] = @REIMBURSHMENT_ID, [REIMBURSEMENT AMOUNT] = @REIMBURSEMENT_AMOUNT, [CASE QTY] = @CASE_QTY, [REIMBURSEMENT QTY] = @REIMBURSEMENT_QTY WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="column1" />
                        <asp:Parameter Name="column2" Type="String" />
                        <asp:Parameter Name="column3" Type="DateTime" />
                        <asp:Parameter Name="SKU" Type="String" />
                        <asp:Parameter Name="FNSKU" Type="String" />
                        <asp:Parameter Name="column4" Type="String" />
                        <asp:Parameter Name="DELIVERY_DATE" Type="String" />
                        <asp:Parameter Name="column5" Type="String" />
                        <asp:Parameter Name="column6" Type="Double" />
                        <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                        <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                        <asp:Parameter Name="CASE_ID1" Type="Double" />
                        <asp:Parameter Name="REIMBURSHMENT_ID" Type="Double" />
                        <asp:Parameter Name="REIMBURSEMENT_AMOUNT" Type="String" />
                        <asp:Parameter Name="CASE_QTY" Type="Double" />
                        <asp:Parameter Name="REIMBURSEMENT_QTY" Type="Double" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Accountt" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="column1" />
                        <asp:Parameter Name="column2" Type="String" />
                        <asp:Parameter Name="column3" Type="DateTime" />
                        <asp:Parameter Name="SKU" Type="String" />
                        <asp:Parameter Name="FNSKU" Type="String" />
                        <asp:Parameter Name="column4" Type="String" />
                        <asp:Parameter Name="DELIVERY_DATE" Type="String" />
                        <asp:Parameter Name="column5" Type="String" />
                        <asp:Parameter Name="column6" Type="Double" />
                        <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                        <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                        <asp:Parameter Name="CASE_ID1" Type="Double" />
                        <asp:Parameter Name="REIMBURSHMENT_ID" Type="Double" />
                        <asp:Parameter Name="REIMBURSEMENT_AMOUNT" Type="String" />
                        <asp:Parameter Name="CASE_QTY" Type="Double" />
                        <asp:Parameter Name="REIMBURSEMENT_QTY" Type="Double" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </td>
        <td class="auto-style21"></td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style26"></td>
        <td class="auto-style45"></td>
    </tr>
</table>
</asp:Content>
