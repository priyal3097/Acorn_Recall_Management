<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Frm_FileUpload.aspx.vb" Inherits="Acorn_Recall_Management.Frm_FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-image: url('Image/Login_Background.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            min-height: 100vh;
        }
        .auto-style21 {
            width: 101%;
            height: 141px;
        }
        .auto-style15 {
            margin-top: 0px;
            margin-left: 8px;
        }
        .auto-style63 {
            height: 166px;
            width: 1750px;
            margin-left: 5px;
            margin-bottom: 0px;
        }
        .auto-style67 {
            width: 209px;
            height: 44px;
            text-align: left;
        }
        .auto-style68 {
            width: 10px;
            height: 44px;
            margin-top: 0px;
        }
        .auto-style69 {
            height: 44px;
            width: 1008px;
        }
        .auto-style70 {
            height: 26px;
        }
        .auto-style71 {
            width: 209px;
            height: 8px;
        }
        .auto-style72 {
            width: 10px;
            height: 8px;
            margin-top: 0px;
        }
        .auto-style73 {
            height: 8px;
            width: 1008px;
        }
        .auto-style74 {
            width: 209px;
            height: 6px;
        }
        .auto-style75 {
            width: 10px;
            height: 6px;
            margin-top: 0px;
        }
        .auto-style76 {
            height: 6px;
            width: 1008px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style63">
        <table class="auto-style21">
            <tr>
                <td class="auto-style70" colspan="3">
                    <asp:Panel ID="Panel5" runat="server" Height="24px" CssClass="auto-style15">
                        <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" Font-Bold="True" Font-Size="Large">
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
                    </asp:Panel>
                </td>
            </tr>

            <tr>
                <td class="auto-style67">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Account"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="39px" Width="124px" >
                        <asp:ListItem>Jambo - UK</asp:ListItem>
                        <asp:ListItem>VW360 - UK</asp:ListItem>
                        <asp:ListItem>LLP</asp:ListItem>
                        <asp:ListItem>ASL</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style68">
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFFCC" Font-Bold="True" Font-Names="Segoe UI" Font-Size="15pt" ForeColor="Black" Width="263px" Height="33px" />
                    &nbsp;
                </td>
                <td class="auto-style69">
                    &nbsp;<asp:Button ID="CMDUPLOAD" runat="server" BackColor="#0066CC" BorderColor="White" Font-Bold="True" Font-Names="Segoe UI" Font-Size="18pt" ForeColor="White" Height="38px" style="background-image: url('~/Image/Upldfile1.png'); margin-left: 4px;" Text="Upload File" Width="138px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>

            <tr>
                <td class="auto-style71">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Hello"></asp:Label>
                </td>
                <td class="auto-style72"></td>
                <td class="auto-style73">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>

            <tr>
                <td class="auto-style74">
                    <asp:Label ID="LBLPATH" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style75">
                    <asp:Label ID="LBLUPLOADERROR" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="11pt" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style76"></td>
            </tr>
        </table>
    </p>
</asp:Content>
