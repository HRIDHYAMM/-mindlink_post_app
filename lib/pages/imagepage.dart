import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image Post',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        actions: [
          IconButton(onPressed: (){
            Share.shareUri(Uri.parse('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg'));
          }, icon: Icon(Icons.share))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg'),
        ),
      ),
    );
  }
}