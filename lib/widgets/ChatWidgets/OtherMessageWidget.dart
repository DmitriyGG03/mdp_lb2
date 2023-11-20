import 'package:flutter/material.dart';

class OtherMessage extends StatelessWidget {
  final String name;
  final String message;
  final String imageURL;

  const OtherMessage(
      {super.key,
        required this.name,
        required this.message,
        required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top:40.0),
            alignment: Alignment.bottomCenter,
            child: Image.asset(imageURL, width: 30, height: 30),
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(
                    left: 8, right: 50, top: 8, bottom: 8),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          name,
                          style: const TextStyle(color: Colors.purple),
                        ),
                      ),
                      Container(child: Text(message)),
                    ])),
          ),
        ],
      ),
    );
  }
}
