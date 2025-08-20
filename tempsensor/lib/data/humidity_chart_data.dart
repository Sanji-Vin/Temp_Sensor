import 'package:fl_chart/fl_chart.dart';

class HumidityData {
  static List<FlSpot> spots = [
    FlSpot(0, 80),
    FlSpot(1, 82),
    FlSpot(2, 83),
    FlSpot(3, 85),
    FlSpot(4, 87),
    FlSpot(5, 88),
    FlSpot(6, 90),  // sunrise
    FlSpot(7, 88),
    FlSpot(8, 85),
    FlSpot(9, 80),
    FlSpot(10, 75),
    FlSpot(11, 70),
    FlSpot(12, 65), // noon
    FlSpot(13, 60),
    FlSpot(14, 55),
    FlSpot(15, 50), // driest
    FlSpot(16, 52),
    FlSpot(17, 55),
    FlSpot(18, 60), // evening
    FlSpot(19, 65),
    FlSpot(20, 70),
    FlSpot(21, 74),
    FlSpot(22, 76),
    FlSpot(23, 78),
    FlSpot(24, 80),
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
