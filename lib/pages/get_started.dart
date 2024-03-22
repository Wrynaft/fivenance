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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
            margin: EdgeInsets.all(40),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),)
        ),
          Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
            borderRadius: BorderRadius.all(Radius.circular(30))),
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/begin');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
            child: Text('Get Started', style: TextStyle(fontFamily: 'Judson', color: Colors.black, fontSize: 23)),)
          )
          ]
      ),
      backgroundColor: Color(0xFF0C1C3C),
      );
  }
}