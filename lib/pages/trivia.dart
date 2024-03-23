import 'package:flutter/material.dart';

class Trivia extends StatefulWidget {
  @override
  State<Trivia> createState() => _TriviaState();
}

class _TriviaState extends State<Trivia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 200, left: 25, right: 20),
                child: Row(
                  children: [
                    SizedBox(width: 120),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(40),
                  alignment: Alignment(0.05, 0.2),
                  child: const Image(
                    image: AssetImage('assets/Logo.png'),
                    width: 332,
                    height: 206,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 260),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/Dailytriviamainpage.png'),
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 0.7,
                width: 350, // Adjust the width as needed
                color: Colors.white,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                margin: EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/triviaanswer');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    'Try today\'s trivia!',
                    style: TextStyle(
                      fontFamily: 'Judson',
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 110,
            top: 630,
            child: Container(
              color: Colors.transparent,
              child: Center(
                child: Text(
                  'Answer trivias about finance \neveryday for free points',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontFamily: 'AbhayaLibre-SemiBold',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF0C1C3C),
    );
  }
}
