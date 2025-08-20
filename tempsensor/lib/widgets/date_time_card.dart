import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tempsensor/constants/constant.dart';

class DateTimeCard extends StatefulWidget {
  const DateTimeCard({super.key});

  @override
  State<DateTimeCard> createState() => _DateTimeCardState();
}

class _DateTimeCardState extends State<DateTimeCard> {
  late String _dateTime;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _dateTime = _getDateTime();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = _getDateTime();
      });
    });
  }

  String _getDateTime() {
    final now = DateTime.now();
    return "${now.day}/${now.month}/${now.year}\n${now.hour}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        height: 180, // 🔹 Increased height
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.access_time,
                size: 40,
                color: Colors.amber,
              ), // 🔹 Clock icon
              const SizedBox(height: 12),
              Text(
                _dateTime,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
