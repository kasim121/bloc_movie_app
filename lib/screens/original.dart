import 'package:flutter/material.dart';

class Original extends StatefulWidget {
  const Original({super.key});

  @override
  State<Original> createState() => _OriginalState();
}

class _OriginalState extends State<Original> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
            backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
            child: Text(
          "Original",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}