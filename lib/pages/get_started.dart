import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),
        ),]
      ),
      backgroundColor: Color(0xFF0C1C3C),
      );
  }
}