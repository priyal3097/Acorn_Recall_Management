<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Acorn_Recall_Management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <%--<link href="Style.css" rel="stylesheet" />--%>

    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 375px;
        }
        .auto-style4 {
            width: 272px;
        }
        .auto-style5 {
            width: 308px;
        }
        .auto-style7 {
            width: 100%;
            text-align: left;
            height: 28px;
            margin-top: 0px;
        }
        .auto-style8 {
            height: 816px;
        }
        .auto-style9 {
            width: 100%;
            height: 80px;
            margin-top: 1px;
        }
        .backimg {
            background-image : url(Image/Login_Background.jpg);
            width : 100%;
            height : 100%;
            background-repeat : no-repeat;
            background-size : cover;
             min-height: 100vh;
        }
        .auto-style10 {
            margin-top: 15px;
        }
        .auto-style12 {
            background-image: url('Image/Login_Background.jpg');
            background-repeat : no-repeat;
            background-size : cover;
        }
    </style>

</head>
<body style="height: 826px; margin-bottom: 137px">
    <form id="form1" runat="server">
    <section class="auto-style8">
        &nbsp;<%--<img src="Image/backimg2.jpg" class="--%><asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/Login_Background.jpg" CssClass="auto-style12" Height="950px">
            <asp:Panel ID="Panel2" runat="server" BorderStyle="None" CssClass="auto-style1" Height="107px">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Image/Acorn_iMAGE.png" Width="260px" />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel4" runat="server" BorderStyle="None" CssClass="auto-style1" Height="478px">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="23pt" ForeColor="Black" Text="UserID:"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox placeholder="Enter UserName"  ID="TXTUSERNAME" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Names="Segoe UI" Font-Size="14pt" Height="31px" ValidationGroup="ValGroup" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="23pt" ForeColor="Black" Text="Password:"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox placeholder="Enter PassWord"  ID="TxtPassword" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Names="Segoe UI" Font-Size="14pt" Height="31px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td class="auto-style5">
                            <asp:Label ID="LBLSTATUS" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="13pt" ForeColor="Red"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Lblpasserror" runat="server" Font-Bold="True" Font-Names="Segoe UI" Font-Size="13pt" ForeColor="Red"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:Button ID="CMDOK" runat="server" BackColor="#0066CC" Font-Bold="True" Font-Names="Segoe UI" Font-Size="23pt" ForeColor="White" Height="52px" style="background-image: url('http://localhost:54754/Images/img/Login1.png')" Text="Login" Width="202px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" BorderStyle="None" Height="140px" CssClass="auto-style10">
                <table class="auto-style9">
                    <caption>
                        <p class="auto-style7">
                            <strong>© <%: DateTime.Now.Year %>- Acorn Universal Consultancy LLP</strong></p>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </caption>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;   </td>
                        
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            </asp:Panel>
            <br />
        </asp:Panel>

    </section>
    </form>
</body>
</html>