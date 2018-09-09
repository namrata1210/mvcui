<%@ Page Title="" Language="C#" MasterPageFile="~/Employer.master" AutoEventWireup="true" CodeBehind="PostJob.aspx.cs" Inherits="CareerCloudUI.PostJob1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="EmployerSectionContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 67px; width: 125px" Width="125px" DefaultMode="Insert">
    <Fields>
        <asp:BoundField DataField="Job_Name" HeaderText="Job_Name" SortExpression="Job_Name" />
        <asp:BoundField DataField="Job_Descriptions" HeaderText="Job_Descriptions" SortExpression="Job_Descriptions" />
      
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" DeleteCommand="DELETE FROM [Company_Jobs_Descriptions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company_Jobs_Descriptions] ([Job_Name], [Job_Descriptions], [Id]) VALUES (@Job_Name, @Job_Descriptions, @Id)" SelectCommand="SELECT [Job_Name], [Job_Descriptions], [Id] FROM [Company_Jobs_Descriptions]" UpdateCommand="UPDATE [Company_Jobs_Descriptions] SET [Job_Name] = @Job_Name, [Job_Descriptions] = @Job_Descriptions WHERE [Id] = @Id">
    <DeleteParameters>
        
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Job_Name" Type="String" />
        <asp:Parameter Name="Job_Descriptions" Type="String" />
       
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Job_Name" Type="String" />
        <asp:Parameter Name="Job_Descriptions" Type="String" />
      
    </UpdateParameters>
</asp:SqlDataSource>
        
</asp:Content>
