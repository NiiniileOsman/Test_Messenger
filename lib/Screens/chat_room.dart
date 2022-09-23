import 'package:chatting/Screens/active.dart';
import 'package:chatting/Screens/chats.dart';
import 'package:chatting/Screens/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class chat_room extends StatelessWidget {
  const chat_room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        // backgroundColor: Colo,
        backgroundColor: Theme.of(context).cardColor,
        title: Text(
          "Chat Room",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              FontAwesomeIcons.ellipsisVertical,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          search_widget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                active(image: 'images/n.jpeg'),
                active(image: 'images/d1.jpg'),
                active(image: 'images/d2.jpg'),
                active(image: 'images/d3.jpg'),
                active(image: 'images/d4.jpg'),
                active(image: 'images/d5.jpg'),
                // active(image: 'images/b.png'),
              ],
            ),
          ),
        chats(image: "images/n.jpeg", name: "Eng Abdimalik Osman Ahmed", skill: "Mobile Develoer", message: "Hi Nice To Meet You, How Can I help Yuou", time: " 1 m ago"),
        chats(image: "images/n.jpeg", name: "Dr. Abdiqani Osman Ahmed", skill: "General Surgery", message: "Hi Welcome 👋", time: " 1 m ago"),
        chats(image: "images/d1.jpg", name: "Drs. Marish Khan ", skill: "Cardiologist", message: "Hi, Nice to Meet You, how Can i help Ypu", time: "1 m ago"),
        chats(image: "images/d2.jpg", name: "Dr. Hanry", skill: "Cardiologist", message: "Welcome 👋", time: " 5 m ago"),
        chats(image: "images/d3.jpg", name: "Dr. Abdiqani Osman Ahmed", skill: "Cardiologist", message: "Hi Welcome 👋", time: " 1 m ago"),
        chats(image: "images/d4.jpg", name: "Dr. David", skill: "Cardiologist", message: "Hi Welcome 👋", time: " 27 m ago"),
        chats(image: "images/d5.jpg", name: "Dr. Joseph Steven", skill: "Cardiologist", message: "Hi Welcome 👋", time: " 1 m ago"),
        ],
      ),
    );
  }
}

