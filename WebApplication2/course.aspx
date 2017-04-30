<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="CourseTimetable.course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /></strong></p>
    <p>
        <strong>View All Course Information Below</strong></p>
    <p>
        You can select, edit, update and delete records from the course database.<br />
    </p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Course_Number" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Department_IDLabel" runat="server" Text='<%# Eval("Department_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Pre_IDLabel" runat="server" Text='<%# Eval("Pre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="No_of_StudentsLabel" runat="server" Text='<%# Eval("No_of_Students") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_AssignedLabel" runat="server" Text='<%# Eval("Course_Assigned") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
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
                        <asp:TextBox ID="Course_NameTextBox" runat="server" Text='<%# Bind("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel1" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Department_IDTextBox" runat="server" Text='<%# Bind("Department_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ID_NumberTextBox" runat="server" Text='<%# Bind("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Pre_IDTextBox" runat="server" Text='<%# Bind("Pre_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="No_of_StudentsTextBox" runat="server" Text='<%# Bind("No_of_Students") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Course_AssignedTextBox" runat="server" Text='<%# Bind("Course_Assigned") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="College_IDTextBox" runat="server" Text='<%# Bind("College_ID") %>' />
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
                        <asp:TextBox ID="Course_NameTextBox" runat="server" Text='<%# Bind("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Course_NumberTextBox" runat="server" Text='<%# Bind("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Department_IDTextBox" runat="server" Text='<%# Bind("Department_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ID_NumberTextBox" runat="server" Text='<%# Bind("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Pre_IDTextBox" runat="server" Text='<%# Bind("Pre_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="No_of_StudentsTextBox" runat="server" Text='<%# Bind("No_of_Students") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Course_AssignedTextBox" runat="server" Text='<%# Bind("Course_Assigned") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="College_IDTextBox" runat="server" Text='<%# Bind("College_ID") %>' />
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
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Department_IDLabel" runat="server" Text='<%# Eval("Department_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Pre_IDLabel" runat="server" Text='<%# Eval("Pre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="No_of_StudentsLabel" runat="server" Text='<%# Eval("No_of_Students") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_AssignedLabel" runat="server" Text='<%# Eval("Course_Assigned") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
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
                                    <th runat="server">Course_Name</th>
                                    <th runat="server">Course_Number</th>
                                    <th runat="server">Department_ID</th>
                                    <th runat="server">ID_Number</th>
                                    <th runat="server">Pre_ID</th>
                                    <th runat="server">No_of_Students</th>
                                    <th runat="server">Course_Assigned</th>
                                    <th runat="server">College_ID</th>
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
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Department_IDLabel" runat="server" Text='<%# Eval("Department_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ID_NumberLabel" runat="server" Text='<%# Eval("ID_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Pre_IDLabel" runat="server" Text='<%# Eval("Pre_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="No_of_StudentsLabel" runat="server" Text='<%# Eval("No_of_Students") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_AssignedLabel" runat="server" Text='<%# Eval("Course_Assigned") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Course_Table] WHERE [Course_Number] = @original_Course_Number AND [Course_Name] = @original_Course_Name AND [Department_ID] = @original_Department_ID AND [ID_Number] = @original_ID_Number AND [Pre_ID] = @original_Pre_ID AND [No_of_Students] = @original_No_of_Students AND (([Course_Assigned] = @original_Course_Assigned) OR ([Course_Assigned] IS NULL AND @original_Course_Assigned IS NULL)) AND [College_ID] = @original_College_ID" InsertCommand="INSERT INTO [Course_Table] ([Course_Name], [Course_Number], [Department_ID], [ID_Number], [Pre_ID], [No_of_Students], [Course_Assigned], [College_ID]) VALUES (@Course_Name, @Course_Number, @Department_ID, @ID_Number, @Pre_ID, @No_of_Students, @Course_Assigned, @College_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Course_Name], [Course_Number], [Department_ID], [ID_Number], [Pre_ID], [No_of_Students], [Course_Assigned], [College_ID] FROM [Course_Table]" UpdateCommand="UPDATE [Course_Table] SET [Course_Name] = @Course_Name, [Department_ID] = @Department_ID, [ID_Number] = @ID_Number, [Pre_ID] = @Pre_ID, [No_of_Students] = @No_of_Students, [Course_Assigned] = @Course_Assigned, [College_ID] = @College_ID WHERE [Course_Number] = @original_Course_Number AND [Course_Name] = @original_Course_Name AND [Department_ID] = @original_Department_ID AND [ID_Number] = @original_ID_Number AND [Pre_ID] = @original_Pre_ID AND [No_of_Students] = @original_No_of_Students AND (([Course_Assigned] = @original_Course_Assigned) OR ([Course_Assigned] IS NULL AND @original_Course_Assigned IS NULL)) AND [College_ID] = @original_College_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_Course_Number" Type="String" />
                <asp:Parameter Name="original_Course_Name" Type="String" />
                <asp:Parameter Name="original_Department_ID" Type="Decimal" />
                <asp:Parameter Name="original_ID_Number" Type="Decimal" />
                <asp:Parameter Name="original_Pre_ID" Type="Decimal" />
                <asp:Parameter Name="original_No_of_Students" Type="Decimal" />
                <asp:Parameter Name="original_Course_Assigned" Type="String" />
                <asp:Parameter Name="original_College_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Course_Number" Type="String" />
                <asp:Parameter Name="Department_ID" Type="Decimal" />
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="Pre_ID" Type="Decimal" />
                <asp:Parameter Name="No_of_Students" Type="Decimal" />
                <asp:Parameter Name="Course_Assigned" Type="String" />
                <asp:Parameter Name="College_ID" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="Department_ID" Type="Decimal" />
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="Pre_ID" Type="Decimal" />
                <asp:Parameter Name="No_of_Students" Type="Decimal" />
                <asp:Parameter Name="Course_Assigned" Type="String" />
                <asp:Parameter Name="College_ID" Type="Decimal" />
                <asp:Parameter Name="original_Course_Number" Type="String" />
                <asp:Parameter Name="original_Course_Name" Type="String" />
                <asp:Parameter Name="original_Department_ID" Type="Decimal" />
                <asp:Parameter Name="original_ID_Number" Type="Decimal" />
                <asp:Parameter Name="original_Pre_ID" Type="Decimal" />
                <asp:Parameter Name="original_No_of_Students" Type="Decimal" />
                <asp:Parameter Name="original_Course_Assigned" Type="String" />
                <asp:Parameter Name="original_College_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
