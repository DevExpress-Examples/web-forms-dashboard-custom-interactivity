
# Dashboard for Web Forms - How to add custom interactivity to a dashboard

The Web Dashboard allows you to add custom interactivity to dashboards. For this, handle the [ViewerApiExtensionOptions.onItemVisualInteractivity](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.ViewerApiExtensionOptions?p=netframework#js_devexpress_dashboard_viewerapiextensionoptions_onitemvisualinteractivity) event. You can get data axes used to apply custom interactivity actions, specify the selection mode for dashboard item elements, and so on. Use event arguments to process the [multidimensional data](https://docs.devexpress.com/Dashboard/403003/web-dashboard/dashboard-control-for-javascript-applications-jquery-knockout-etc/obtain-underlying-and-displayed-data) to get the slice, axes, or tuples.

The change of the selection in the dashboard item raises the the [ViewerApiExtensionOptions.onItemSelectionChanged](https://docs.devexpress.com/Dashboard/js-DevExpress.Dashboard.ViewerApiExtensionOptions#js_devexpress_dashboard_viewerapiextensionoptions_onitemselectionchanged) event.

This example shows the following interactivity customization:

- Select categories in the [Grid](https://docs.devexpress.com/Dashboard/117161/web-dashboard/create-dashboards-on-the-web/dashboard-item-settings/grid) dashboard item to visualize the total sales in the [dxBarGauge](https://js.devexpress.com/Documentation/ApiReference/UI_Components/dxBarGauge/) widget. Note that the [hidden](https://docs.devexpress.com/Dashboard/117064/web-dashboard/create-dashboards-on-the-web/binding-dashboard-items-to-data/hidden-data-items) 'Quantity' measure is used to pass values to the [client](https://docs.devexpress.com/Dashboard/116302/web-dashboard/aspnet-web-forms-dashboard-control/client-side-api-overview).

  ![](img/grid-dxbargauge-selection.png)
  
- The [Chart](https://docs.devexpress.com/Dashboard/117159/web-dashboard/create-dashboards-on-the-web/dashboard-item-settings/chart) dashboard item highlights bars corresponding to a hovered argument value.
  
  ![](img/chart-highlight-selection.png)

## Files to Review

* [CustomInteractivity.js](./CS/ASPxDashboard_CustomVisualInteractivity/Scripts/CustomInteractivity.js) (VB: [CustomInteractivity.js](./VB/ASPxDashboard_CustomVisualInteractivity/Scripts/CustomInteractivity.js))
* [WebForm1.aspx](./CS/ASPxDashboard_CustomVisualInteractivity/WebForm1.aspx) (VB: [WebForm1.aspx](./VB/ASPxDashboard_CustomVisualInteractivity/WebForm1.aspx))


## Documentation

- [Interactivity](https://docs.devexpress.com/Dashboard/116985/web-dashboard/create-dashboards-on-the-web/interactivity)

## More Examples

- [Dashboard for ASP.NET Core - How to add custom interactivity to a dashboard](https://github.com/DevExpress-Examples/asp-net-core-dashboard-custom-interactivity)
- [Dashboard for Web Forms - How to Apply Master Filter in Code](https://github.com/DevExpress-Examples/asp-net-web-forms-dashboard-apply-master-filter-in-code)
