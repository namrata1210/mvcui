<%@ Page Title="" Language="C#" MasterPageFile="~/JobSeeker.master" AutoEventWireup="true" CodeBehind="ApplicantProfile.aspx.cs" Inherits="CareerCloudUI.ApplicantProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="EmployeeSectionContent" runat="server">
    <br />
    <br />
<br />
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Edit" style="z-index: 1; left: 10px; top: 156px; position: absolute; height: 63px; width: 381px">
        <EditItemTemplate>
            <%--Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />--%>
            <b>Login:</b>&nbsp;&nbsp;
            <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            <br /><br />
            <b>Country_Code:</b>&nbsp;&nbsp;
            <asp:TextBox ID="Country_CodeTextBox" runat="server" Text='<%# Bind("Country_Code") %>' />
            <br /><br />
           <b> State_Province_Code:</b>&nbsp;&nbsp;
            <asp:TextBox ID="State_Province_CodeTextBox" runat="server" Text='<%# Bind("State_Province_Code") %>' />
            <br /><br />
            <b>Street_Address:</b>&nbsp;&nbsp;
            <asp:TextBox ID="Street_AddressTextBox" runat="server" Text='<%# Bind("Street_Address") %>' />
            <br /><br />
            <b>City_Town:</b>&nbsp;&nbsp;
            <asp:TextBox ID="City_TownTextBox" runat="server" Text='<%# Bind("City_Town") %>' />
            <br /><br />
            <b>Zip_Postal_Code:</b>&nbsp;&nbsp;
            <asp:TextBox ID="Zip_Postal_CodeTextBox" runat="server" Text='<%# Bind("Zip_Postal_Code") %>' />
            <br /><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
           <%-- Id:
            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
            <br />
            Login:
            <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            <br />--%>
            Country_Code:
            <asp:TextBox ID="Country_CodeTextBox" runat="server" Text='<%# Bind("Country_Code") %>' />
            <br />
            State_Province_Code:
            <asp:TextBox ID="State_Province_CodeTextBox" runat="server" Text='<%# Bind("State_Province_Code") %>' />
            <br />
            Street_Address:
            <asp:TextBox ID="Street_AddressTextBox" runat="server" Text='<%# Bind("Street_Address") %>' />
            <br />
            City_Town:
            <asp:TextBox ID="City_TownTextBox" runat="server" Text='<%# Bind("City_Town") %>' />
            <br />
            Zip_Postal_Code:
            <asp:TextBox ID="Zip_Postal_CodeTextBox" runat="server" Text='<%# Bind("Zip_Postal_Code") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
           <%-- Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />--%>
            Login:
            <asp:Label ID="LoginLabel" runat="server" Text='<%# Bind("Login") %>' />
            <br />
            Country_Code:
            <asp:Label ID="Country_CodeLabel" runat="server" Text='<%# Bind("Country_Code") %>' />
            <br />
            State_Province_Code:
            <asp:Label ID="State_Province_CodeLabel" runat="server" Text='<%# Bind("State_Province_Code") %>' />
            <br />
            Street_Address:
            <asp:Label ID="Street_AddressLabel" runat="server" Text='<%# Bind("Street_Address") %>' />
            <br />
            City_Town:
            <asp:Label ID="City_TownLabel" runat="server" Text='<%# Bind("City_Town") %>' />
            <br />
            Zip_Postal_Code:
            <asp:Label ID="Zip_Postal_CodeLabel" runat="server" Text='<%# Bind("Zip_Postal_Code") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" DeleteCommand="DELETE FROM [Applicant_Profiles] WHERE [Login] =  @DeleteId" 
        InsertCommand="INSERT INTO [Applicant_Profiles] ([Id], [Login], [Country_Code], [State_Province_Code], [Street_Address], [City_Town], [Zip_Postal_Code]) VALUES (@Id, @Login, @Country_Code, @State_Province_Code, @Street_Address, @City_Town, @Zip_Postal_Code)" 
        SelectCommand="SELECT [Id], [Login], [Country_Code], [State_Province_Code], [Street_Address], [City_Town], [Zip_Postal_Code] FROM [Applicant_Profiles]WHERE [Login] = @selectID " 
        UpdateCommand="UPDATE [Applicant_Profiles] SET  [Country_Code] = @Country_Code, [State_Province_Code] = @State_Province_Code, [Street_Address] = @Street_Address, [City_Town] = @City_Town, [Zip_Postal_Code] = @Zip_Postal_Code WHERE [Login] = @UpdateID">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Object" />
            <asp:ControlParameter ControlID="label1" PropertyName="Text"
                                  Name=" DeleteID " DBType="Guid" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Object" />
         
                        <asp:ControlParameter ControlID="label1" PropertyName="Text"
                                  Name="insertID" DBType="Guid" DefaultValue="0" />
      
            <asp:Parameter Name="Country_Code" Type="String" />
            <asp:Parameter Name="State_Province_Code" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="City_Town" Type="String" />
            <asp:Parameter Name="Zip_Postal_Code" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Login" Type="Object" />
            <asp:Parameter Name="Country_Code" Type="String" />
            <asp:Parameter Name="State_Province_Code" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="City_Town" Type="String" />
            <asp:Parameter Name="Zip_Postal_Code" Type="String" />
            <asp:Parameter Name="Id" Type="Object" />
            <asp:ControlParameter ControlID="label1" PropertyName="Text"
                                  Name="UpdateID" DBType="Guid" DefaultValue="0" />
        </UpdateParameters>
        <SelectParameters>
                        <asp:ControlParameter ControlID="label1" PropertyName="Text"
                                  Name="selectID" DBType="Guid" DefaultValue="0" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 189px; position: absolute; margin-top: 0px" Text="Label" Visible="False"></asp:Label>
</asp:Content>
