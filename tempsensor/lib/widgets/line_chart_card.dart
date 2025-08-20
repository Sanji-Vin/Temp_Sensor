import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tempsensor/constants/constant.dart';
import 'package:tempsensor/widgets/custom_card_widget.dart';

class LineChartCard extends StatelessWidget {
  final String title;
  final List<FlSpot> spots;
  final Map<int, String> bottomTitle;
  final Color color;
  final double minX;
  final double maxX;
  final double minY;
  final double maxY;

  const LineChartCard({
    super.key,
    required this.title,
    required this.spots,
    required this.bottomTitle,
    required this.color,
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  bottomTitle[value.toInt()].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: color,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [color, Colors.transparent],
                      ),
                    ),
                    dotData: FlDotData(show: false),
                    spots: spots,
                  ),
                ],
                minX: minX,
                maxX: maxX,
                minY: minY,
                maxY: maxY,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
