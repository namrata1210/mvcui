<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="CareerCloudUI.WebUserControl1" %>
 <tr>
        <td>
            <asp:Label ID="Label1" runat="server"  Text="User Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" Width="259px"  ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please enter Username" ForeColor="#CC0000" Visible="True" >*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server"  Text="Password" Visible="True"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server"  TextMode="Password" Width="259px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtPassword" ForeColor="#CC0000" Visible="True" >*</asp:RequiredFieldValidator>
        </td>
    </tr>