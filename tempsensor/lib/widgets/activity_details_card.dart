import 'package:flutter/material.dart';
import 'package:tempsensor/data/health_details.dart';
import 'package:tempsensor/widgets/custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});
  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,),
      itemBuilder: (context, index) =>CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            )
          ],
        ),
        ),
      );
    
  }
}
