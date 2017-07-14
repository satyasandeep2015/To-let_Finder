<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="lblN" runat="server" Text="Name:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:TextBox ID="txtN" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label runat="server" Text="Phone number:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:TextBox ID="txtPn" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label4" runat="server" Text="State:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:DropDownList ID="drpS" runat="server" DataTextField="statename" DataValueField="statename" AutoPostBack="True" OnSelectedIndexChanged="drpS_SelectedIndexChanged1">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:DropDownList ID="drpS1" runat="server" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True" >
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label7" runat="server" Text="Type:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:DropDownList ID="drpSt" runat="server" DataTextField="typename" DataValueField="typename">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label6" runat="server" Text="Address:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:TextBox ID="txtAd" runat="server" Height="129px" Width="348px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label8" runat="server" Text="Price:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:TextBox ID="txtPr" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">
                <asp:Label ID="Label9" runat="server" Text="Image id:"></asp:Label>
            </td>
            <td style="width: 403px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:FileUpload ID="FileUpload3" runat="server" />
                <br />
                <asp:FileUpload ID="FileUpload4" runat="server" />
                <asp:FileUpload ID="FileUpload5" runat="server" />
                <asp:FileUpload ID="FileUpload6" runat="server" />
                <asp:FileUpload ID="FileUpload7" runat="server" />
                <asp:FileUpload ID="FileUpload8" runat="server" />
                <asp:FileUpload ID="FileUpload9" runat="server" />
                <asp:FileUpload ID="FileUpload10" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 403px">
                <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 197px">&nbsp;</td>
            <td style="width: 403px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

