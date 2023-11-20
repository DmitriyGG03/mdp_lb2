import 'package:flutter/material.dart';

import '../../main.dart';
import '../InputWidget.dart';
import 'ListViewWidget.dart';

class MyListViewWithInput extends StatelessWidget {

  const MyListViewWithInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: <Widget>[
          Expanded(
            flex: 13,
            child: MyList(),
          ),
          Expanded(
            flex:2,
            child: MyInput(),
          )
        ]
    );
  }
}