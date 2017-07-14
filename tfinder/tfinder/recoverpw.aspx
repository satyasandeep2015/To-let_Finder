<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recoverpw.aspx.cs" Inherits="recoverpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 84px">&nbsp;</td>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 198px">&nbsp;</td>
            <td style="width: 377px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 84px; height: 29px;"></td>
            <td style="width: 249px; height: 29px;">
            </td>
            <td style="width: 198px; height: 29px;">
                <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            </td>
            <td style="width: 377px; height: 29px;">
                <asp:TextBox ID="txtE" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="Go" runat="server" OnClick="Go_Click" Text="GO" />
&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtE" ErrorMessage="Invalid Email address" ForeColor="#FF3300" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 84px">&nbsp;</td>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 198px">
                <asp:Label ID="Label2" runat="server" Text="Your question:"></asp:Label>
            </td>
            <td style="width: 377px">
                <asp:TextBox ID="txtQ" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 84px">&nbsp;</td>
            <td style="width: 249px">&nbsp;</td>
            <td style="width: 198px">
                <asp:Label ID="Label3" runat="server" Text="Answer:"></asp:Label>
            </td>
            <td style="width: 377px">
                <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 84px; height: 38px;"></td>
            <td style="width: 249px; height: 38px;"></td>
            <td style="width: 198px; height: 38px;"></td>
            <td style="width: 377px; height: 38px;">
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
            </td>
            <td style="height: 38px"></td>
        </tr>
    </table>
</asp:Content>

