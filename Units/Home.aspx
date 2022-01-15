<%@ Page Title="Home" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Units.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 45%">
            <h1>Units</h1>
        </div>
        <div style="display: inline-block;">
            <div>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2" style="align-content: center">Data Entry For Unit Master</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnitName" runat="server" Text="Unit Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUnitName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnitGroup" runat="server" Text="Unit Group"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUnitGroup" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnitDescription" runat="server" Text="Unit Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUnitDescription" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div>
                <asp:GridView ID="gvUnitMasterData" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Untmst_id" DataSourceID="SqlDataSource" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="Untmst_id" HeaderText="Untmst_id" InsertVisible="False" ReadOnly="True" SortExpression="Untmst_id" />
                        <asp:BoundField DataField="Unit_name" HeaderText="Unit_name" SortExpression="Unit_name" />
                        <asp:BoundField DataField="Unit_group" HeaderText="Unit_group" SortExpression="Unit_group" />
                        <asp:BoundField DataField="Unit_desc" HeaderText="Unit_desc" SortExpression="Unit_desc" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UnitsConnectionString %>" DeleteCommand="DELETE FROM [tbl_UNTMST] WHERE [Untmst_id] = @Untmst_id" InsertCommand="INSERT INTO [tbl_UNTMST] ([Unit_name], [Unit_group], [Unit_desc]) VALUES (@Unit_name, @Unit_group, @Unit_desc)" SelectCommand="SELECT * FROM [tbl_UNTMST]" UpdateCommand="UPDATE [tbl_UNTMST] SET [Unit_name] = @Unit_name, [Unit_group] = @Unit_group, [Unit_desc] = @Unit_desc WHERE [Untmst_id] = @Untmst_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Unit_name" Type="String" />
                        <asp:Parameter Name="Unit_group" Type="String" />
                        <asp:Parameter Name="Unit_desc" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Unit_name" Type="String" />
                        <asp:Parameter Name="Unit_group" Type="String" />
                        <asp:Parameter Name="Unit_desc" Type="String" />
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div style="display: inline-block;">
            <div>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2" style="align-content: center">Data Entry For Group Master</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblGroupCode" runat="server" Text="Group Code"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGroupCode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblGroupName" runat="server" Text="Group Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGroupName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnderGroupName" runat="server" Text="Under Group Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUnderGroupName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblGroupDescription" runat="server" Text="Group Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGroupDescription" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnitMasterId" runat="server" Text="Unit Master Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlUnitMasterId" runat="server" DataSourceID="SqlDataSource" DataTextField="Untmst_id" DataValueField="Untmst_id"></asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>
                                <asp:Button ID="btnSbmitGroupData" runat="server" Text="Submit" OnClick="btnSbmitGroupData_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div>
                <asp:GridView ID="gvGroupMasterData" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Grpmst_id" DataSourceID="GroupMasterTableDB" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Grpmst_id" HeaderText="Grpmst_id" InsertVisible="False" ReadOnly="True" SortExpression="Grpmst_id" />
                        <asp:BoundField DataField="Group_code" HeaderText="Group_code" SortExpression="Group_code" />
                        <asp:BoundField DataField="Group_name" HeaderText="Group_name" SortExpression="Group_name" />
                        <asp:BoundField DataField="Und_group" HeaderText="Und_group" SortExpression="Und_group" />
                        <asp:BoundField DataField="Group_desc" HeaderText="Group_desc" SortExpression="Group_desc" />
                        <asp:BoundField DataField="Untmst_id" HeaderText="Untmst_id" SortExpression="Untmst_id" />
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="GroupMasterTableDB" runat="server" ConnectionString="<%$ ConnectionStrings:UnitsConnectionString %>" DeleteCommand="DELETE FROM [tbl_GRPMST] WHERE [Grpmst_id] = @Grpmst_id" InsertCommand="INSERT INTO [tbl_GRPMST] ([Group_code], [Group_name], [Und_group], [Group_desc], [Untmst_id]) VALUES (@Group_code, @Group_name, @Und_group, @Group_desc, @Untmst_id)" SelectCommand="SELECT * FROM [tbl_GRPMST]" UpdateCommand="UPDATE [tbl_GRPMST] SET [Group_code] = @Group_code, [Group_name] = @Group_name, [Und_group] = @Und_group, [Group_desc] = @Group_desc, [Untmst_id] = @Untmst_id WHERE [Grpmst_id] = @Grpmst_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Grpmst_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Group_code" Type="String" />
                        <asp:Parameter Name="Group_name" Type="String" />
                        <asp:Parameter Name="Und_group" Type="String" />
                        <asp:Parameter Name="Group_desc" Type="String" />
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Group_code" Type="String" />
                        <asp:Parameter Name="Group_name" Type="String" />
                        <asp:Parameter Name="Und_group" Type="String" />
                        <asp:Parameter Name="Group_desc" Type="String" />
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                        <asp:Parameter Name="Grpmst_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div style="display: inline-block;">
            <div>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2" style="align-content: center">Data Entry For Item Master</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="lblItemCode" runat="server" Text="ItemCode"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtItemCode" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblItemName" runat="server" Text="Item Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblItemSpecification" runat="server" Text="Item Specification"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtItemSpecification" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblGroupMasterId" runat="server" Text="Group Master Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlGroupMasterId" runat="server" DataSourceID="GroupMasterTableDB" DataTextField="Grpmst_id" DataValueField="Grpmst_id"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblGroupDescriptionItem" runat="server" Text="Group Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGroupDescriptionItem" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblUnitMmasterId" runat="server" Text="Unit Mmaster Id"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlUnitMmasterIdItem" runat="server" DataSourceID="SqlDataSource" DataTextField="Untmst_id" DataValueField="Untmst_id"></asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>
                                <asp:Button ID="btnSubmitItemData" runat="server" Text="Submit" OnClick="btnSubmitItemData_Click" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div>
                <asp:GridView ID="gvItemMasterData" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Itemas_id" DataSourceID="ItemMasterTableDB">
                    <Columns>
                        <asp:BoundField DataField="Itemas_id" HeaderText="Itemas_id" InsertVisible="False" ReadOnly="True" SortExpression="Itemas_id" />
                        <asp:BoundField DataField="It_code" HeaderText="It_code" SortExpression="It_code" />
                        <asp:BoundField DataField="It_name" HeaderText="It_name" SortExpression="It_name" />
                        <asp:BoundField DataField="It_spec" HeaderText="It_spec" SortExpression="It_spec" />
                        <asp:BoundField DataField="Grpmst_id" HeaderText="Grpmst_id" SortExpression="Grpmst_id" />
                        <asp:BoundField DataField="It_desc" HeaderText="It_desc" SortExpression="It_desc" />
                        <asp:BoundField DataField="Untmst_id" HeaderText="Untmst_id" SortExpression="Untmst_id" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="ItemMasterTableDB" runat="server" ConnectionString="<%$ ConnectionStrings:UnitsConnectionString %>" DeleteCommand="DELETE FROM [tbl_ITEMAS] WHERE [Itemas_id] = @Itemas_id" InsertCommand="INSERT INTO [tbl_ITEMAS] ([It_code], [It_name], [It_spec], [Grpmst_id], [It_desc], [Untmst_id]) VALUES (@It_code, @It_name, @It_spec, @Grpmst_id, @It_desc, @Untmst_id)" SelectCommand="SELECT * FROM [tbl_ITEMAS]" UpdateCommand="UPDATE [tbl_ITEMAS] SET [It_code] = @It_code, [It_name] = @It_name, [It_spec] = @It_spec, [Grpmst_id] = @Grpmst_id, [It_desc] = @It_desc, [Untmst_id] = @Untmst_id WHERE [Itemas_id] = @Itemas_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Itemas_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="It_code" Type="String" />
                        <asp:Parameter Name="It_name" Type="String" />
                        <asp:Parameter Name="It_spec" Type="String" />
                        <asp:Parameter Name="Grpmst_id" Type="Int32" />
                        <asp:Parameter Name="It_desc" Type="String" />
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="It_code" Type="String" />
                        <asp:Parameter Name="It_name" Type="String" />
                        <asp:Parameter Name="It_spec" Type="String" />
                        <asp:Parameter Name="Grpmst_id" Type="Int32" />
                        <asp:Parameter Name="It_desc" Type="String" />
                        <asp:Parameter Name="Untmst_id" Type="Int32" />
                        <asp:Parameter Name="Itemas_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
