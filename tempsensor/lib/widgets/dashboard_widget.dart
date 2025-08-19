import 'package:flutter/material.dart';
import 'package:tempsensor/widgets/activity_details_card.dart';
import 'package:tempsensor/widgets/line_chart_card.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 18), ActivityDetailsCard(),SizedBox(height: 18,),LineChartCard()]);
  }
}
