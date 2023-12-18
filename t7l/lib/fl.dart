import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Pie Chart Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  color: Colors.blue,
                  value: 30,
                  title: 'Label 1',
                ),
                PieChartSectionData(
                  color: Colors.green,
                  value: 40,
                  title: 'Label 2',
                ),
                PieChartSectionData(
                  color: Colors.orange,
                  value: 30,
                  title: 'Label 3',
                ),
              ],
              sectionsSpace: 0,
              centerSpaceRadius: 40,
            ),
          ),
        ),
      ),
    );
  }
}
