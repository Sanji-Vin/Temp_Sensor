import 'package:flutter/material.dart';
import 'package:tempsensor/widgets/activity_details_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const SizedBox(height: 18),
        const ActivityDetailsCard(),
      ],
    );
  }
}
