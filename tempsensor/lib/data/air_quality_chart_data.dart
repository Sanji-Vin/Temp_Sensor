import 'package:fl_chart/fl_chart.dart';

class AirQualityData {
  static List<FlSpot> spots = [
    FlSpot(0, 50), // Good
    FlSpot(1, 48),
    FlSpot(2, 45),
    FlSpot(3, 47),
    FlSpot(4, 49),
    FlSpot(5, 55),
    FlSpot(6, 60), // morning activity
    FlSpot(7, 65),
    FlSpot(8, 70),
    FlSpot(9, 75),
    FlSpot(10, 80),
    FlSpot(11, 90),
    FlSpot(12, 100), // noon traffic
    FlSpot(13, 95),
    FlSpot(14, 85),
    FlSpot(15, 80),
    FlSpot(16, 75),
    FlSpot(17, 70),
    FlSpot(18, 65), // evening calm
    FlSpot(19, 60),
    FlSpot(20, 58),
    FlSpot(21, 55),
    FlSpot(22, 53),
    FlSpot(23, 52),
    FlSpot(24, 50),
  ];
   static Map<int, String> bottomTitle = {
    0: '00h',
    3: '03h',
    6: '06h',
    9: '09h',
    12: '12h',
    15: '15h',
    18: '18h',
    21: '21h',
    24: '24h',
  };
}
