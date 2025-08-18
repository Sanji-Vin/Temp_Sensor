import 'package:tempsensor/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assests/icons/burn.png', value: '305', title: "temp"),
    HealthModel(
      icon: 'assests/icons/humidity.png',
      value: '305',
      title: "humidity",
    ),
    HealthModel(
      icon: 'assests/icons/aq.png',
      value: '305',
      title: "air_Quality",
    ),
    HealthModel(icon: 'assests/icons/light.png', value: '305', title: "Light"),
  ];
}
