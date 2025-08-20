import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tempsensor/constants/constant.dart';
import 'package:tempsensor/data/line_chart_data.dart';
import 'package:tempsensor/widgets/custom_card_widget.dart';
import 'package:tempsensor/data/humidity_chart_data.dart';
import 'package:tempsensor/data/air_quality_chart_data.dart';
import 'package:tempsensor/data/light_intensity_chart_data.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final tempData = LineData();
    final humidityData = HumidityData();
    final lightData = LightData();
    final airQualityData = AirQualityData();

    return SingleChildScrollView(
      child: CustomCard(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last 24 Hours Overview",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),

              _buildChartSection(
                "Temperature (°C)",
                tempData.spots,
                tempData.bottomTitle,
              ),
              _buildChartSection(
                "Humidity (%)",
                humidityData.spots,
                humidityData.bottomTitle,
              ),
              _buildChartSection(
                "Light Intensity (lux)",
                lightData.spots,
                lightData.bottomTitle,
              ),
              _buildChartSection(
                "Air Quality (AQI)",
                airQualityData.spots,
                airQualityData.bottomTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChartSection(
    String title,
    List<FlSpot> spots,
    Map<int, String> bottomTitles,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
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
                        return bottomTitles[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  bottomTitles[value.toInt()].toString(),
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
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [selectionColor, Colors.transparent],
                      ),
                    ),
                    dotData: FlDotData(show: false),
                    spots: spots,
                  ),
                ],
                minX: 0,
                maxX: 24,
                minY: -10,
                maxY: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
