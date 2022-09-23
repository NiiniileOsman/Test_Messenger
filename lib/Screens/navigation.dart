import 'package:chatting/Screens/chat_room.dart';
import 'package:chatting/Screens/chats.dart';
import 'package:chatting/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iconly/iconly.dart';

class navigaion extends StatefulWidget {
  const navigaion({Key? key}) : super(key: key);

  @override
  State<navigaion> createState() => _navigaionState();
}

class _navigaionState extends State<navigaion> {
  int index = 2;
  final screens = [
    home(),
    chats(
        image: "",
        name: "name",
        skill: "skill",
        message: "message",
        time: "time"),
    chat_room(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: screens[index],
         bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
                indicatorColor: Color.fromARGB(255, 44, 71, 228),
                labelTextStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45.0),
                topRight: Radius.circular(45.0),
              ),
              child: NavigationBar(
                  height: 90,
                  //  backgroundColor: Color(0xFFf1f5fb),
                  backgroundColor: Theme.of(context).cardColor,
                  animationDuration: Duration(seconds: 2),
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  selectedIndex: index,
                  onDestinationSelected: (index) => setState(() {
                        this.index = index;
                      }),
                  destinations: [
                    NavigationDestination(
                        icon: Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        label: "Home"),
                    NavigationDestination(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                        label: "Home"),
                    NavigationDestination(
                        icon: Icon(IconlyLight.chat, color: Colors.black),
                        label: "Chats"),
                    NavigationDestination(
                        icon: Icon(CupertinoIcons.person, color: Colors.black),
                        label: "Profile"),
                        
                  ],
                  
                  ),
            ),
          ),
         
        ));
  }
}
