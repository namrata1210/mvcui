<%@ Page Title="" Language="C#" MasterPageFile="~/Employer.master" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="CareerCloudUI.CompanyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployerSectionContent" runat="server">
     <div id="b">
    <table>
        <tr>
            <td style="width: 134px">
                <asp:label runat="server" text="Company Name"></asp:label>
            </td>
            <td>
                <asp:textbox ID="txtCompanyName" runat="server" Width="290px"></asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator runat="server" errormessage="*" ControlToValidate="txtCompanyName" ID="rfvCompanyName"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:label runat="server" text="Company Description"></asp:label>
            </td>
            <td>
                <asp:textbox ID="txtCompanyDescription" runat="server" Width="290px"></asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvCompanyDescription" ControlToValidate="txtCompanyDescription"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:label runat="server" text="Company Website"></asp:label>
            </td>
            <td>
                <asp:textbox ID="txtCompanyWebsite" runat="server" Width="290px"></asp:textbox>
            </td>
           
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:label runat="server" text="Contact No." ></asp:label>
            </td>
            <td>
                <asp:textbox ID="txtCompanyContact" runat="server" Width="290px"></asp:textbox>
            </td>
             <td>
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvContact" ControlToValidate="txtCompanyContact"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td style="width: 134px">
                <asp:label runat="server" text="Select Language"></asp:label>
            </td>
            <td>
                <asp:dropdownlist ID="ddlLanguage" runat="server" Width="290px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="LanguageID"></asp:dropdownlist>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" SelectCommand="SELECT [LanguageID], [Name] FROM [System_Language_Codes]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvLanguage" ControlToValidate="ddlLanguage"></asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:button ID="btnSave" runat="server" text="Save" Width="81px" />
            </td>
            
        </tr>
    </table>
         </div>
                <%--<asp:label runat="server" text="Company Name"></asp:label>
           
                <asp:textbox ID="txtCompanyName" runat="server" Width="290px"></asp:textbox>
            
                <asp:requiredfieldvalidator runat="server" errormessage="*" ControlToValidate="txtCompanyName" ID="rfvCompanyName"></asp:requiredfieldvalidator>
         
                <asp:label runat="server" text="Company Description"></asp:label>
            
                <asp:textbox ID="txtCompanyDescription" runat="server" Width="290px"></asp:textbox>
           
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvCompanyDescription" ControlToValidate="txtCompanyDescription"></asp:requiredfieldvalidator>
           
                <asp:label runat="server" text="Company Website"></asp:label>
           
                <asp:textbox ID="txtCompanyWebsite" runat="server" Width="290px"></asp:textbox>
            
                <asp:label runat="server" text="Contact No." ></asp:label>
           
                <asp:textbox ID="txtCompanyContact" runat="server" Width="290px"></asp:textbox>
           
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvContact" ControlToValidate="txtCompanyContact"></asp:requiredfieldvalidator>
           
                <asp:label runat="server" text="Select Language"></asp:label>
           
                <asp:dropdownlist ID="ddlLanguage" runat="server" Width="290px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="LanguageID"></asp:dropdownlist>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" SelectCommand="SELECT [Name], [LanguageID] FROM [System_Language_Codes]"></asp:SqlDataSource>
            
                <asp:requiredfieldvalidator runat="server" errormessage="*" ID="rfvLanguage" ControlToValidate="ddlLanguage"></asp:requiredfieldvalidator>
            
                <asp:button ID="btnSave" runat="server" text="Save" Width="81px" />--%>
            
</asp:Content>
