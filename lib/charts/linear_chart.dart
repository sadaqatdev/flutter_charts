import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_chart/models/linear_sales.dart';

class LinearChart extends StatelessWidget {
  static List<charts.Series<LinearSales, num>> serises() {
    var salesData = [
      LinearSales(1, 1, Color(0xff3366cc)),
      LinearSales(2, 2, Color(0xff3366cc)),
      LinearSales(3, 3, Color(0xff3366cc)),
      LinearSales(4, 4, Color(0xff3366cc)),
      LinearSales(5, 5, Color(0xff3366cc)),
      LinearSales(6, 6, Color(0xff3366cc)),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'linearChart',
        data: salesData,
        domainFn: (data, index) => data.year,
        measureFn: (data, index) => data.sales,
        colorFn: (datum, index) {
          return charts.ColorUtil.fromDartColor(datum.color);
        },
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: charts.LineChart(
        serises(),
        animate: true,
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
