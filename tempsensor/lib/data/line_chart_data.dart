import 'package:fl_chart/fl_chart.dart';

class LineData {
  static List<FlSpot> spots = [
    FlSpot(0, 18), // midnight
    FlSpot(1, 17.5),
    FlSpot(2, 17),
    FlSpot(3, 16.8),
    FlSpot(4, 16.5),
    FlSpot(5, 16.2),
    FlSpot(6, 16.5), // sunrise
    FlSpot(7, 17.5),
    FlSpot(8, 19),
    FlSpot(9, 21),
    FlSpot(10, 23),
    FlSpot(11, 25),
    FlSpot(12, 27), // noon
    FlSpot(13, 29),
    FlSpot(14, 31), // peak
    FlSpot(15, 32),
    FlSpot(16, 31.5),
    FlSpot(17, 30),
    FlSpot(18, 28), // evening
    FlSpot(19, 26),
    FlSpot(20, 24),
    FlSpot(21, 22),
    FlSpot(22, 20),
    FlSpot(23, 19),
    FlSpot(24, 18),
  ];

  // Temperature axis (Y)
  final leftTitle = {
    0: '-10°C',
    10: '0°C',
    20: '10°C',
    30: '20°C',
    40: '30°C',
    50: '40°C',
  };

  // Time axis (X)
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
