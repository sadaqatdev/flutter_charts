import 'package:flutter/material.dart';
import 'package:flutter_chart/models/click_payer.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChart extends StatelessWidget {
  static List<charts.Series<ClickPerYear, String>> pieData() {
    var chartData = [
      ClickPerYear(click: 2, year: '2018', color: Colors.black),
      ClickPerYear(click: 4, year: '2019', color: Colors.green),
      ClickPerYear(click: 5, year: '2020', color: Colors.amber),
      ClickPerYear(click: 7, year: '2021', color: Colors.amberAccent),
      ClickPerYear(click: 10, year: '2022', color: Colors.blue)
    ];

    final series = [
      charts.Series<ClickPerYear, String>(
          id: 'BarChart',
          data: chartData,
          domainFn: (data, index) => data.year,
          measureFn: (data, index) => data.click,
          colorFn: (data, index) => charts.ColorUtil.fromDartColor(data.color))
    ];

    return series;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: charts.BarChart(
        pieData(),
        animate: true,
      ),
    );
  }
}
