import 'package:flutter/material.dart';
import 'package:flutter_chart/models/linear_sales.dart';
import 'package:charts_flutter/flutter.dart' as chart;

class PieChart extends StatelessWidget {
  static List<chart.Series<LinearSales, int>> pieChart() {
    var data = [
      LinearSales(1, 0, Color(0xff3366cc)),
      LinearSales(2, 2, Color(0xff3366cc)),
      LinearSales(3, 4, Color(0xff3366cc)),
      LinearSales(4, 5, Color(0xff3366cc)),
      LinearSales(5, 6, Color(0xff3366cc)),
      LinearSales(6, 7, Color(0xff3366cc)),
    ];

    return [
      chart.Series(
        id: 'pieC',
        data: data,
        domainFn: (datum, index) => datum.sales,
        measureFn: (datum, index) => datum.year,
        colorFn: (datum, index) => chart.ColorUtil.fromDartColor(datum.color),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: chart.PieChart(pieChart(),
          behaviors: [
            chart.DatumLegend(
              outsideJustification: chart.OutsideJustification.endDrawArea,
              horizontalFirst: false,
              desiredMaxColumns: 3,
              cellPadding: EdgeInsets.only(right: 4.0, bottom: 4.0),
              entryTextStyle: chart.TextStyleSpec(
                  color: chart.MaterialPalette.purple.shadeDefault,
                  fontSize: 12),
            ),
          ],
          defaultRenderer: chart.ArcRendererConfig(
              arcWidth: 100,
              arcRendererDecorators: [
                chart.ArcLabelDecorator(
                    labelPosition: chart.ArcLabelPosition.inside)
              ])),
    );
  }
}
