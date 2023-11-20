import 'package:flutter/material.dart';

import 'ChatWidgets/ListAndInputWidget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              alignment: Alignment.center,
              child: const MyListViewWithInput())),
    );
  }
}
