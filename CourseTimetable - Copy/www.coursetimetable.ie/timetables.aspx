<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="timetables.aspx.cs" Inherits="CourseTimetable.timetables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <img alt="" src="file:///C:/Users/User/Pictures/logo.bmp" style="width: 750px; height: 96px; text-align: center" /><br />
        Timetable Information</strong></p>
    <p>
        View all timetable information, you can edit, delete or add course information.</p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Period_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Period_IDLabel" runat="server" Text='<%# Eval("Period_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Semester_IDLabel" runat="server" Text='<%# Eval("Semester_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Period_FreeLabel" runat="server" Text='<%# Eval("Period_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Start_TimeLabel" runat="server" Text='<%# Eval("Start_Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="End_TimeLabel" runat="server" Text='<%# Eval("End_Time") %>' />
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
                        <asp:Label ID="Period_IDLabel1" runat="server" Text='<%# Eval("Period_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Semester_IDTextBox" runat="server" Text='<%# Bind("Semester_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Period_FreeTextBox" runat="server" Text='<%# Bind("Period_Free") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Start_TimeTextBox" runat="server" Text='<%# Bind("Start_Time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="End_TimeTextBox" runat="server" Text='<%# Bind("End_Time") %>' />
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
                        <asp:TextBox ID="Period_IDTextBox" runat="server" Text='<%# Bind("Period_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Semester_IDTextBox" runat="server" Text='<%# Bind("Semester_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Period_FreeTextBox" runat="server" Text='<%# Bind("Period_Free") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Start_TimeTextBox" runat="server" Text='<%# Bind("Start_Time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="End_TimeTextBox" runat="server" Text='<%# Bind("End_Time") %>' />
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
                        <asp:Label ID="Period_IDLabel" runat="server" Text='<%# Eval("Period_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Semester_IDLabel" runat="server" Text='<%# Eval("Semester_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Period_FreeLabel" runat="server" Text='<%# Eval("Period_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Start_TimeLabel" runat="server" Text='<%# Eval("Start_Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="End_TimeLabel" runat="server" Text='<%# Eval("End_Time") %>' />
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
                                    <th runat="server">Period_ID</th>
                                    <th runat="server">Semester_ID</th>
                                    <th runat="server">Period_Free</th>
                                    <th runat="server">Start_Time</th>
                                    <th runat="server">End_Time</th>
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
                        <asp:Label ID="Period_IDLabel" runat="server" Text='<%# Eval("Period_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Semester_IDLabel" runat="server" Text='<%# Eval("Semester_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Period_FreeLabel" runat="server" Text='<%# Eval("Period_Free") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Start_TimeLabel" runat="server" Text='<%# Eval("Start_Time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="End_TimeLabel" runat="server" Text='<%# Eval("End_Time") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Period_Table] WHERE [Period_ID] = @original_Period_ID AND [Semester_ID] = @original_Semester_ID AND [Period_Free] = @original_Period_Free AND [Start_Time] = @original_Start_Time AND [End_Time] = @original_End_Time" InsertCommand="INSERT INTO [Period_Table] ([Period_ID], [Semester_ID], [Period_Free], [Start_Time], [End_Time]) VALUES (@Period_ID, @Semester_ID, @Period_Free, @Start_Time, @End_Time)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Period_ID], [Semester_ID], [Period_Free], [Start_Time], [End_Time] FROM [Period_Table]" UpdateCommand="UPDATE [Period_Table] SET [Semester_ID] = @Semester_ID, [Period_Free] = @Period_Free, [Start_Time] = @Start_Time, [End_Time] = @End_Time WHERE [Period_ID] = @original_Period_ID AND [Semester_ID] = @original_Semester_ID AND [Period_Free] = @original_Period_Free AND [Start_Time] = @original_Start_Time AND [End_Time] = @original_End_Time">
            <DeleteParameters>
                <asp:Parameter Name="original_Period_ID" Type="Decimal" />
                <asp:Parameter Name="original_Semester_ID" Type="Decimal" />
                <asp:Parameter Name="original_Period_Free" Type="Decimal" />
                <asp:Parameter Name="original_Start_Time" Type="String" />
                <asp:Parameter Name="original_End_Time" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Period_ID" Type="Decimal" />
                <asp:Parameter Name="Semester_ID" Type="Decimal" />
                <asp:Parameter Name="Period_Free" Type="Decimal" />
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_Time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Semester_ID" Type="Decimal" />
                <asp:Parameter Name="Period_Free" Type="Decimal" />
                <asp:Parameter Name="Start_Time" Type="String" />
                <asp:Parameter Name="End_Time" Type="String" />
                <asp:Parameter Name="original_Period_ID" Type="Decimal" />
                <asp:Parameter Name="original_Semester_ID" Type="Decimal" />
                <asp:Parameter Name="original_Period_Free" Type="Decimal" />
                <asp:Parameter Name="original_Start_Time" Type="String" />
                <asp:Parameter Name="original_End_Time" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>
