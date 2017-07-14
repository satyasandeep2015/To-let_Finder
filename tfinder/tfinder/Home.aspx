<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="login" Runat="Server">
     &nbsp;<table style="width: 100%">
         <tr>
             <td>Welcome&nbsp;
                 <asp:Label ID="lblUN" runat="server"></asp:Label>
             </td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="logout" />
             </td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
    <asp:Button ID="btnNP" runat="server" OnClick="btnNP_Click" Text="New Post" />
             </td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
         <tr>
             <td>
     <asp:Image ID="imgPp" runat="server" Height="137px" Width="140px" />
                 <br />
                 To change profile picture:<br />
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                 <br />
                 <asp:Button ID="btnPpc" runat="server" OnClick="btnPpc_Click" Text="change" />
                 <br />
             </td>
             <td>&nbsp;</td>
             <td style="width: 911px">&nbsp;</td>
             <td style="width: 42px">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
     <br />
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound" >
         <FooterTemplate>
<asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' runat="server" ID="lblNoRecord" Text="No Posts Found!" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:Label>
</FooterTemplate>
         <ItemTemplate>
             email:
             <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
             <br />
             name:
             <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
             <br />
             phonenumber:
             <asp:Label ID="phonenumberLabel" runat="server" Text='<%# Eval("phonenumber") %>' />
             <br />
             city:
             <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
             <br />
             state:
             <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
             <br />
             address:
             <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
             <br />
             type:
             <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
             <br />
             price:
             <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
             <br />
             <asp:Image ID="image1img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image1") %>' />   
          
             <asp:Image ID="image2img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image2") %>' />
             
             <asp:Image ID="image3img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image3") %>' />
           
            
             <asp:Image ID="image4img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image4") %>' />
           
          
             <asp:Image ID="image5img" runat="server"  width="200px" height="200px" ImageUrl='<%# Eval("image5") %>' />
             
            
             <asp:Image ID="image6img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image6") %>' />
            
            
             <asp:Image ID="image8img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image8") %>' />
             
             <asp:Image ID="image7img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image7") %>'   />
            
            
             <asp:Image ID="image9img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image9") %>' />
             
            
             <asp:Image ID="image10img" runat="server" width="200px" height="200px" ImageUrl='<%# Eval("image10") %>' />
            
              <asp:LinkButton ID="LbDel" runat="server" onclick="DeletePostbtn_Click"  myParam='<%# int.Parse(Eval("postid").ToString())%>'>Delete</asp:LinkButton> 
            
             </ItemTemplate>
     </asp:DataList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tfinderConnectionString %>" SelectCommand="SELECT [postid], [email], [name], [phonenumber], [city], [state], [address], [type], [price], [image1], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10] FROM [post] WHERE ([email] = @email)">
         <SelectParameters>
             <asp:SessionParameter Name="email" SessionField="email" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
     <br />
     <br />
     <br />
 
</asp:Content>

