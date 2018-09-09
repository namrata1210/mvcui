<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CareerCloudUI.Signin" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterContentPlaceHolder" runat="server">
    <div id="signin">
    <table>
        <uc1:LoginUserControl runat="server" ID="LoginUserControl" />
        <tr>
            <td><asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" /></td>
            <td class="auto-style1">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
        <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="abc"  Text="Applicant"/>
        <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="abc" Text="CompanyProfile" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUpNew.aspx">Not a member?Create an account free</asp:HyperLink>
        </div>
</asp:Content>
