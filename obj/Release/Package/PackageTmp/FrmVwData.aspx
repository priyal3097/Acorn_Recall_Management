<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FrmVwData.aspx.vb" Inherits="Acorn_Recall_Management.FrmVwData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 30px;
            margin-bottom: 6px;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style16 {
            width: 1131px;
        }
        .auto-style17 {
            width: 538px;
        }
        .auto-style18 {
            overflow: auto;
            width: 1762px;
            height: 551px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style13">
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
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                <asp:TextBox placeholder="SEARCH TRACKING NUMBER" ID="txtTrackingNumbSearch" runat="server" Height="29px" Width="338px"></asp:TextBox>
                                &nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Search Tracking Number" Width="165px" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                &nbsp;
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="auto-style18">
                                <asp:GridView ID="GridView1" runat="server" Width="139%" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style11" Height="378px">
                                    

                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    

                                    <HeaderStyle BackColor="#A55129" ForeColor="White" Font-Bold="True" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>

                                </div>

                            </td>

                        </tr>
                         <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
    </table>
</asp:Content>
