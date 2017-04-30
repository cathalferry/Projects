<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="CourseTimetable.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>  

   <table>

    <tr>

    <td> 

       Search

        </td>

        <td>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </td>

        <td> 

        <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" />

        </td>

        

        </tr>
 

</table>

<table><tr><td><p><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  </p></td></tr></table>

 

<asp:GridView ID="GridView1" runat="server" >

    </asp:GridView> 

    </div>
    </asp:Content>
