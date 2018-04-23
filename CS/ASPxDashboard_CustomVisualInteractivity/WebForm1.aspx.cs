using DevExpress.DashboardWeb;
using System;

namespace ASPxDashboard_CustomVisualInteractivity
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxDashboard1.SetDashboardStorage(new DashboardFileStorage(Server.MapPath("App_Data/Dashboards")));
        }
    }
}