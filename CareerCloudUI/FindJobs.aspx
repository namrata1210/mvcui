<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeBehind="FindJobs.aspx.cs" Inherits="CareerCloudUI.FindJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployeeSectionContent" runat="server">
    <br />
    <br />
    <asp:Label ID="Lblsearch" runat="server" Text="FindJobs" style="font-weight:bold"></asp:Label>
    <asp:TextBox ID="Txtsearch" runat="server"></asp:TextBox>
    <asp:Button ID="Buttonsearch" runat="server" Text="Serch" style="font-weight:bold"/>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
            <asp:BoundField DataField="Job_Name" HeaderText="Job_Name" SortExpression="Job_Name" />
            <asp:BoundField DataField="Job_Descriptions" HeaderText="Job_Descriptions" SortExpression="Job_Descriptions" />
            <asp:HyperLinkField NavigateUrl="~/ApplicantJobApplication.aspx" Text="Apply" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" SelectCommand="SELECT [Job], [Job_Name], [Job_Descriptions] FROM [Company_Jobs_Descriptions] WHERE ([Job_Name] LIKE '%' + @Job_Name + '%')">
    <SelectParameters>
        <asp:ControlParameter ControlID="Txtsearch" Name="Job_Name" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
