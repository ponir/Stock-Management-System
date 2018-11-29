<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAndView.aspx.cs" Inherits="StockManagementSystem.UI.SearchAndView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            /*background-color: #302466;*/
            background-color: #336600;
        }
        /*td {
            font-weight: bold;
            
        }*/

        li {
            float: left;
        }

            li a, .dropbtn {
                display: inline-block;
                color: white;
                font-family: cursive;
                text-align: center;
                padding: 15px 12px;
                text-decoration: none;
                font-weight: bold;
                font-size: 16.4px;
            }

                li a:hover, .dropdown:hover .dropbtn {
                    background-color: purple;
                }

            li.dropdown {
                display: inline-block;
            }


        .containt {
            width: 500px;
            margin: 0 auto;
            /*//background-color: gray;*/
        }
    </style>
</head>
<body>
    <br />

    <ul style="margin: 0 auto; width: 68.5%">
        <li><a href="HomeUI.aspx">Home</a></li>
        <li><a href="CategorySet.Up.aspx">Category Setup</a></li>
        <li><a href="CompanySetup.aspx">Company Setup</a></li>
        <li><a href="ItemSetup.aspx">Item Setup</a></li>

        <li><a href="StockIn.aspx">Stock In </a></li>
        <li><a href="StockOut.aspx">Stock Out</a></li>
        <li><a href="SearchAndView.aspx">Item Summary</a></li>
        <li><a href="ViewSalesBetweenDates.aspx">View Sales</a></li>

    </ul>
    <form id="form1" runat="server">
        <div class="containt">
            <fieldset>
                <legend style="color: skyblue">
                    <h1>Search Item's Summary</h1>
                </legend>
                <table>
                    <tr>
                        <td>Company</td>
                        <td>
                            <asp:DropDownList ID="companyDropDownList" runat="server" Height="30px" Width="144px"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td>
                            <asp:DropDownList ID="categoryDropDownList" runat="server" Height="30px" Width="144px"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="searchButton" runat="server" Text="Search" Style="margin-left: 68px" OnClick="searchButton_Click" Height="36px" Width="74px" BackColor="#66CCFF" /></td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="itemSummaryMsgLabel" ForeColor="red" runat="server"></asp:Label>
                <br /><br />
                <asp:GridView ID="searchItemListGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" Height="19px" Width="496px" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                                <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyId")%>'></asp:Label>--%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ItemName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Company">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("AvailableQuantity")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Reorder Level">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ReorderLevel")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

            </fieldset>
        </div>
    </form>
    <div style="text-align: center">
        <br />
        <br />
        <br />
        <a class="auto-style1">All Rights Reserved @ Siddik ponir</a>
    </div>
</body>
</html>
