import 'package:flutter/material.dart';
import 'package:tempsensor/util/responsive.dart';
import 'package:tempsensor/widgets/dashboard_widget.dart';
import 'package:tempsensor/widgets/date_time_card.dart';
import 'package:tempsensor/widgets/device_status_card.dart';
import 'package:tempsensor/widgets/navbar_widget.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop =Responsie.isDesktop(context); 
    return Scaffold(
      drawer: !isDesktop
      ? const SizedBox(width: 250,child: SideMenuWidget(),)
      : null,
      body: SafeArea(
        child: Row(
          children: [
            // Left sidebar
            if(isDesktop)
            Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),

            // Main dashboard (scrollable)
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: DashboardWidget(),
              ),
            ),

            // Right panel
            if (isDesktop)
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    DateTimeCard(), // exact date & time
                    SizedBox(height: 20),
                    DeviceStatusCard(), // device status
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
