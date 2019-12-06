<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hospital_Mangement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="text-align:center">Hospital Management</h1>
        <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" ImageUrl="~/Images/14.jpg" />
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Health Care System</h2>
            <p>
                A formal structure for a defined population, whose finance, management, scope, and content is defined by law and regulations. It provides for services to be delivered to people to contribute to their health…
            </p>
            <p>
                <a class="btn btn-default" href="https://pallipedia.org/health-care-system/">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Benifits of Health</h2>
            <p> A healthful diet includes a variety of fruits and vegetables of many colors, whole grains and starches, good fats, and lean proteins. </p>
            <p>
                <a class="btn btn-default" href="https://www.medicalnewstoday.com/articles/322268.php">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
