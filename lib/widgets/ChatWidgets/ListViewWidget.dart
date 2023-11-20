import 'package:flutter/material.dart';

import 'DateTimeWidget.dart';
import 'MyMessageWidget.dart';
import 'OtherMessageWidget.dart';

const List<({String name, String text, String imageUrl})> chatMessages = [
  (
    name: "Me",
    text: "Hi, I`m planning a visit to Madrid. Any spots suggestions?",
    imageUrl: ""
  ),
  (name: "Me", text: "Considering my trip this May", imageUrl: ""),
  (name: "Janice King", text: "Hola!", imageUrl: "assets/images/women.png"),
  (
    name: "Janice King",
    text: "You came to the right place. I know plenty of good spots in Madrid!",
    imageUrl: "assets/images/women.png"
  ),
  (
    name: "Janice King",
    text: "Any specific interests you have?",
    imageUrl: "assets/images/women.png"
  ),
  (
    name: "Matthew White",
    text: "Muzeums, restaurants, etc.",
    imageUrl: "assets/images/man.png"
  ),
  (name: "Me", text: "I wish to explore it all!", imageUrl: ""),
];

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatMessages.length,
      itemBuilder: (BuildContext context, int index) {
        if(index == 0) {
          return const DateTimeWidget();
        }
        if (chatMessages[index].imageUrl.isEmpty) {
          return MyMessage(message: chatMessages[index].text);
        } else {
          return OtherMessage(
              name: chatMessages[index].name,
              message: chatMessages[index].text,
              imageURL: chatMessages[index].imageUrl);
        }
      },
    );
  }
}

