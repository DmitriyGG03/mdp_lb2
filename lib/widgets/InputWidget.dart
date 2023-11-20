import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {

  const MyInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 10, left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.black,
        ),
        child: Row(
          children: <Widget>[
            // Left side button "Load file"
            IconButton(
              icon: Image.asset("assets/images/fileLoad2.png", width: 30, height: 30),
              onPressed: () {
                debugPrint("Load file button pressed!");
              },
            ),
            Expanded(
              // Input field
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Your message',
                    contentPadding: EdgeInsets.all(10.0), 
                      hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
            ),
            // Right side button "Send message"
            IconButton(
              icon: Image.asset("assets/images/send.png", width: 30, height: 30),
              onPressed: () {
                debugPrint("Send message button pressed!");
              },
            ),
          ],
        ),
      ),
    );
  }
}