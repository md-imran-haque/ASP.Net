<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDoctor.aspx.cs" Inherits="Hospital_Mangement.Members.AddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add New Doctors</h2>
    <hr />
    <div>        
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" CssClass="col-md-2" Text="Doctor Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" CssClass="col-md-2" Text="Mobile"></asp:Label>
            <asp:TextBox ID="txtMobile" runat="server" CssClass=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:Label ID="Label3" runat="server" CssClass="col-md-2" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>

         <div class="form-group">
            <asp:Label ID="Label4" runat="server" CssClass="col-md-2" Text="Gender"></asp:Label>
             <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                 <asp:ListItem Selected="True">Male</asp:ListItem>
                 <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
        </div>

         <div class="form-group">
            <asp:Label ID="Label5" runat="server" CssClass="col-md-2" Text="Date Of Birth"></asp:Label>
            <asp:TextBox ID="txtDateOfBirth" TextMode="Date" runat="server" CssClass=""></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="Date of Birth Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
            <asp:Label ID="Label7" runat="server" CssClass="col-md-2" Text="Doctor Charge"></asp:Label>
            <asp:TextBox ID="txtCharge" runat="server" CssClass=""></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCharge" ErrorMessage="Doctor's Charge Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

         <div class="form-group">
            <asp:Label ID="Label8" runat="server" CssClass="col-md-2" Text="Category Name"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsCategory" DataTextField="CategoryName" DataValueField="CategoryId"></asp:DropDownList>
             <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_ManagementDbContextString %>" SelectCommand="SELECT [CategoryId], [CategoryName] FROM [tblCategories]"></asp:SqlDataSource>
        </div>

        <div class="form-group">
            <asp:Label ID="Label6" runat="server" CssClass="col-md-2" Text="Doctor Picture"></asp:Label>
             <asp:FileUpload ID="pPicture" runat="server" />
        </div>

         <div class="form-group">
             <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-default" Text="Insert" OnClick="btnInsert_Click" />
        </div>
    </div>
</asp:Content>
