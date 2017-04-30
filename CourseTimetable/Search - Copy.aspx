<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CourseTimetable.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-4">
    </div>
    <img src="logo.jpg" style="width: 1046px; height: 139px" /><br />
        <h1>Search for a Student record</h1>
    <br />
    <p>
        Please select which database you would like to search from the drop down box, you can search student records by first name or last name. The details of that student and their final grade will be displayed.
    </p>
    <p>
        &nbsp;</p>
    <div class="form-group">
        <div class="col-md-10">
            <asp:DropDownList ID="cboDatabaseChoice" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cboDatabaseChoice_SelectedIndexChanged" runat="server" Width="476px">
                <asp:ListItem>Transactions</asp:ListItem>
                <asp:ListItem>Students</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-group">
        <asp:Label runat="server" AssociatedControlID="tbxSearchText" CssClass="col-md-2 control-label">Search text</asp:Label>
        <div class="col-md-10">
            <asp:TextBox runat="server" ID="tbxSearchText" CssClass="form-control" Width="443px" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbxSearchText"
                CssClass="text-danger" ErrorMessage="Text is required in the search box." />
            <br />
            <asp:Label ID="ErrorMessage" CssClass="text-danger" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" OnClick="Search_Click" Text="Search" CssClass="btn btn-default" />
            <br />
        </div>
    </div>

    <p>


        <div class="lead">
            <asp:ListView ID="lstAllProducts" runat="server" Visible="false" OnSelectedIndexChanged="lstAllProducts_SelectedIndexChanged"
                
                
                >
                <LayoutTemplate>
                    <table id="Table1" runat="server">
                        <tr id="Tr1" runat="server">
                            <td id="Td1" runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1">
                                    <tr id="Tr2" runat="server">
                                        <th id="Th1" runat="server" border="1"></th>
                                        <th id="Th2" runat="server">Student_ID</th>
                                        <th id="Th3" runat="server">First Name</th>
                                        <th id="Th4" runat="server">Surname</th>
                                        <th id="Th5" runat="server">Address</th>
                                        <th id="Th6" runat="server">Birthday</th>
                                        <th id="Th7" runat="server">Gender</th>
                                        <th id="Th8" runat="server">Grade</th>

                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr id="Tr3" runat="server">
                            <td id="Td2" runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                           
                        </td>
                        <td>
                            <asp:Label ID="lblProductID" runat="server" Text='<%# Eval("Student_ID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Eval("Surname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                         <td>
                            <asp:Label ID="Birthdaylabel" runat="server" Text='<%# Eval("Birthday") %>' />
                        </td>
                         <td>
                            <asp:Label ID="Genderlabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                           <td>
                            <asp:Label ID="GradeLabel" runat="server" Text='<%# Eval("Grade") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
               
               
            </asp:ListView>
        </div>
    </p>

</asp:Content>
