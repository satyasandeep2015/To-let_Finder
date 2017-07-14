<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ques.aspx.cs" Inherits="ques" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 349px">&nbsp;</td>
            <td style="width: 130px">
                <asp:Label ID="Label3" runat="server" Text="Question Edit"></asp:Label>
            </td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 349px">&nbsp;</td>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 143px">
                <asp:Label ID="Label1" runat="server" Text="select Question:"></asp:Label>
            </td>
            <td style="width: 146px">
                <asp:DropDownList ID="drpS" runat="server" DataSourceID="SqlDataSource1" DataTextField="questext" DataValueField="questext">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tfinderConnectionString %>" SelectCommand="SELECT [questext] FROM [question]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="delete" />
            </td>
        </tr>
        <tr>
            <td style="height: 30px; width: 349px;"></td>
            <td style="width: 130px; height: 30px;"></td>
            <td style="width: 143px; height: 30px;">
                <asp:Label ID="Label2" runat="server" Text="New Question:"></asp:Label>
            </td>
            <td style="width: 146px; height: 30px;">
                <asp:TextBox ID="txtQ" runat="server" ></asp:TextBox>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 30px; width: 349px;"></td>
            <td style="width: 130px; height: 30px;"></td>
            <td style="width: 143px; height: 30px;">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td style="width: 146px; height: 30px;">
                <asp:Button ID="Button1" runat="server" Text="update" OnClick="Button1_Click" />
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 30px; width: 349px;">&nbsp;</td>
            <td style="width: 130px; height: 30px;">add new question
                <br />
            </td>
            <td style="width: 143px; height: 30px;">
                &nbsp;</td>
            <td style="width: 146px; height: 30px;">
                &nbsp;</td>
            <td style="height: 30px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 30px; width: 349px;">&nbsp;</td>
            <td style="width: 130px; height: 30px;">&nbsp;</td>
            <td style="width: 143px; height: 30px;">
                <asp:Label ID="Label4" runat="server" Text="new question:"></asp:Label>
            </td>
            <td style="width: 146px; height: 30px;">
                <asp:TextBox ID="txtNq" runat="server" ></asp:TextBox>
            </td>
            <td style="height: 30px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 349px">&nbsp;</td>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 349px;"></td>
            <td style="width: 130px; height: 26px;"></td>
            <td style="width: 143px; height: 26px;">
                &nbsp;</td>
            <td style="width: 146px; height: 26px;">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="add " />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 349px">&nbsp;</td>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td style="width: 146px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

