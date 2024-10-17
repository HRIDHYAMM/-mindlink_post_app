import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Textpage extends StatefulWidget {
  const Textpage({super.key});

  @override
  State<Textpage> createState() => _TextpageState();
}

class _TextpageState extends State<Textpage> {
  String text="This Is a Demo Text Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Post",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: (){
            Share.share(text);
          }, icon: Icon(Icons.share))
        ],
        centerTitle: true,
      ),
      body: Center(
      child: Text(text),
      ),
    );
  }
}