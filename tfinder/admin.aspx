<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" runat="Server">
   
    <form id="form1" runat="server">

        rr<table style="width: 100%">
         <tr>
             <td style="background-color:white; width: 221px;">Welcome&nbsp;
                 <asp:Label ID="lblUN" runat="server"></asp:Label>
             </td>
             <td>&nbsp;</td>
             <td style="width: 911px">
                 &nbsp;</td>
             <td style="width: 42px">
                 &nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td style="width: 221px">
     <asp:Image ID="imgPp" runat="server" Height="137px" Width="140px" />
                 <br />
                 To change profile picture:<br />
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                 <br />
                 <br />
                 <asp:Button ID="btnPpc" runat="server" OnClick="btnPpc_Click" Text="change" />
                 <br />
             </td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>

        <table style="width: 50%">
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">&nbsp;</td>
                <td style="width: 343px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">
                    <asp:Label ID="Label1" runat="server" BackColor="#5D3259" ForeColor="White" Text="Change Password:"></asp:Label>
                </td>
                <td style="width: 343px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">
                <asp:Label ID="Label3" runat="server" Text="New password:"></asp:Label>
                </td>
                <td style="width: 343px">
                <asp:TextBox ID="txtN1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtN1" ControlToValidate="txtN2" ErrorMessage="Password doesn't match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">
                <asp:Label ID="Label2" runat="server" Text="Confirm New password:"></asp:Label>
                </td>
                <td style="width: 343px">
                <asp:TextBox ID="txtN2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">&nbsp;</td>
                <td style="width: 343px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 96px">&nbsp;</td>
                <td style="width: 259px">&nbsp;</td>
                <td style="width: 343px">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
        
</asp:Content>

