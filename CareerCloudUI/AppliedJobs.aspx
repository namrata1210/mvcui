<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeBehind="AppliedJobs.aspx.cs" Inherits="CareerCloudUI.AppliedJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployeeSectionContent" runat="server">
    <br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="z-index: 1; left: 10px; top: 156px;bottom:100px;float:right; position: absolute; height: 133px; width: 187px">
        <Columns>
            <asp:BoundField DataField="Applicant" HeaderText="Applicant" SortExpression="Applicant" />
            <asp:BoundField DataField="Job" HeaderText="Job" SortExpression="Job" />
            <asp:BoundField DataField="Application_Date" HeaderText="Application_Date" SortExpression="Application_Date" />
        </Columns>
    </asp:GridView>
     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" SelectCommand="select Applicant_Job_Applications.Applicant, 
Applicant_Job_Applications.Job, 
Applicant_Job_Applications.Application_Date, 
Company_Jobs_Descriptions.Job_Name, Company_Jobs_Descriptions.Job_Descriptions 

from Applicant_Profiles 
inner join Applicant_Job_Applications  on Applicant_Job_Applications.Applicant=Applicant_Profiles.Id
inner join Company_Jobs  on Company_Jobs.Id=Applicant_Job_Applications.Job
inner join Company_Jobs_Descriptions on Company_Jobs_Descriptions.Job=Company_Jobs.Id
where Applicant_Profiles.login=@ID"> 
        <selectparameters><asp:ControlParameter ControlID="Label2" PropertyName="Text"
                                  Name="ID" DBType="Guid" DefaultValue="0" />
 </selectparameters></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 10px; top: 189px; position: absolute" Text="Label" Visible="False"></asp:Label>
         
</asp:Content>
