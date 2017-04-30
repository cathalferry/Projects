<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classroom.aspx.cs" Inherits="CourseTimetable.classroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Class_Number" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel1" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Building_NameTextBox" runat="server" Text='<%# Bind("Building_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_FreeTextBox" runat="server" Text='<%# Bind("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_CapacityTextBox" runat="server" Text='<%# Bind("Room_Capacity") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                        <asp:TextBox ID="Class_NumberTextBox" runat="server" Text='<%# Bind("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Building_NameTextBox" runat="server" Text='<%# Bind("Building_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_FreeTextBox" runat="server" Text='<%# Bind("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_CapacityTextBox" runat="server" Text='<%# Bind("Room_Capacity") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Class_Number</th>
                                    <th runat="server">Building_Name</th>
                                    <th runat="server">Room_Free</th>
                                    <th runat="server">Features</th>
                                    <th runat="server">Room_Capacity</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" InsertCommand="insert into @Classroom_table.Class_Number, @Building_Table.Building_Name, @Classroom_Free.Room_Free, @Classroom_Features.Features, @Capacity_OK.Room_Capacity FROM Classroom_table INNER JOIN Classroom_Free ON Classroom_table.Class_Status = Classroom_Free.Class_Status INNER JOIN Classroom_Features ON Classroom_table.Features_ID = Classroom_Features.Features_ID INNER JOIN Capacity_OK ON Classroom_table.Capacity_status = Capacity_OK.Capacity_status INNER JOIN Building_Table ON Classroom_table.Building_ID = Building_Table.Building_ID" SelectCommand="SELECT Classroom_table.Class_Number, Building_Table.Building_Name, Classroom_Free.Room_Free, Classroom_Features.Features, Capacity_OK.Room_Capacity FROM Classroom_table INNER JOIN Classroom_Free ON Classroom_table.Class_Status = Classroom_Free.Class_Status INNER JOIN Classroom_Features ON Classroom_table.Features_ID = Classroom_Features.Features_ID INNER JOIN Capacity_OK ON Classroom_table.Capacity_status = Capacity_OK.Capacity_status INNER JOIN Building_Table ON Classroom_table.Building_ID = Building_Table.Building_ID" UpdateCommand="UPDATE Classroom_table SET Class_Number =, Building_ID =, Capacity_ID =, Class_Status =, Features_ID =, Capacity_status =">
            <InsertParameters>
                <asp:Parameter Name="Classroom_table" />
                <asp:Parameter Name="Building_Table" />
                <asp:Parameter Name="Classroom_Free" />
                <asp:Parameter Name="Classroom_Features" />
                <asp:Parameter Name="Capacity_OK" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
