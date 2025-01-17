<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_IndRecallUpdation.aspx.vb" Inherits="Acorn_Recall_Management.Frm_IndRecallUpdation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
    .auto-style14 {
        width: 950px;
    }
    .auto-style15 {
        height: 195px;
    }
        .auto-style16 {
            height: 18px;
        }
        .auto-style17 {
            width: 950px;
            height: 18px;
        }
        .auto-style18 {
            height: 23px;
        }
         .auto-style19 {
        height: 57px;
    }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style19">
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
        </tr>
        <tr>
            <td colspan="2" class="auto-style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Account"></asp:Label>
&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Account_DataSource" DataTextField="Accountt" DataValueField="Accountt" Height="16px" Width="109px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Account_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [Accountt] FROM [Tbl_ReCall_Polland] ORDER BY [Accountt]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style15">&nbsp;
                  
                <div style="overflow-x: auto; max-width: 1753px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Recall_DataSource" Width="716px" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="283px">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="column1" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Request-Date" SortExpression="column1" />
                            <asp:BoundField DataField="COMMENT" HeaderText="Comment" SortExpression="COMMENT" />
                            <asp:BoundField DataField="FBA_ID" HeaderText="FBA_Id" SortExpression="FBA_ID" />
                            <asp:BoundField DataField="UNITS_SEND_IN_FBA" HeaderText="Units_Send_In_FBA" SortExpression="UNITS_SEND_IN_FBA" />
                            <asp:BoundField DataField="SINGLE_SEND" HeaderText="Single_Send" SortExpression="SINGLE_SEND" />
                            <asp:BoundField DataField="LEFT_UNITS_PACK_SIZE_WH" HeaderText="Left_Units_Pack_Size_WH" SortExpression="LEFT_UNITS_PACK_SIZE_WH" />
                            <asp:BoundField DataField="LEFT_UNITS_WH_SINGLE" HeaderText="Left_Units_WH_Single" SortExpression="LEFT_UNITS_WH_SINGLE" />
                            <asp:BoundField DataField="IMAGES_FOR_DAMAGE_PRODUCT" HeaderText="Images_For_Damage_Product" SortExpression="IMAGES_FOR_DAMAGE_PRODUCT" />
                            <asp:BoundField DataField="CASE_ID" HeaderText="Case_Id" SortExpression="CASE_ID" />
                            <asp:BoundField DataField="column2" HeaderText="Reimbursement ID &amp; Amount" SortExpression="column2" />
                            <asp:BoundField DataField="NEW_NAV_CODE" HeaderText="New_Nav_Code" SortExpression="NEW_NAV_CODE" />
                            <asp:BoundField DataField="NEW_SKU" HeaderText="New_SKU" SortExpression="NEW_SKU" />
                            <asp:BoundField DataField="NEW_ASIN" HeaderText="New_ASIN" SortExpression="NEW_ASIN" />
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
                    <asp:SqlDataSource ID="Recall_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" DeleteCommand="DELETE FROM [Tbl_ReCall_Polland] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_ReCall_Polland] ([REQUEST-DATE], [COMMENT], [FBA ID], [UNITS SEND IN FBA], [SINGLE SEND], [LEFT UNITS PACK SIZE WH], [LEFT UNITS WH SINGLE], [IMAGES FOR DAMAGE PRODUCT], [CASE ID], [REIMBURSEMENT ID &amp; AMOUNT], [NEW NAV CODE], [NEW SKU], [NEW ASIN]) VALUES (@column1, @COMMENT, @FBA_ID, @UNITS_SEND_IN_FBA, @SINGLE_SEND, @LEFT_UNITS_PACK_SIZE_WH, @LEFT_UNITS_WH_SINGLE, @IMAGES_FOR_DAMAGE_PRODUCT, @CASE_ID, @column2, @NEW_NAV_CODE, @NEW_SKU, @NEW_ASIN)" SelectCommand="SELECT [REQUEST-DATE] AS column1, [COMMENT], [FBA ID] AS FBA_ID, [UNITS SEND IN FBA] AS UNITS_SEND_IN_FBA, [SINGLE SEND] AS SINGLE_SEND, [LEFT UNITS PACK SIZE WH] AS LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] AS LEFT_UNITS_WH_SINGLE, [IMAGES FOR DAMAGE PRODUCT] AS IMAGES_FOR_DAMAGE_PRODUCT, [CASE ID] AS CASE_ID, [REIMBURSEMENT ID &amp; AMOUNT] AS column2, [NEW NAV CODE] AS NEW_NAV_CODE, [NEW SKU] AS NEW_SKU, [NEW ASIN] AS NEW_ASIN, [id] FROM [Tbl_ReCall_Polland] WHERE ([Accountt] = @Accountt) ORDER BY [id] DESC" UpdateCommand="UPDATE [Tbl_ReCall_Polland] SET [REQUEST-DATE] = @column1, [COMMENT] = @COMMENT, [FBA ID] = @FBA_ID, [UNITS SEND IN FBA] = @UNITS_SEND_IN_FBA, [SINGLE SEND] = @SINGLE_SEND, [LEFT UNITS PACK SIZE WH] = @LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] = @LEFT_UNITS_WH_SINGLE, [IMAGES FOR DAMAGE PRODUCT] = @IMAGES_FOR_DAMAGE_PRODUCT, [CASE ID] = @CASE_ID, [REIMBURSEMENT ID &amp; AMOUNT] = @column2, [NEW NAV CODE] = @NEW_NAV_CODE, [NEW SKU] = @NEW_SKU, [NEW ASIN] = @NEW_ASIN WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter DbType="Date" Name="column1" />
                            <asp:Parameter Name="COMMENT" Type="String" />
                            <asp:Parameter Name="FBA_ID" Type="String" />
                            <asp:Parameter Name="UNITS_SEND_IN_FBA" Type="Double" />
                            <asp:Parameter Name="SINGLE_SEND" Type="Double" />
                            <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                            <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                            <asp:Parameter Name="IMAGES_FOR_DAMAGE_PRODUCT" Type="String" />
                            <asp:Parameter Name="CASE_ID" Type="String" />
                            <asp:Parameter Name="column2" Type="String" />
                            <asp:Parameter Name="NEW_NAV_CODE" Type="String" />
                            <asp:Parameter Name="NEW_SKU" Type="String" />
                            <asp:Parameter Name="NEW_ASIN" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Accountt" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Date" Name="column1" />
                            <asp:Parameter Name="COMMENT" Type="String" />
                            <asp:Parameter Name="FBA_ID" Type="String" />
                            <asp:Parameter Name="UNITS_SEND_IN_FBA" Type="Double" />
                            <asp:Parameter Name="SINGLE_SEND" Type="Double" />
                            <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                            <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                            <asp:Parameter Name="IMAGES_FOR_DAMAGE_PRODUCT" Type="String" />
                            <asp:Parameter Name="CASE_ID" Type="String" />
                            <asp:Parameter Name="column2" Type="String" />
                            <asp:Parameter Name="NEW_NAV_CODE" Type="String" />
                            <asp:Parameter Name="NEW_SKU" Type="String" />
                            <asp:Parameter Name="NEW_ASIN" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </div>

                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
