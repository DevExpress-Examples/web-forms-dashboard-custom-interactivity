<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
    Inherits="ASPxDashboard_CustomVisualInteractivity.WebForm1" %>

<%@ Register Assembly="DevExpress.Dashboard.v21.2.Web.WebForms, Version=21.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/CustomInteractivity.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="display: inline-block; float: left;">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Height="600px" Width="800px"
            WorkingMode="Viewer"          
            ClientInstanceName="dashboardControl" >
            <ClientSideEvents BeforeRender="onBeforeRender" />
        </dx:ASPxDashboard>
    </div>
    <div id="barGauge" style="display: inline-block; float: left; width: 600px; height: 375px;"></div>
    </form>
</body>
</html>


