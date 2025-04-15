import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData extends StatelessWidget {
  final List<String> months = ['Oct', 'Nov', 'Dec', 'Jan', 'Feb'];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(LineChartData(
        borderData: FlBorderData(show: false),
        minY: 1000,
        maxY: 3500,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      return Text(
                        months[index],
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      );
                    },
                    interval: 1))),
        lineBarsData: [
          LineChartBarData(
              isCurved: true,
              gradient:
                  LinearGradient(colors: [Colors.purple, Colors.deepPurple]),
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(colors: [
                  Colors.purple.withOpacity(0.3),
                  Colors.transparent
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              dotData: FlDotData(
                show: false,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 5,
                    color: Colors.deepPurpleAccent,
                    strokeWidth: 2,
                    strokeColor: Colors.white,
                  );
                },
              ),
              spots: [
                FlSpot(0, 1500),
                FlSpot(1, 2500),
                FlSpot(2, 2100),
                FlSpot(3, 2600),
                FlSpot(4, 2200)
              ])
        ],
        lineTouchData: LineTouchData(
          enabled: true,
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.deepPurple,
            tooltipRoundedRadius: 10,
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((barSpot) {
                return LineTooltipItem(
                  '\$ ${barSpot.y.toStringAsFixed(0)}',
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
          getTouchedSpotIndicator:
              (LineChartBarData barData, List<int> spotIndexes) {
            return spotIndexes.map((index) {
              return TouchedSpotIndicatorData(
                FlLine(color: Colors.transparent), // remove vertical line
                FlDotData(
                  show: true,
                  getDotPainter: (spot, percent, barData, index) =>
                      FlDotCirclePainter(
                    radius: 6,
                    color: Colors.deepPurple,
                    strokeWidth: 3,
                    strokeColor: Colors.white,
                  ),
                ),
              );
            }).toList();
          },
        ),
      )),
    );
  }
}
