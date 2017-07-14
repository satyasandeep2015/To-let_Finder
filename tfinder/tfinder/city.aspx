<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="city" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 347px">&nbsp;</td>
            <td style="width: 118px">
                <asp:Label ID="Label3" runat="server" Text="City operations"></asp:Label>
            </td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px" colspan="3">&nbsp;</td>
            <td style="width: 45px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 347px">&nbsp;</td>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 143px">
                <asp:Label ID="Label5" runat="server" Text="State Name:"></asp:Label>
            </td>
            <td style="width: 146px" colspan="3">
                <asp:DropDownList ID="drpS" runat="server" DataTextField="statename" DataValueField="statename" AutoPostBack="True" OnSelectedIndexChanged="drpS_SelectedIndexChanged1">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 45px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 54px; width: 347px;"></td>
            <td style="width: 118px; height: 54px">
                <asp:Label ID="lblMsg" runat="server" BackColor="Red"></asp:Label>
            </td>
            <td style="width: 143px; height: 54px">
                <asp:Label ID="Label1" runat="server" Text="City Name:"></asp:Label>
            </td>
            <td style="width: 146px; height: 54px" colspan="3">
                <asp:DropDownList ID="drpS1" runat="server" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True" >
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 54px; width: 45px;"></td>
        </tr>
        <tr>
            <td style="height: 25px; width: 347px;"></td>
            <td style="width: 118px; height: 25px"></td>
            <td style="width: 143px; height: 25px">
                <asp:Label ID="Label4" runat="server" Text="New Name:"></asp:Label>
            </td>
            <td style="width: 146px; height: 25px" colspan="3">
                <asp:TextBox ID="txtC1" runat="server" Height="20px" Width="156px"></asp:TextBox>
            </td>
            <td style="height: 25px; width: 45px;"></td>
        </tr>
        <tr>
            <td style="height: 25px; width: 347px;"></td>
            <td style="width: 118px; height: 25px"></td>
            <td style="width: 143px; height: 25px"></td>
            <td style="width: 86px; height: 25px">
                <asp:Button ID="update" runat="server" OnClick="Button1_Click" Text="Update" Height="27px" />
            </td>
            <td style="width: 86px; height: 25px">
                <asp:Button ID="delete" runat="server" OnClick="Unnamed1_Click" Text="Delete" />
            </td>
            <td style="height: 25px" colspan="2">&nbsp;</td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="height: 36px; width: 347px;"></td>
            <td style="width: 118px; height: 36px;"></td>
            <td style="height: 36px;" colspan="4">Enter New state Below,If state is not Available           <td style="height: 36px; width: 45px;"></td>
        </tr>
        <tr>
            <td style="height: 36px; width: 347px;"></td>
            <td style="width: 118px; height: 36px;"></td>
            <td style="width: 143px; height: 36px;">
                <asp:Label ID="Label2" runat="server" Text="New City:"></asp:Label>
            </td>
            <td style="width: 146px; height: 36px;" colspan="3">
                <asp:TextBox ID="txtC" runat="server" Height="20px" Width="156px"></asp:TextBox>
            </td>
            <td style="height: 36px; width: 45px;"></td>
        </tr>
        <tr>
            <td style="width: 347px">&nbsp;</td>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td colspan="3">
                <asp:Button ID="add" runat="server" OnClick="Button2_Click" Text="Add" />
            </td>
            <td style="width: 45px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 347px">&nbsp;</td>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px" colspan="3">&nbsp;</td>
            <td style="width: 45px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 347px">&nbsp;</td>
            <td style="width: 118px">&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px" colspan="3">&nbsp;</td>
            <td style="width: 45px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

