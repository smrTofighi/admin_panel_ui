
import 'package:admin_panel_ui/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sections: pieChartDataList,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  '35.1',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
    
                ),
                const Text('of 128GB')
              ],
            ),
          )
        ],
      ),
    );
  }
}

var pieChartDataList = [
  PieChartSectionData(
    value: 25,
    showTitle: false,
    radius: 25,
    color: Colors.purpleAccent,
  ),
  PieChartSectionData(
    value: 20,
    showTitle: false,
    radius: 23,
    color: Colors.blueAccent,
  ),
  PieChartSectionData(
    value: 15,
    showTitle: false,
    radius: 21,
    color: Colors.greenAccent,
  ),
  PieChartSectionData(
    value: 10,
    showTitle: false,
    radius: 19,
    color: Colors.orangeAccent,
  ),

];
