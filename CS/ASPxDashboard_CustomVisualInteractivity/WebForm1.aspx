<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" 
    Inherits="ASPxDashboard_CustomVisualInteractivity.WebForm1" %>

<%@ Register Assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.1.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div style="display: inline-block; float: left;">
        <dx:ASPxDashboard ID="ASPxDashboard1" runat="server" Height="600px" Width="800px"
            WorkingMode="Viewer"          
            ClientInstanceName="webViewer" 
            ClientSideEvents-DashboardEndUpdate="function() { createControls(); }"
            ClientSideEvents-ItemSelectionChanged="function(s, e) { applyCurrentSelection(e); }" 
            ClientSideEvents-ItemVisualInteractivity = "function(s, e) { addCustomInteractivity(e); }">
        </dx:ASPxDashboard>
    </div>
    <div id="barGauge" style="display: inline-block; float: left; width: 600px; height: 600px;"></div>
    </form>
</body>
</html>
<script type="text/javascript" src="<%= Page.ResolveClientUrl("~/Scripts/CustomInteractivity.js") %>"></script>


