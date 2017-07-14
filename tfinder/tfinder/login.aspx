<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <table style="width: 100%; height: 435px;">
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            <asp:Label ID="Label4" runat="server" Text="For users:"></asp:Label>
        </td>
        <td colspan="2">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            &nbsp;</td>
        <td style="width: 135px">
                <asp:Label ID="Label5" runat="server" Text="State Name:"></asp:Label>
        </td>
        <td style="width: 133px">
                <asp:DropDownList ID="drpS" runat="server" DataTextField="statename" DataValueField="statename" AutoPostBack="True" OnSelectedIndexChanged="drpS_SelectedIndexChanged1">
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            &nbsp;</td>
        <td style="width: 135px">
                <asp:Label ID="Label6" runat="server" Text="City Name:"></asp:Label>
        </td>
        <td style="width: 133px">
                <asp:DropDownList ID="drpS1" runat="server" DataTextField="cityname" DataValueField="cityname" AutoPostBack="True" >
                    <asp:ListItem>--select--</asp:ListItem>
                </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            &nbsp;</td>
        <td>
            &nbsp;<asp:Label ID="Label7" runat="server" Text="Type:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            <asp:DropDownList ID="drpSt" runat="server" DataSourceID="SqlDataSource1" DataTextField="typename" DataValueField="typename">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tfinderConnectionString %>" SelectCommand="SELECT [typename] FROM [type]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSea" runat="server" OnClick="btnSea_Click" Text="search" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            <asp:Label ID="Label3" runat="server" Text="For owners:"></asp:Label>
        </td>
        <td colspan="2">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtE" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtE" ErrorMessage="Invalid Email address" ForeColor="#FF3300" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">
            <asp:Label ID="Label2" runat="server" Text="password:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:TextBox ID="txtPw" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">&nbsp;</td>
        <td colspan="2">
            <asp:Button ID="btn" runat="server" Text="login" OnClick="btn_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 32px; width: 276px"></td>
        <td style="height: 32px; width: 113px">&nbsp;</td>
        <td style="height: 32px; " colspan="2">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
        <td style="height: 32px"></td>
        <td style="height: 32px"></td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">&nbsp;</td>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot password?</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 276px">&nbsp;</td>
        <td style="width: 113px">&nbsp;</td>
        <td colspan="2">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/registration.aspx" OnClick="LinkButton2_Click">Not yet registered? click here</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

