import 'package:flutter/material.dart';
import 'package:mindlink_work/pages/imagepage.dart';
import 'package:mindlink_work/pages/textpage.dart';
import 'package:mindlink_work/pages/videopage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int myIndex=0;
  List WidgetList=[
Textpage(),
VideoPage(),
Imagepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: 
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.text_decrease),
          label: "Text"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back),
          label: "Video"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: "Image"
            )
      ]
      ),
      body: WidgetList[myIndex],
    );
  }
}