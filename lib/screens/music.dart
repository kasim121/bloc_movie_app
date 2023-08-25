import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
            child: Text(
          "Music",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}