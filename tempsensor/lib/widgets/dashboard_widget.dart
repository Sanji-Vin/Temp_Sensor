import 'package:flutter/material.dart';
import 'package:tempsensor/widgets/activity_details_card.dart';
import 'package:tempsensor/widgets/line_chart_card.dart';
import 'package:tempsensor/data/line_chart_data.dart';
import 'package:tempsensor/data/humidity_chart_data.dart';
import 'package:tempsensor/data/air_quality_chart_data.dart';
import 'package:tempsensor/data/light_intensity_chart_data.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18),
        ActivityDetailsCard(),
        SizedBox(height: 18),
        LineChartCard(
          title: "Temperature (°C)",
          spots: LineData.spots,
          bottomTitle: LineData.bottomTitle,
          color: Colors.orange,
          minX: 0,
          maxX: 24,
          minY: -10,
          maxY: 40,
        ),
        SizedBox(height: 20),
        LineChartCard(
          title: "Humidity (%)",
          spots: HumidityData.spots,
          bottomTitle: HumidityData.bottomTitle,
          color: Colors.blue,
          minX: 0,
          maxX: 24,
          minY: 0,
          maxY: 100,
        ),
        SizedBox(height: 20),
        LineChartCard(
          title: "Light Intensity (lx)",
          spots: LightData.spots,
          bottomTitle: LightData.bottomTitle,
          color: Colors.yellow,
          minX: 0,
          maxX: 24,
          minY: 0,
          maxY: 1000, // adjust depending on sensor range
        ),
        SizedBox(height: 20),
        LineChartCard(
          title: "Air Quality (ppm)",
          spots: AirQualityData.spots,
          bottomTitle: AirQualityData.bottomTitle,
          color: Colors.green,
          minX: 0,
          maxX: 24,
          minY: 0,
          maxY: 100, // adjust depending on sensor range
        ),
      ],
    );
  }
}
