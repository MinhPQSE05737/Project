<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="demo1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 26px;
            text-align: center;
            width: 415px;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="832px" BorderStyle="Ridge" RepeatDirection="Horizontal">
            <ItemTemplate>
                <br />
                <table align="center" class="auto-style1" border="2">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Image ID="Image1" runat="server"  Height="150px" Width="100px"   ImageUrl='<%# Eval("Url")    %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("BookID") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("BookType") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("BookTitle") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Notes") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("BookPrice") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreDBConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [Notes], [BookPrice], [Url], [BookType] FROM [Book]"></asp:SqlDataSource>
    </form>
</body>
</html>
