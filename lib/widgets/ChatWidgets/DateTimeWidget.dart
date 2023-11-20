import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Text(DateFormat('MMM d, HH:mm').format(DateTime.now()),
            style: const TextStyle(color: Colors.grey)));
  }
}
