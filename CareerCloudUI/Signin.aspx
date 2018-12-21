<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CareerCloudUI.Signin" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterContentPlaceHolder" runat="server">
    <div id="signin">
    <table>
        <uc1:LoginUserControl runat="server" ID="LoginUserControl" />
        <tr>
            <td><asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" style="font-weight:bold;text-decoration:none;border:solid;"/></td>
            <td class="auto-style1">
               <%-- <asp:RadioButton ID="RadioButtonRecruiter" runat="server" Text="Recruiter" OnCheckedChanged="RadioButtonRecruiter_CheckedChanged" />  
                <asp:RadioButton ID="RadioButtonJobseeker" runat="server" Text="Applicant" OnCheckedChanged="RadioButtonJobseeker_CheckedChanged" />--%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
        <br />
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx"><b>Not a member?Create an account Free</b></asp:HyperLink>
        </div>
</asp:Content>
