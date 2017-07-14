<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newpw.aspx.cs" Inherits="newpw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 273px">&nbsp;</td>
            <td style="width: 172px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 273px">&nbsp;</td>
            <td style="width: 172px">
                <asp:Label ID="Label1" runat="server" Text="New password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtN1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 273px">&nbsp;</td>
            <td style="width: 172px">
                <asp:Label ID="Label2" runat="server" Text="Confirm New password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtN2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtN1" ControlToValidate="txtN2" ErrorMessage="Password doesn't match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 273px">&nbsp;</td>
            <td style="width: 172px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px"></td>
            <td style="width: 273px; height: 26px;"></td>
            <td style="width: 172px; height: 26px;"></td>
            <td style="height: 26px">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td style="height: 26px"></td>
        </tr>
    </table>
</asp:Content>

