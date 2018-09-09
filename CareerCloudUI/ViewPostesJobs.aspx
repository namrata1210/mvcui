<%@ Page Title="" Language="C#" MasterPageFile="~/Employer.master" AutoEventWireup="true" CodeBehind="ViewPostesJobs.aspx.cs" Inherits="CareerCloudUI.PostJob" %>



<asp:Content ID="Content1" ContentPlaceHolderID="EmployerSectionContent" runat="server">
    <div style="overflow:auto">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" style="z-index: 1; left: 159px; top: 178px; position: absolute; height: 133px; width: 330px">
            <Columns>
                <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
                <asp:BoundField DataField="Job_Name" HeaderText="Job_Name" SortExpression="Job_Name" />
                <asp:BoundField DataField="Job_Descriptions" HeaderText="Job_Descriptions" SortExpression="Job_Descriptions" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" SelectCommand="SELECT [Job], [Job_Name], [Job_Descriptions], [Id] FROM [Company_Jobs_Descriptions] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Id" PropertyName="Text" Type="Object" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 11px; top: 268px; position: absolute" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        </div>

</asp:Content>
    