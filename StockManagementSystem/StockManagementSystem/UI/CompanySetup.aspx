<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySetup.aspx.cs" Inherits="StockManagementSystem.UI.CompanySetup" %>

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
                    <h1>Company Setup</h1>
                </legend>

                <table>
                    <tr>
                        <td>Name</td>
                        <td>
                            <asp:TextBox ID="companyTextBox" runat="server" Height="26px" Width="147px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>

                        <td>

                            <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click1" Style="margin-left: 70px" Text="Save" Width="82px" Height="33px" BackColor="#33CC33" />
                    </tr>
                </table>

                <br />
                <asp:Label ID="companyMsgLabel" ForeColor="red" runat="server" Text=""></asp:Label>
                
                <br/><br/>
                <asp:GridView ID="companyListGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="productListGridView_SelectedIndexChanged" Height="179px" Width="426px" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL">
                            <ItemTemplate>
                                <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("CompanyId")%>'></asp:Label>--%>
                                <%# Container.DataItemIndex + 1%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CompanyName")%>'></asp:Label>

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
