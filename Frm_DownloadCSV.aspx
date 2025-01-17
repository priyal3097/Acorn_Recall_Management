<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_DownloadCSV.aspx.vb" Inherits="Acorn_Recall_Management.Frm_DownloadCSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 33px;
            margin-bottom: 6px;
        }
        .auto-style14 {
            width: 100%;
            margin-top: 21px;
        }
        .auto-style15 {
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style12">
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
                        <asp:MenuItem NavigateUrl="~/Frm_DownloadCSV.aspx" Text="CSV" Value="New Item"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style15"></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Height="38px" Text="Download BCG" Width="111px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
    </table>
</asp:Content>
