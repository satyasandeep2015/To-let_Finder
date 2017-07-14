<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="type.aspx.cs" Inherits="type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">
            <asp:Label ID="Label3" runat="server" Text="Type Edit"></asp:Label>
        </td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">
            <asp:Label ID="Label1" runat="server" Text="Select type:"></asp:Label>
        </td>
        <td style="width: 146px">
            <asp:DropDownList ID="drpT" runat="server" DataSourceID="SqlDataSource1" DataTextField="typename" DataValueField="typename">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tfinderConnectionString %>" SelectCommand="SELECT [typename] FROM [type]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="delete" />
        </td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">
            <asp:Label ID="Label2" runat="server" Text="New Name:"></asp:Label>
        </td>
        <td style="width: 146px">
            <asp:TextBox ID="txtNt" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">
            <asp:Button ID="update" runat="server" Text="update" OnClick="update_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">
            <asp:Label ID="Label4" runat="server" Text="Add new Type:"></asp:Label>
        </td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">
            <asp:Label ID="Label5" runat="server" Text="New type Name:"></asp:Label>
        </td>
        <td style="width: 146px">
            <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 190px">&nbsp;</td>
        <td style="width: 110px">&nbsp;</td>
        <td style="width: 143px">&nbsp;</td>
        <td style="width: 146px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

