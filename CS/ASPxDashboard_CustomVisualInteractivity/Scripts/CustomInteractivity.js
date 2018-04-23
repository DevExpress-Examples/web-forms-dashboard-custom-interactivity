var defaultAxis = DashboardDataAxisNames.DefaultAxis,
    argumentAxis = DashboardDataAxisNames.ChartArgumentAxis;

function addCustomInteractivity(args) {
    if (args.ItemName == "gridDashboardItem1") {
        args.SetTargetAxes([defaultAxis]);
        args.SetSelectionMode("Multiple");
    }
    if (args.ItemName == "chartDashboardItem1") {
        args.SetTargetAxes([argumentAxis]);
        args.EnableHighlighting(true);
    }
}

function createControls() {
    $('#barGauge').dxBarGauge({
        startValue: 0,
        endValue: 10000,
        values: getAllValues(),
        label: {
            format: 'fixedPoint',
            precision: 0
        }
    });
}

function applyCurrentSelection(args) {
    var quantityValues = [];
    if (args.ItemName == "gridDashboardItem1" & args.GetCurrentSelection().length != 0) {
        var clientData = webViewer.GetItemData("gridDashboardItem1");
        for (var i = 0; i < args.GetCurrentSelection().length; i++) {
            var currentTuple = args.GetCurrentSelection()[i],
                slice = clientData.GetSlice(currentTuple.GetAxisPoint()),
                quantity = (slice.GetMeasureValue(clientData.GetMeasures()[0].Id)).GetValue();
            quantityValues.push(quantity);
        }
    } else {
        quantityValues = getAllValues();
    }
    $('#barGauge').data("dxBarGauge").values(quantityValues);
}

function getAllValues() {
    var quantityValues = [],
        clientData = webViewer.GetItemData("gridDashboardItem1");
    for (var i = 0; i < clientData.GetAxis(defaultAxis).GetPoints().length; i++) {
        var slice = clientData.GetSlice(clientData.GetAxis(defaultAxis).GetPoints()[i]),
            quantity = (slice.GetMeasureValue(clientData.GetMeasures()[0].Id)).GetValue();
        quantityValues.push(quantity);
    }
    return quantityValues;
}