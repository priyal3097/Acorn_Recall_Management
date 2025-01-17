<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_Testing.aspx.vb" Inherits="Acorn_Recall_Management.Frm_Testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 659px;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            width: 873px;
        }
        .auto-style15 {
            width: 369px;
        }
        .auto-style16 {
            width: 369px;
            height: 45px;
        }
        .auto-style17 {
            width: 873px;
            height: 45px;
        }
        .auto-style18 {
            height: 45px;
        }
        .auto-style19 {
            margin-left: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style12">


        <table class="auto-style13">
            <tr>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="DropType" DataTextField="Accountt" DataValueField="Accountt" Height="16px" Width="151px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DropType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT DISTINCT [Accountt] FROM [Tbl_ReCall_Polland_2024]"></asp:SqlDataSource>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DropTracking" DataTextField="column1" DataValueField="column1" Height="22px" Width="156px" AppendDataBoundItems="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DropTracking" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT DISTINCT [TRACKING-NUMBER] AS column1 FROM [Tbl_ReCall_Polland_2024] WHERE ([Accountt] = @Accountt)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="Accountt" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="222px" TextMode="MultiLine"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="32px" Text="Search" Width="80px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="28px" Width="154px">
                    </asp:DropDownList>

                    <asp:DropDownList ID="ddlCustomers" runat="server" CssClass="auto-style19" DataSourceID="DropTracking">
    <asp:ListItem Text="--Select Customer--" Value="0" />
    <asp:ListItem Text="John Hammond" Value="1" />
    <asp:ListItem Text="Mudassar Khan" Value="2" />
    <asp:ListItem Text="Suzanne Mathews" Value="3" />
    <asp:ListItem Text="Robert Schidner" Value="4" />
</asp:DropDownList>

                    <br />
                    <br />
                    <br />
                    <br />

                     <asp:DropDownList ID="ddlItems" runat="server" CssClass="auto-style19" Width="300px">
            </asp:DropDownList>

                </td>


                <td class="auto-style14">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="GridTracking" Height="146px" Width="558px">
                        <Columns>
                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                            <asp:BoundField DataField="FNSKU" HeaderText="FNSKU" SortExpression="FNSKU" />
                            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                            <asp:BoundField DataField="TRACKING_STATUS" HeaderText="TRACKING_STATUS" SortExpression="TRACKING_STATUS" />
                            <asp:BoundField DataField="ASIN" HeaderText="ASIN" SortExpression="ASIN" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="GridTracking" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [SKU], [FNSKU], [TRACKING-NUMBER] AS column1, [TRACKING STATUS] AS TRACKING_STATUS, [ASIN] FROM [Tbl_ReCall_Polland_2024] WHERE ([TRACKING-NUMBER] = @column1)">
                                                                                                                                                                                                                                                                                                                                                                                                         
                    <%--<asp:SqlDataSource ID="GridTracking" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [SKU], [FNSKU], [TRACKING-NUMBER] AS column1, [TRACKING STATUS] AS TRACKING_STATUS, [ASIN] FROM [Tbl_ReCall_Polland_2024] WHERE ([TRACKING-NUMBER]  LIKE '%' + @column1 + '%' OR @column1 = ''">--%>
                    <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="column1" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="222px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="146px" Width="558px" DataKeyNames="id">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                            <asp:BoundField DataField="SKU" HeaderText="SKU" SortExpression="SKU" />
                            <asp:BoundField DataField="FNSKU" HeaderText="FNSKU" SortExpression="FNSKU" />
                            <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
                            <asp:BoundField DataField="TRACKING_STATUS" HeaderText="TRACKING_STATUS" SortExpression="TRACKING_STATUS" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [Tbl_ReCall_Polland_2024] WHERE [id] = @id" InsertCommand="INSERT INTO [Tbl_ReCall_Polland_2024] ([ORDER-ID], [SKU], [FNSKU], [TRACKING-NUMBER], [TRACKING STATUS]) VALUES (@column1, @SKU, @FNSKU, @column2, @TRACKING_STATUS)" SelectCommand="SELECT [ORDER-ID] AS column1, [SKU], [FNSKU], [TRACKING-NUMBER] AS column2, [TRACKING STATUS] AS TRACKING_STATUS, [id] FROM [Tbl_ReCall_Polland_2024] WHERE ([TRACKING-NUMBER] = @column1)" UpdateCommand="UPDATE [Tbl_ReCall_Polland_2024] SET [ORDER-ID] = @column1, [SKU] = @SKU, [FNSKU] = @FNSKU, [TRACKING-NUMBER] = @column2, [TRACKING STATUS] = @TRACKING_STATUS WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="column1" Type="String" />
                            <asp:Parameter Name="SKU" Type="String" />
                            <asp:Parameter Name="FNSKU" Type="String" />
                            <asp:Parameter Name="column2" Type="String" />
                            <asp:Parameter Name="TRACKING_STATUS" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="column1" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="column1" Type="String" />
                            <asp:Parameter Name="SKU" Type="String" />
                            <asp:Parameter Name="FNSKU" Type="String" />
                            <asp:Parameter Name="column2" Type="String" />
                            <asp:Parameter Name="TRACKING_STATUS" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button2" runat="server" Text="Button" Width="87px" />
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </div>
</asp:Content>
