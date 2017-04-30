<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="CourseTimetable.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /></strong></p>
    <p>
        <strong><span style="font-size: large">Student Information</span></strong><br />
        View all student information, you can edit, delete or add student records</p>
    <p>
        Grade ID Keys:
    </p>
    <p>
        1= First Class</p>
    <p>
        2 = Second Class</p>
    <p>
        3= 2:2</p>
    <p>
        4= 2:3</p>
    <p>
        5 = Fail</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Student_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_nameLabel" runat="server" Text='<%# Eval("First_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="initialLabel" runat="server" Text='<%# Eval("initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Grade_IDLabel" runat="server" Text='<%# Eval("Grade_ID") %>' />
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
                        <asp:Label ID="Student_IDLabel1" runat="server" Text='<%# Eval("Student_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="First_nameTextBox" runat="server" Text='<%# Bind("First_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="initialTextBox" runat="server" Text='<%# Bind("initial") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Grade_IDTextBox" runat="server" Text='<%# Bind("Grade_ID") %>' />
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
                        <asp:TextBox ID="Student_IDTextBox" runat="server" Text='<%# Bind("Student_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="First_nameTextBox" runat="server" Text='<%# Bind("First_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="initialTextBox" runat="server" Text='<%# Bind("initial") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Grade_IDTextBox" runat="server" Text='<%# Bind("Grade_ID") %>' />
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
                        <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Student_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_nameLabel" runat="server" Text='<%# Eval("First_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="initialLabel" runat="server" Text='<%# Eval("initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Grade_IDLabel" runat="server" Text='<%# Eval("Grade_ID") %>' />
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
                                    <th runat="server">Student_ID</th>
                                    <th runat="server">First_name</th>
                                    <th runat="server">initial</th>
                                    <th runat="server">Surname</th>
                                    <th runat="server">Address</th>
                                    <th runat="server">Birthday</th>
                                    <th runat="server">Gender</th>
                                    <th runat="server">Grade_ID</th>
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
                        <asp:Label ID="Student_IDLabel" runat="server" Text='<%# Eval("Student_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="First_nameLabel" runat="server" Text='<%# Eval("First_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="initialLabel" runat="server" Text='<%# Eval("initial") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Grade_IDLabel" runat="server" Text='<%# Eval("Grade_ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Student_Table] WHERE [Student_ID] = @original_Student_ID AND [First_name] = @original_First_name AND (([initial] = @original_initial) OR ([initial] IS NULL AND @original_initial IS NULL)) AND [Surname] = @original_Surname AND [Address] = @original_Address AND [Birthday] = @original_Birthday AND [Gender] = @original_Gender AND [Grade_ID] = @original_Grade_ID" InsertCommand="INSERT INTO [Student_Table] ([Student_ID], [First_name], [initial], [Surname], [Address], [Birthday], [Gender], [Grade_ID]) VALUES (@Student_ID, @First_name, @initial, @Surname, @Address, @Birthday, @Gender, @Grade_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Student_ID], [First_name], [initial], [Surname], [Address], [Birthday], [Gender], [Grade_ID] FROM [Student_Table] ORDER BY [Student_ID]" UpdateCommand="UPDATE [Student_Table] SET [First_name] = @First_name, [initial] = @initial, [Surname] = @Surname, [Address] = @Address, [Birthday] = @Birthday, [Gender] = @Gender, [Grade_ID] = @Grade_ID WHERE [Student_ID] = @original_Student_ID AND [First_name] = @original_First_name AND (([initial] = @original_initial) OR ([initial] IS NULL AND @original_initial IS NULL)) AND [Surname] = @original_Surname AND [Address] = @original_Address AND [Birthday] = @original_Birthday AND [Gender] = @original_Gender AND [Grade_ID] = @original_Grade_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_Student_ID" Type="Decimal" />
                <asp:Parameter Name="original_First_name" Type="String" />
                <asp:Parameter Name="original_initial" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Birthday" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Grade_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Student_ID" Type="Decimal" />
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Grade_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_name" Type="String" />
                <asp:Parameter Name="initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Grade_ID" Type="Decimal" />
                <asp:Parameter Name="original_Student_ID" Type="Decimal" />
                <asp:Parameter Name="original_First_name" Type="String" />
                <asp:Parameter Name="original_initial" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Birthday" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Grade_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
