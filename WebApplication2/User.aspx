<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CourseTimetable.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /></strong></p>
    <p>
        <strong>View all registered users.</strong></p>
    <p>
        Administration options allow the user to add, update or delete records.</p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserTypeLabel" runat="server" Text='<%# Eval("UserType") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UserTypeTextBox" runat="server" Text='<%# Bind("UserType") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UserTypeTextBox" runat="server" Text='<%# Bind("UserType") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserTypeLabel" runat="server" Text='<%# Eval("UserType") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">UserID</th>
                                    <th runat="server">Password</th>
                                    <th runat="server">UserType</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserTypeLabel" runat="server" Text='<%# Eval("UserType") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [User_Table] WHERE [UserID] = @original_UserID AND [Password] = @original_Password AND (([UserType] = @original_UserType) OR ([UserType] IS NULL AND @original_UserType IS NULL))" InsertCommand="INSERT INTO [User_Table] ([UserID], [Password], [UserType]) VALUES (@UserID, @Password, @UserType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserID], [Password], [UserType] FROM [User_Table]" UpdateCommand="UPDATE [User_Table] SET [Password] = @Password, [UserType] = @UserType WHERE [UserID] = @original_UserID AND [Password] = @original_Password AND (([UserType] = @original_UserType) OR ([UserType] IS NULL AND @original_UserType IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UserID" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserType" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserType" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserType" Type="Int32" />
                <asp:Parameter Name="original_UserID" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserType" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
