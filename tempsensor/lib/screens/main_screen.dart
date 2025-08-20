import 'package:flutter/material.dart';
import 'package:tempsensor/widgets/dashboard_widget.dart';
import 'package:tempsensor/widgets/navbar_widget.dart';
import 'package:tempsensor/widgets/summary_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Left sidebar
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
