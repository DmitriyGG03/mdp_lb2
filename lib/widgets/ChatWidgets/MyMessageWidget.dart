import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  final String message;

  const MyMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(left: 50, right: 8, top: 8, bottom: 8),
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}