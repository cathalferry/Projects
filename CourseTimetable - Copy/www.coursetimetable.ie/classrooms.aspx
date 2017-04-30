

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="classrooms.aspx.cs" Inherits="CourseTimetable.classrooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /></strong></p>
    <p>
        <strong>Classroom Information</strong><br />
        View all classroom information below</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Class_Number" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Max_CapacityLabel" runat="server" Text='<%# Eval("Max_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
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
                        <asp:TextBox ID="Room_CapacityTextBox" runat="server" Text='<%# Bind("Room_Capacity") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Max_CapacityTextBox" runat="server" Text='<%# Bind("Max_Capacity") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_FreeTextBox" runat="server" Text='<%# Bind("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel1" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Building_NameTextBox" runat="server" Text='<%# Bind("Building_Name") %>' />
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
                        <asp:TextBox ID="Room_CapacityTextBox" runat="server" Text='<%# Bind("Room_Capacity") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Max_CapacityTextBox" runat="server" Text='<%# Bind("Max_Capacity") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Room_FreeTextBox" runat="server" Text='<%# Bind("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Class_NumberTextBox" runat="server" Text='<%# Bind("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Building_NameTextBox" runat="server" Text='<%# Bind("Building_Name") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Max_CapacityLabel" runat="server" Text='<%# Eval("Max_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Room_Capacity</th>
                                    <th runat="server">Max_Capacity</th>
                                    <th runat="server">Features</th>
                                    <th runat="server">Room_Free</th>
                                    <th runat="server">Class_Number</th>
                                    <th runat="server">Building_Name</th>
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
                        <asp:Label ID="Room_CapacityLabel" runat="server" Text='<%# Eval("Room_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Max_CapacityLabel" runat="server" Text='<%# Eval("Max_Capacity") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Room_FreeLabel" runat="server" Text='<%# Eval("Room_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Class_NumberLabel" runat="server" Text='<%# Eval("Class_Number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Building_NameLabel" runat="server" Text='<%# Eval("Building_Name") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" SelectCommand="SELECT
  Capacity_OK.Room_Capacity
 ,Classroom_Capacity.Max_Capacity
 ,Classroom_Features.Features
 ,Classroom_Free.Room_Free
 ,Classroom_table.Class_Number
 ,Building_Table.Building_Name
FROM dbo.Classroom_table
INNER JOIN dbo.Classroom_Free
  ON Classroom_table.Class_Status = Classroom_Free.Class_Status
INNER JOIN dbo.Classroom_Features
  ON Classroom_table.Features_ID = Classroom_Features.Features_ID
INNER JOIN dbo.Classroom_Capacity
  ON Classroom_table.Capacity_ID = Classroom_Capacity.Capacity_ID
INNER JOIN dbo.Capacity_OK
  ON Classroom_table.Capacity_status = Capacity_OK.Capacity_status
INNER JOIN dbo.Building_Table
  ON Classroom_table.Building_ID = Building_Table.Building_ID
"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
