<%@ Language="C#" AutoEventWireup="true"  CodeBehind="lecturer.aspx.cs" Inherits="CourseTimetable.lecturer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-small;
            background-color: #CCCCFF;
        }
        #form1 {
            background-color: #CCCCFF;
        }
    </style>
</head>
<body style="font-size: x-small">
    
    <div class="auto-style1">
     <div class="jumbotron">
        <h1 style="background-color: #66CCFF">Lecturer Records Page</h1>
        <p class="lead">You can view lecturer records below, you may update, delete or add new records.</p>
         <p class="lead">&nbsp;</p>
        
    </div>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="ID_Number" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
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
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
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
                        <asp:TextBox ID="BackgroundTextBox" runat="server" Text='<%# Bind("Background") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
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
                        <asp:TextBox ID="BackgroundTextBox" runat="server" Text='<%# Bind("Background") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
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
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
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
                                    <th runat="server">Background</th>
                                    <th runat="server">Address</th>
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
                        <asp:Label ID="BackgroundLabel" runat="server" Text='<%# Eval("Background") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ct_ds_courses %>" DeleteCommand="DELETE FROM [Instructor_Table] WHERE [ID_Number] = @ID_Number" InsertCommand="INSERT INTO [Instructor_Table] ([ID_Number], [First_Name], [Initial], [Surname], [Background], [Address]) VALUES (@ID_Number, @First_Name, @Initial, @Surname, @Background, @Address)" SelectCommand="SELECT [ID_Number], [First_Name], [Initial], [Surname], [Background], [Address] FROM [Instructor_Table]" UpdateCommand="UPDATE [Instructor_Table] SET [First_Name] = @First_Name, [Initial] = @Initial, [Surname] = @Surname, [Background] = @Background, [Address] = @Address WHERE [ID_Number] = @ID_Number">
            <DeleteParameters>
                <asp:Parameter Name="ID_Number" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_Number" Type="Decimal" />
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Background" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Initial" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Background" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ID_Number" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
