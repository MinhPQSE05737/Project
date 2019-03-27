<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="demo1.MasterPage.container" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    .auto-style1 {
        height: 31px;
        text-align: center;
        
        
    }
    .auto-style2 {
        height: 32px;
        text-align: center;
    }
    .auto-style3 {
        height: 32px;
        text-align: center;
        width: 265px;
    }
    .Description{
        font-family: 'Times New Roman', Times, serif;
        font-size: medium;

    }
    .Price{
        font-size: xx-large;
        text-align: center;
        color: red;
    }
    
        .auto-style4 {
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            height: 32px;
        }
    
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" BorderStyle="Solid" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="150px" ImageUrl='<%# Eval("Url") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookID") %>'></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookType") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Notes") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="Price" colspan="2">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookPrice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="Price" colspan="2">
                        <asp:Button ID="Button1" runat="server" CommandName="ViewDetail" CommandArgument='<%# Eval("BookID") %>' OnClick="Button1_Click" Text="Button" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>



    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [Notes], [BookPrice], [BookType], [Url] FROM [Book]"></asp:SqlDataSource>
</asp:Content>
