<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Layout.Master" AutoEventWireup="true" CodeBehind="DetailBooks.aspx.cs" Inherits="demo1.MasterPage.DetailBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="text-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Url") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookType") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Notes") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("BookPrice") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT [BookTitle], [Notes], [BookPrice], [BookType], [Url] FROM [Book] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="@ID" Name="BookID" QueryStringField="ID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
