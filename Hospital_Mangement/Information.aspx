<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Hospital_Mangement.Information1" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-md-6"> 
                 <h2> Showing Report of Hospital Status</h2>
                 <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
            </div>
            <div class="col-md-6"> 
                
                <h2>Showing available Doctors information</h2>
                <asp:Button ID="btnDoctors" runat="server" Text="Show Doctors" OnClick="btnDoctors_Click" />
            </div>
                        <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" />
        </div>
    </form>
</body>
</html>
