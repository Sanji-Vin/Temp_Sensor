import 'package:tempsensor/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assets/icons/burn.png', value: '305', title: "temp"),
    HealthModel(
      icon: 'assets/icons/humidity.png',
      value: '305',
      title: "humidity",
    ),
    HealthModel(
      icon: 'assets/icons/aq.png',
      value: '305',
      title: "air_Quality",
    ),
    HealthModel(icon: 'assets/icons/light.png', value: '305', title: "Light"),
  ];
}
