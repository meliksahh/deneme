<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="WebApplication1.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowInsertButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                    <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="telno" HeaderText="telno" SortExpression="telno" />
                    <asp:BoundField DataField="birim" HeaderText="birim" SortExpression="birim" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:esjimConnectionString %>" DeleteCommand="DELETE FROM [Personel] WHERE [id] = @original_id AND [adi] = @original_adi AND [soyadi] = @original_soyadi AND [email] = @original_email AND [telno] = @original_telno AND [birim] = @original_birim" InsertCommand="INSERT INTO [Personel] ([adi], [soyadi], [email], [telno], [birim]) VALUES (@adi, @soyadi, @email, @telno, @birim)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Personel]" UpdateCommand="UPDATE [Personel] SET [adi] = @adi, [soyadi] = @soyadi, [email] = @email, [telno] = @telno, [birim] = @birim WHERE [id] = @original_id AND [adi] = @original_adi AND [soyadi] = @original_soyadi AND [email] = @original_email AND [telno] = @original_telno AND [birim] = @original_birim">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_adi" Type="String" />
                    <asp:Parameter Name="original_soyadi" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_telno" Type="Decimal" />
                    <asp:Parameter Name="original_birim" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="adi" Type="String" />
                    <asp:Parameter Name="soyadi" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="telno" Type="Decimal" />
                    <asp:Parameter Name="birim" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="adi" Type="String" />
                    <asp:Parameter Name="soyadi" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="telno" Type="Decimal" />
                    <asp:Parameter Name="birim" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_adi" Type="String" />
                    <asp:Parameter Name="original_soyadi" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_telno" Type="Decimal" />
                    <asp:Parameter Name="original_birim" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
