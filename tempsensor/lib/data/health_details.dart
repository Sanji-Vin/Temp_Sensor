import 'package:tempsensor/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assets/icons/burn.png', value: '30°C', title: "temp"),
    HealthModel(
      icon: 'assets/icons/humidity.png',
      value: '20',
      title: "humidity",
    ),
    HealthModel(
      icon: 'assets/icons/aq.png',
      value: '40',
      title: "air_Quality",
    ),
    HealthModel(icon: 'assets/icons/light.png', value: '400', title: "Light"),
  ];
}
