<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="CourseTimetable.courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style1">Course Timetable </span></strong>
        <br />
        On this page you can Create, edit, delete or Update Course Infomration.<br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Course_Number" DataSourceID="courses_ds" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
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
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel1" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Course_NameTextBox" runat="server" Text='<%# Bind("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="College_IDTextBox" runat="server" Text='<%# Bind("College_ID") %>' />
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
                        <asp:TextBox ID="Course_NumberTextBox" runat="server" Text='<%# Bind("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Course_NameTextBox" runat="server" Text='<%# Bind("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="College_IDTextBox" runat="server" Text='<%# Bind("College_ID") %>' />
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
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
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
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">Course_Number</th>
                                    <th runat="server">Course_Name</th>
                                    <th runat="server">College_ID</th>
                                    <th runat="server">Department_ID</th>
                                    <th runat="server">ID_Number</th>
                                    <th runat="server">Pre_ID</th>
                                    <th runat="server">No_of_Students</th>
                                    <th runat="server">Course_Assigned</th>
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
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
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
                        <asp:Label ID="Course_NumberLabel" runat="server" Text='<%# Eval("Course_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Course_NameLabel" runat="server" Text='<%# Eval("Course_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="College_IDLabel" runat="server" Text='<%# Eval("College_ID") %>' />
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
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="courses_ds" runat="server" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Course_Table] WHERE [Course_Number] = @Course_Number" InsertCommand="INSERT INTO [Course_Table] ([Course_Number], [Course_Name], [College_ID], [Department_ID], [ID_Number], [Pre_ID], [No_of_Students], [Course_Assigned]) VALUES (@Course_Number, @Course_Name, @College_ID, @Department_ID, @ID_Number, @Pre_ID, @No_of_Students, @Course_Assigned)" SelectCommand="SELECT [Course_Number], [Course_Name], [College_ID], [Department_ID], [ID_Number], [Pre_ID], [No_of_Students], [Course_Assigned] FROM [Course_Table]" UpdateCommand="UPDATE [Course_Table] SET [Course_Name] = @Course_Name, [College_ID] = @College_ID, [Department_ID] = @Department_ID, [ID_Number] = @ID_Number, [Pre_ID] = @Pre_ID, [No_of_Students] = @No_of_Students, [Course_Assigned] = @Course_Assigned WHERE [Course_Number] = @Course_Number">
            <DeleteParameters>
                <asp:Parameter Name="Course_Number" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Course_Number" Type="String" />
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="College_ID" Type="Decimal" />
                <asp:Parameter Name="Department_ID" Type="Decimal" />
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="Pre_ID" Type="Decimal" />
                <asp:Parameter Name="No_of_Students" Type="Decimal" />
                <asp:Parameter Name="Course_Assigned" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Course_Name" Type="String" />
                <asp:Parameter Name="College_ID" Type="Decimal" />
                <asp:Parameter Name="Department_ID" Type="Decimal" />
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="Pre_ID" Type="Decimal" />
                <asp:Parameter Name="No_of_Students" Type="Decimal" />
                <asp:Parameter Name="Course_Assigned" Type="String" />
                <asp:Parameter Name="Course_Number" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
