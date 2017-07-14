<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminposts.aspx.cs" Inherits="adminposts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">

    <form id="form1" runat="server">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 50%">
            <tr>
                <td style="width: 152px">&nbsp;</td>
                <td style="width: 178px">
                   
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">All Posts</asp:LinkButton>
                   
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 152px">&nbsp;</td>
                <td style="width: 178px">or&nbsp;&nbsp; Search by user id:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 152px">&nbsp;</td>
                <td style="width: 178px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtE" runat="server" Height="25px" Width="163px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 152px">&nbsp;</td>
                <td style="width: 178px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnS" runat="server"  Text="search" OnClick="btnS_Click1"  />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 152px">&nbsp;</td>
                <td style="width: 178px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </form>

</asp:Content>

