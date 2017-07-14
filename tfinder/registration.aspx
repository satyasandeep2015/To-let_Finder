<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="up1" runat="server" >
            <ContentTemplate>--%>
             <div>
      <table style="width: 100%">
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:TextBox ID="txtN" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtN" ErrorMessage="Name must be provided" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label3" runat="server" Text="Email id:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:TextBox ID="txtE" runat="server"></asp:TextBox>
            <asp:Label ID="lblEE" runat="server"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtE" ErrorMessage="Invalid email address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px; height: 33px;"></td>
        <td style="width: 179px; height: 33px;">
            <asp:Label ID="Label2" runat="server" Text="Phone number:"></asp:Label>
        </td>
        <td style="height: 33px; width: 411px;">
            <asp:TextBox ID="txtP" runat="server" CausesValidation="True"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtP" ErrorMessage="Invalid phone number" ValidationExpression="^[0-9]{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
        <td style="height: 33px"></td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:TextBox ID="txtPw" runat="server" TextMode="Password" CausesValidation="True" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPw" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label5" runat="server" Text="Confirm password:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:TextBox ID="txtPw2" runat="server" TextMode="Password" CausesValidation="True"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPw" ControlToValidate="txtPw2" ErrorMessage="password doesn't match" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label6" runat="server" Text="security question:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:DropDownList ID="drpSt" runat="server" DataTextField="questext" DataValueField="questext">
                <asp:ListItem Selected="True">--select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label7" runat="server" Text="Answer:"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="Label8" runat="server" Text="Profile picture:"></asp:Label>
        </td>
        <td style="width: 411px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="imgPp" runat="server" Height="165px" Width="210px" />
            <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="234px" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="upload" Width="65px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="delete" />
            &nbsp;&nbsp;&nbsp;
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
        <td style="width: 411px">
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">&nbsp;</td>
        <td style="width: 411px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">&nbsp;</td>
        <td style="width: 411px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 248px">&nbsp;</td>
        <td style="width: 179px">&nbsp;</td>
        <td style="width: 411px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

                   </div>
    <%-- </ContentTemplate>
            <Triggers>
     <asp:AsyncPostBackTrigger ControlID="btnUpload" EventName="Click"/>
</Triggers> 
    </asp:UpdatePanel>--%>
  
     
 
</asp:Content>

