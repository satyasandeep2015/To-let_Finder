<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="allposts.aspx.cs" Inherits="allposts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="holder1" Runat="Server">
    <form id="form1" runat="server">
       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
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
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                postid:
                <asp:Label ID="postidLabel" runat="server" Text='<%# Eval("postid") %>' />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tfinderConnectionString %>" SelectCommand="SELECT [email], [name], [phonenumber], [city], [state], [type], [address], [postid], [image1], [price], [image2], [image3], [image4], [image5], [image6], [image7], [image8], [image9], [image10] FROM [post]"></asp:SqlDataSource>
    </form>
</asp:Content>

