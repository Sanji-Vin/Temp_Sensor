import 'package:fl_chart/fl_chart.dart';

class LightData {
  final spots = const [
    FlSpot(0, 0),
    FlSpot(1, 0),
    FlSpot(2, 0),
    FlSpot(3, 0),
    FlSpot(4, 0),
    FlSpot(5, 1),
    FlSpot(6, 5), // sunrise
    FlSpot(7, 15),
    FlSpot(8, 30),
    FlSpot(9, 50),
    FlSpot(10, 70),
    FlSpot(11, 85),
    FlSpot(12, 100), // noon (peak)
    FlSpot(13, 95),
    FlSpot(14, 90),
    FlSpot(15, 80),
    FlSpot(16, 60),
    FlSpot(17, 40),
    FlSpot(18, 20), // sunset
    FlSpot(19, 5),
    FlSpot(20, 1),
    FlSpot(21, 0),
    FlSpot(22, 0),
    FlSpot(23, 0),
    FlSpot(24, 0),
  ];
  final bottomTitle = {
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
