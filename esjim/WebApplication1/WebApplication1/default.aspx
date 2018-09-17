<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 352px;
        }
        .auto-style4 {
            width: 675px;
        }
        .auto-style5 {
            width: 202px;
        }
        .auto-style6 {
            width: 675px;
            height: 44px;
        }
        .auto-style7 {
            width: 202px;
            height: 44px;
        }
        .auto-style8 {
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-disabled="False">
            <center>
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style6">Kullanıcı Adi:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="kua" runat="server" Height="33px" Width="178px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Sifre:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="sif" runat="server" Height="33px" Width="178px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" Height="29px"  />
                        </center>
                    </td>
                </tr>
            </table>
                </center>
        </div>
    </form>
</body>
</html>
