<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeBehind="ApplicantJobApplication.aspx.cs" Inherits="CareerCloudUI.ApplicantJobApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployeeSectionContent" runat="server">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="align-content:center;background-color:grey;text-decoration-color:black" Text="Apply with Career Cloud Resume" />
    <asp:Button ID="Button2" runat="server" Text="Apply on Company Website" OnClick="Button2_Click" style="align-content:center;background-color:grey;text-decoration-color:black" />
</asp:Content>
