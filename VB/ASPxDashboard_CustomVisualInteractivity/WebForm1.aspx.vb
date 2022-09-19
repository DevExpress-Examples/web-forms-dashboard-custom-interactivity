Imports DevExpress.DashboardWeb
Imports System

Namespace ASPxDashboard_CustomVisualInteractivity

    Public Partial Class WebForm1
        Inherits Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            ASPxDashboard1.SetDashboardStorage(New DashboardFileStorage(Server.MapPath("App_Data/Dashboards")))
        End Sub
    End Class
End Namespace
