<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CareerCloudUI.SignUpNew1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterContentPlaceHolder" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="z-index: 1; left: 10px; top: 137px; position: absolute; height: 63px; width: 381px" OnPageIndexChanging="FormView1_PageIndexChanging" OnItemInserted="FormView1_ItemInserted">
        <EditItemTemplate>
            Login:
            <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Email_Address:
            <asp:TextBox ID="Email_AddressTextBox" runat="server" Text='<%# Bind("Email_Address") %>' />
            <br />
            Phone_Number:
            <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
            <br />
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Login:
            <asp:TextBox ID="LoginTextBox" runat="server" Text='<%# Bind("Login") %>' />
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
            <br />
            Email_Address:
            <asp:TextBox ID="Email_AddressTextBox" runat="server" Text='<%# Bind("Email_Address") %>' />
            <br />
            Phone_Number:
            <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
            <br />
            
            <br />
            <asp:LinkButton ID="InsertButton"  runat ="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            <asp:Button ID="Button1" runat="server" Text="Signin" />
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" DeleteCommand="DELETE FROM [Security_Logins] WHERE [Id] = @Id"
        InsertCommand="INSERT INTO [Security_Logins] ([Login], [Password], [Email_Address], [Phone_Number],[Created_Date],[Is_Locked],[Is_Inactive],[Force_Change_Password]) VALUES (@Login, @Password, @Email_Address, @Phone_Number,GETDATE(),1,0,1)" SelectCommand="SELECT [Login], [Password], [Email_Address], [Phone_Number], [Id] FROM [Security_Logins]" UpdateCommand="UPDATE [Security_Logins] SET [Login] = @Login, [Password] = @Password, [Email_Address] = @Email_Address, [Phone_Number] = @Phone_Number WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Login" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email_Address" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Id" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Login" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email_Address" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Id" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
