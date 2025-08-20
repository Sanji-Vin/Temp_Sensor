import 'package:flutter/material.dart';
import 'package:tempsensor/constants/constant.dart';

class DeviceStatusCard extends StatelessWidget {
  const DeviceStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Device Status",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 24,
                ), // ✅ Tick icon
                SizedBox(width: 8),
                Text(
                  "Good",
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
