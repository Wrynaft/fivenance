import 'package:flutter/material.dart';

class Trivia extends StatefulWidget {
  @override
  State<Trivia> createState() => _TriviaState();
}

class _TriviaState extends State<Trivia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
        padding: EdgeInsets.only(top: 60, left: 25, right: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Transform.scale(
                scale: 0.8, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 120),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
            Container(
            margin: EdgeInsets.only(top: 40, left: 40, right: 40),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/Logo.png'),
            ),),
          Center(child: Text('Daily Trivia', style: TextStyle(fontSize: 40, color: Colors.white))),
          Center(child: Text('Answer trivias about finance everyday for free points', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Colors.white,))),
          Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
            borderRadius: BorderRadius.all(Radius.circular(30))),
            margin: EdgeInsets.all(30),
            child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/triviaanswer');
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
            child: Text('Try today\'s trivia!', style: TextStyle(fontFamily: 'Judson', color: Colors.black, fontSize: 23)),)
          )
          ]
      ),
      backgroundColor: Color(0xFF0C1C3C),
      );
  }
}