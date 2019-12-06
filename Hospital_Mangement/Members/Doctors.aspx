<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="Hospital_Mangement.Members.Doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row">
                <h2>Add New Doctors</h2>
                <a href="AddDoctor.aspx">Add New Doctors</a>
                <br />
                <hr />
                <br />
                    <h2>Doctor</h2>
                <div class="cal-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="DoctorId" DataSourceID="dsDoctors" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="DoctorName" HeaderText="Doctor Name" SortExpression="DoctorName" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                <EditItemTemplate>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="Date Of Birth" DataFormatString="{0:dd MMM, yyyy}" />
                            <asp:BoundField DataField="DoctorCharge" HeaderText="DoctorCharge" SortExpression="DoctorCharge" InsertVisible="False" />
                            <asp:TemplateField HeaderText="Doctor Picture" SortExpression="DoctorPicture">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DoctorPicture") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                   <img src='<%#Eval("DoctorId","DbImageHandler.ashx?id={0}") %>' width="50"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="dsDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_ManagementDbContextString %>" DeleteCommand="DELETE FROM [tblDoctors] WHERE [DoctorId] = @DoctorId" InsertCommand="INSERT INTO [tblDoctors] ([DoctorName], [Mobile], [Email], [Gender], [DateOfBirth], [DoctorPicture], [DoctorCharge], [CategoryId]) VALUES (@DoctorName, @Mobile, @Email, @Gender, @DateOfBirth, @DoctorPicture, @DoctorCharge, @CategoryId)" SelectCommand="SELECT * FROM [tblDoctors]" UpdateCommand="UPDATE [tblDoctors] SET [DoctorName] = @DoctorName, [Mobile] = @Mobile, [Email] = @Email, [Gender] = @Gender, [DateOfBirth] = @DateOfBirth, [DoctorPicture] = @DoctorPicture, [DoctorCharge] = @DoctorCharge, [CategoryId] = @CategoryId WHERE [DoctorId] = @DoctorId">
                        <DeleteParameters>
                            <asp:Parameter Name="DoctorId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="DoctorName" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="DateOfBirth" DbType="Date" />
                            <asp:Parameter Name="DoctorPicture" Type="Object" />
                            <asp:Parameter Name="DoctorCharge" Type="Decimal" />
                            <asp:Parameter Name="CategoryId" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DoctorName" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="DoctorPicture" Type="Object" />
                            <asp:Parameter Name="DoctorCharge" Type="Decimal" />
                            <asp:Parameter Name="CategoryId" Type="Int32" />
                            <asp:Parameter Name="DoctorId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>   
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>
