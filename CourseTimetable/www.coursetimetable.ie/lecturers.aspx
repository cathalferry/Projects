<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="lecturers.aspx.cs" Inherits="CourseTimetable.lecturers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large">
        <strong>Lecturer Inormation</strong></p>
    <p>
        View All Lecturer Information. you can edit, add or delete records.
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID_Number" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="InitialLabel" runat="server" Text='<%# Eval("Initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
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
                        <asp:Label ID="ID_NumberLabel1" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="InitialTextBox" runat="server" Text='<%# Bind("Initial") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BackgroundTextBox" runat="server" Text='<%# Bind("Background") %>' />
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
                        <asp:TextBox ID="ID_NumberTextBox" runat="server" Text='<%# Bind("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="InitialTextBox" runat="server" Text='<%# Bind("Initial") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BackgroundTextBox" runat="server" Text='<%# Bind("Background") %>' />
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
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="InitialLabel" runat="server" Text='<%# Eval("Initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
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
                                    <th runat="server">ID_Number</th>
                                    <th runat="server">First_Name</th>
                                    <th runat="server">Initial</th>
                                    <th runat="server">Surname</th>
                                    <th runat="server">Address</th>
                                    <th runat="server">Background</th>
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
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="InitialLabel" runat="server" Text='<%# Eval("Initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Instructor_Table] WHERE [ID_Number] = @original_ID_Number AND [First_Name] = @original_First_Name AND (([Initial] = @original_Initial) OR ([Initial] IS NULL AND @original_Initial IS NULL)) AND [Surname] = @original_Surname AND [Address] = @original_Address AND (([Background] = @original_Background) OR ([Background] IS NULL AND @original_Background IS NULL))" InsertCommand="INSERT INTO [Instructor_Table] ([ID_Number], [First_Name], [Initial], [Surname], [Address], [Background]) VALUES (@ID_Number, @First_Name, @Initial, @Surname, @Address, @Background)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID_Number], [First_Name], [Initial], [Surname], [Address], [Background] FROM [Instructor_Table]" UpdateCommand="UPDATE [Instructor_Table] SET [First_Name] = @First_Name, [Initial] = @Initial, [Surname] = @Surname, [Address] = @Address, [Background] = @Background WHERE [ID_Number] = @original_ID_Number AND [First_Name] = @original_First_Name AND (([Initial] = @original_Initial) OR ([Initial] IS NULL AND @original_Initial IS NULL)) AND [Surname] = @original_Surname AND [Address] = @original_Address AND (([Background] = @original_Background) OR ([Background] IS NULL AND @original_Background IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID_Number" Type="Decimal" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Initial" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Background" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Background" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Background" Type="String" />
                <asp:Parameter Name="original_ID_Number" Type="Decimal" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Initial" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Background" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
