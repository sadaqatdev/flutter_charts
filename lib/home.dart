import 'package:flutter/material.dart';
import 'package:flutter_chart/charts/bar_chart.dart';
import 'package:flutter_chart/charts/linear_chart.dart';
import 'package:flutter_chart/charts/pie_chart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Icon(Icons.stacked_line_chart),
                Icon(Icons.bar_chart),
                Icon(Icons.donut_large)
              ],
            ),
          ),
          body: TabBarView(
            children: [LinearChart(), BarChart(), PieChart()],
          )),
    );
  }
}
