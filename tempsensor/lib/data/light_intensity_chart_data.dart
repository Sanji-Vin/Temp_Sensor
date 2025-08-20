import 'package:fl_chart/fl_chart.dart';

class LightData {
  static List<FlSpot> spots = [
    FlSpot(0, 0),
    FlSpot(1, 0),
    FlSpot(2, 0),
    FlSpot(3, 0),
    FlSpot(4, 0),
    FlSpot(5, 10),
    FlSpot(6, 50), // sunrise
    FlSpot(7, 150),
    FlSpot(8, 300),
    FlSpot(9, 500),
    FlSpot(10, 700),
    FlSpot(11, 850),
    FlSpot(12, 1000), // noon (peak)
    FlSpot(13, 950),
    FlSpot(14, 900),
    FlSpot(15, 800),
    FlSpot(16, 600),
    FlSpot(17, 400),
    FlSpot(18, 200), // sunset
    FlSpot(19, 50),
    FlSpot(20, 10),
    FlSpot(21, 0),
    FlSpot(22, 0),
    FlSpot(23, 0),
    FlSpot(24, 0),
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
