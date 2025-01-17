<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_WareHouseUpdation.aspx.vb" Inherits="Acorn_Recall_Management.Frm_WareHouseUpdation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            margin-top: 13px;
        }
        .auto-style13 {
            width: 100%;
            height: 67px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT DISTINCT [Accountt] FROM [Tbl_ReCall_Polland_2024]"></asp:SqlDataSource>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div style="overflow-x: auto; max-width: 1753px;" class="auto-style13">
                &nbsp;<br />
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
                        <asp:MenuItem Text="View Data" Value="View Data" NavigateUrl="~/FrmVwData.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Account" Visible="False"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Accountt" DataValueField="Accountt" AutoPostBack="True" Visible="False">
                        <asp:ListItem Value="Select Account">Select Account</asp:ListItem>
                        <asp:ListItem>Jumbo</asp:ListItem>
                        <asp:ListItem>VW360</asp:ListItem>
                        <asp:ListItem>ASL</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Search TrackingNumber" Visible="False"></asp:Label>
                    &nbsp;
                <asp:TextBox placeholder="SEARCH TRACKING NUMBER" ID="TextBox1" runat="server" Height="17px" Width="394px" DefaultValue="NULL" Visible="False" ></asp:TextBox>
&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Button" Visible="False" />
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                 <div style="overflow-x: auto; max-width: 1753px;">
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="2269px">
                         <Columns>
                             <asp:CommandField ShowEditButton="True" />
                             <asp:BoundField DataField="column1" DataFormatString="{0:MM/dd/yyyy}" HeaderText="RequestDate" SortExpression="column1" />
                             <asp:BoundField DataField="FNSKU" HeaderText="FNSKU" SortExpression="FNSKU" />
                             <asp:BoundField DataField="column2" HeaderText="ShippedQty" SortExpression="column2" />
                             <asp:BoundField DataField="CARRIER" HeaderText="Carrier" SortExpression="CARRIER" />
                             <asp:BoundField DataField="NAV_CODE" HeaderText="NAV_Code" SortExpression="NAV_CODE" />
                             <asp:BoundField DataField="DATE_OF_SCAN" HeaderText="Date_Of_Scan" SortExpression="DATE_OF_SCAN" />
                             <asp:BoundField DataField="column3" HeaderText="EAN # Of Received Item (For Wh)" SortExpression="column3" />
                             <asp:BoundField DataField="column4" HeaderText="Qty Received With PK Size(For Wh)" SortExpression="column4" />
                             <asp:BoundField DataField="SINGLE_RECEIVED" HeaderText="Single_Received" SortExpression="SINGLE_RECEIVED" />
                             <asp:BoundField DataField="column5" HeaderText="Sellable Qty (For Wh)" SortExpression="column5" />
                             <asp:BoundField DataField="column6" HeaderText="Damage Qty(For Wh)" SortExpression="column6" />
                             <asp:BoundField DataField="column7" HeaderText="Expired Qty(For Wh)" SortExpression="column7" />
                             <asp:BoundField DataField="column8" HeaderText="Expiry Date(For Wh)" SortExpression="column8" DataFormatString="{0:MM/dd/yyyy}" />
                             <asp:BoundField DataField="column9" HeaderText="Box No(Wh)" SortExpression="column9" />
                             <asp:BoundField DataField="column10" HeaderText="Pallet No(For Wh)" SortExpression="column10" />
                             <asp:BoundField DataField="column11" HeaderText="Qty Missing With PK Size(For Wh)" SortExpression="column11" />
                             <asp:BoundField DataField="column13" HeaderText="Missing Single Qty(For Wh)" SortExpression="column13" />
                             <asp:BoundField DataField="column12" HeaderText="Comments From W/H" SortExpression="column12" />
                             <asp:BoundField DataField="LEFT_UNITS_PACK_SIZE_WH" HeaderText="Left Units Pack_Size_Wh" SortExpression="LEFT_UNITS_PACK_SIZE_WH" />
                             <asp:BoundField DataField="LEFT_UNITS_WH_SINGLE" HeaderText="Left Units Wh Single" SortExpression="LEFT_UNITS_WH_SINGLE" />
                             <asp:BoundField DataField="column14" HeaderText="Tracking No" SortExpression="column14" />
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
                     <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" DeleteCommand="DELETE FROM [Tbl_ReCall_Polland] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_ReCall_Polland] ([REQUEST-DATE], [FNSKU], [SHIPPED-QUANTITY], [CARRIER], [NAV CODE], [DATE OF SCAN], [EAN # OF RECEIVED ITEM (FOR WH)], [QTY RECEIVED WITH PK SIZE (FOR WH)], [SINGLE RECEIVED], [SELLABLE QTY (FOR WH)], [DAMAGE QTY (FOR WH)], [EXPIRED QTY (FOR WH)], [EXPIRY DATE (FOR WH)], [BOX NO (FOR WH)], [PALLET NO(FOR W/H)], [QTY MISSING WITH PK SIZE (FOR WH)], [COMMENTS FROM W/H], [MISSING SINGLE QTY (FOR WH)], [COMMENT], [LEFT UNITS PACK SIZE WH], [LEFT UNITS WH SINGLE], [TRACKING-NUMBER]) VALUES (@column1, @FNSKU, @column2, @CARRIER, @NAV_CODE, @DATE_OF_SCAN, @column3, @column4, @SINGLE_RECEIVED, @column5, @column6, @column7, @column8, @column9, @column10, @column11, @column12, @column13, @COMMENT, @LEFT_UNITS_PACK_SIZE_WH, @LEFT_UNITS_WH_SINGLE, @column14)" SelectCommand="SELECT [REQUEST-DATE] AS column1, [FNSKU], [SHIPPED-QUANTITY] AS column2, [CARRIER], [NAV CODE] AS NAV_CODE, [DATE OF SCAN] AS DATE_OF_SCAN, [EAN # OF RECEIVED ITEM (FOR WH)] AS column3, [QTY RECEIVED WITH PK SIZE (FOR WH)] AS column4, [SINGLE RECEIVED] AS SINGLE_RECEIVED, [SELLABLE QTY (FOR WH)] AS column5, [DAMAGE QTY (FOR WH)] AS column6, [EXPIRED QTY (FOR WH)] AS column7, [EXPIRY DATE (FOR WH)] AS column8, [BOX NO (FOR WH)] AS column9, [PALLET NO(FOR W/H)] AS column10, [QTY MISSING WITH PK SIZE (FOR WH)] AS column11, [COMMENTS FROM W/H] AS column12, [MISSING SINGLE QTY (FOR WH)] AS column13, [LEFT UNITS PACK SIZE WH] AS LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] AS LEFT_UNITS_WH_SINGLE, [TRACKING-NUMBER] AS column14, [id] FROM [Tbl_ReCall_Polland] ORDER BY ID DESC" UpdateCommand="UPDATE [Tbl_ReCall_Polland] SET  [REQUEST-DATE] = @column1, [FNSKU] = @FNSKU, [SHIPPED-QUANTITY] = @column2, [CARRIER] = @CARRIER, [NAV CODE] = @NAV_CODE, [DATE OF SCAN] = @DATE_OF_SCAN, [EAN # OF RECEIVED ITEM (FOR WH)] = @column3, [QTY RECEIVED WITH PK SIZE (FOR WH)] = @column4, [SINGLE RECEIVED] = @SINGLE_RECEIVED, [SELLABLE QTY (FOR WH)] = @column5, [DAMAGE QTY (FOR WH)] = @column6, [EXPIRED QTY (FOR WH)] = @column7, [EXPIRY DATE (FOR WH)] = @column8, [BOX NO (FOR WH)] = @column9, [PALLET NO(FOR W/H)] = @column10, [QTY MISSING WITH PK SIZE (FOR WH)] = @column11, [COMMENTS FROM W/H] = @column12, [MISSING SINGLE QTY (FOR WH)] = @column13, [COMMENT] = @COMMENT, [LEFT UNITS PACK SIZE WH] = @LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] = @LEFT_UNITS_WH_SINGLE, [TRACKING-NUMBER] = @column14 WHERE [id] = @id">--%>

                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BCDWsqldatabaseConnectionString %>" DeleteCommand="DELETE FROM [Tbl_ReCall_Polland] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_ReCall_Polland] ([FNSKU], [SHIPPED-QUANTITY], [CARRIER], [NAV CODE], [DATE OF SCAN], [EAN # OF RECEIVED ITEM (FOR WH)], [QTY RECEIVED WITH PK SIZE (FOR WH)], [SINGLE RECEIVED], [SELLABLE QTY (FOR WH)], [DAMAGE QTY (FOR WH)], [EXPIRED QTY (FOR WH)], [EXPIRY DATE (FOR WH)], [BOX NO (FOR WH)], [PALLET NO(FOR W/H)], [QTY MISSING WITH PK SIZE (FOR WH)], [COMMENTS FROM W/H], [MISSING SINGLE QTY (FOR WH)], [COMMENT], [LEFT UNITS PACK SIZE WH], [LEFT UNITS WH SINGLE], [TRACKING-NUMBER]) VALUES (@FNSKU, @column2, @CARRIER, @NAV_CODE, @DATE_OF_SCAN, @column3, @column4, @SINGLE_RECEIVED, @column5, @column6, @column7, @column8, @column9, @column10, @column11, @column12, @column13, @COMMENT, @LEFT_UNITS_PACK_SIZE_WH, @LEFT_UNITS_WH_SINGLE, @column14)" SelectCommand="SELECT [REQUEST-DATE] AS column1, [FNSKU], [SHIPPED-QUANTITY] AS column2, [CARRIER], [NAV CODE] AS NAV_CODE, [DATE OF SCAN] AS DATE_OF_SCAN, [EAN # OF RECEIVED ITEM (FOR WH)] AS column3, [QTY RECEIVED WITH PK SIZE (FOR WH)] AS column4, [SINGLE RECEIVED] AS SINGLE_RECEIVED, [SELLABLE QTY (FOR WH)] AS column5, [DAMAGE QTY (FOR WH)] AS column6, [EXPIRED QTY (FOR WH)] AS column7, [EXPIRY DATE (FOR WH)] AS column8, [BOX NO (FOR WH)] AS column9, [PALLET NO(FOR W/H)] AS column10, [QTY MISSING WITH PK SIZE (FOR WH)] AS column11, [COMMENTS FROM W/H] AS column12, [MISSING SINGLE QTY (FOR WH)] AS column13, [LEFT UNITS PACK SIZE WH] AS LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] AS LEFT_UNITS_WH_SINGLE, [TRACKING-NUMBER] AS column14, [id] FROM [Tbl_ReCall_Polland] ORDER BY ID DESC" UpdateCommand="UPDATE [Tbl_ReCall_Polland] SET  [FNSKU] = @FNSKU, [SHIPPED-QUANTITY] = @column2, [CARRIER] = @CARRIER, [NAV CODE] = @NAV_CODE, [DATE OF SCAN] = @DATE_OF_SCAN, [EAN # OF RECEIVED ITEM (FOR WH)] = @column3, [QTY RECEIVED WITH PK SIZE (FOR WH)] = @column4, [SINGLE RECEIVED] = @SINGLE_RECEIVED, [SELLABLE QTY (FOR WH)] = @column5, [DAMAGE QTY (FOR WH)] = @column6, [EXPIRED QTY (FOR WH)] = @column7, [EXPIRY DATE (FOR WH)] = @column8, [BOX NO (FOR WH)] = @column9, [PALLET NO(FOR W/H)] = @column10, [QTY MISSING WITH PK SIZE (FOR WH)] = @column11, [COMMENTS FROM W/H] = @column12, [MISSING SINGLE QTY (FOR WH)] = @column13, [COMMENT] = @COMMENT, [LEFT UNITS PACK SIZE WH] = @LEFT_UNITS_PACK_SIZE_WH, [LEFT UNITS WH SINGLE] = @LEFT_UNITS_WH_SINGLE, [TRACKING-NUMBER] = @column14 WHERE [id] = @id">
                         <DeleteParameters>
                             <asp:Parameter Name="id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter DbType="Date" Name="column1" />
                             <asp:Parameter Name="FNSKU" Type="String" />
                             <asp:Parameter Name="column2" Type="Double" />
                             <asp:Parameter Name="CARRIER" Type="String" />
                             <asp:Parameter Name="NAV_CODE" Type="Double" />
                             <asp:Parameter Name="DATE_OF_SCAN" Type="String" />
                             <asp:Parameter Name="column3" Type="Double" />
                             <asp:Parameter Name="column4" Type="Double" />
                             <asp:Parameter Name="SINGLE_RECEIVED" Type="Double" />
                             <asp:Parameter Name="column5" Type="Double" />
                             <asp:Parameter Name="column6" Type="String" />
                             <asp:Parameter Name="column7" Type="String" />
                             <asp:Parameter Name="column8" Type="String" />
                             <asp:Parameter Name="column9" Type="Double" />
                             <asp:Parameter Name="column10" Type="Double" />
                             <asp:Parameter Name="column11" Type="Double" />
                             <asp:Parameter Name="column12" Type="String" />
                             <asp:Parameter Name="column13" Type="Double" />
                             <asp:Parameter Name="COMMENT" Type="String" />
                             <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                             <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                             <asp:Parameter Name="column14" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter DbType="Date" Name="column1" />
                             <asp:Parameter Name="FNSKU" Type="String" />
                             <asp:Parameter Name="column2" Type="Double" />
                             <asp:Parameter Name="CARRIER" Type="String" />
                             <asp:Parameter Name="NAV_CODE" Type="Double" />
                             <asp:Parameter Name="DATE_OF_SCAN" Type="String" />
                             <asp:Parameter Name="column3" Type="Double" />
                             <asp:Parameter Name="column4" Type="Double" />
                             <asp:Parameter Name="SINGLE_RECEIVED" Type="Double" />
                             <asp:Parameter Name="column5" Type="Double" />
                             <asp:Parameter Name="column6" Type="String" />
                             <asp:Parameter Name="column7" Type="String" />
                             <asp:Parameter Name="column8" Type="String" />
                             <asp:Parameter Name="column9" Type="Double" />
                             <asp:Parameter Name="column10" Type="Double" />
                             <asp:Parameter Name="column11" Type="Double" />
                             <asp:Parameter Name="column12" Type="String" />
                             <asp:Parameter Name="column13" Type="Double" />
                             <asp:Parameter Name="COMMENT" Type="String" />
                             <asp:Parameter Name="LEFT_UNITS_PACK_SIZE_WH" Type="Double" />
                             <asp:Parameter Name="LEFT_UNITS_WH_SINGLE" Type="Double" />
                             <asp:Parameter Name="column14" Type="String" />
                             <asp:Parameter Name="id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                </div>
                     </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
