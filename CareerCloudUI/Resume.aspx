<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="CareerCloudUI.Resume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployeeSectionContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Applicant" HeaderText="Applicant" SortExpression="Applicant" />
            <asp:BoundField DataField="Resume" HeaderText="Resume" SortExpression="Resume" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 245px; position: absolute" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" DeleteCommand="DELETE FROM [Applicant_Resumes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Applicant_Resumes] ([Applicant], [Resume], [Id]) VALUES (@Applicant, @Resume, @Id)" SelectCommand="SELECT [Applicant], [Resume], [Id] FROM [Applicant_Resumes]" UpdateCommand="UPDATE [Applicant_Resumes] SET [Applicant] = @Applicant, [Resume] = @Resume WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Applicant" Type="Object" />
            <asp:Parameter Name="Resume" Type="String" />
            <asp:Parameter Name="Id" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Applicant" Type="Object" />
            <asp:Parameter Name="Resume" Type="String" />
            <asp:Parameter Name="Id" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
