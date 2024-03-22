import 'package:flutter/material.dart';

class TriviaAnswer extends StatefulWidget {
  @override
  State<TriviaAnswer> createState() => _TriviaAnswerState();
}

class _TriviaAnswerState extends State<TriviaAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(40),
            alignment: Alignment.center,
            child: Image(
              width: 200,
              image: AssetImage('assets/Logo.png'),
            ),),
            Card(
              child: SizedBox(
                width: 250,
                height: 150,
                child: Center(child: Text('Here is a question', style: TextStyle(fontSize: 20))))
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 10),
                child: Card(
                clipBehavior: Clip.hardEdge,
                color: Colors.blue,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 33, 100, 243),
                  onTap: (){
                    debugPrint('Cool beans');
                  },
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(child: Padding(padding: EdgeInsets.all(20), child: Text('Option 1', style: TextStyle(fontSize: 16))))),
                )
                            ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, right: 20, left: 10),
                child: Card(
                color: Colors.amber,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 222, 107, 0).withAlpha(30),
                  onTap: (){
                    debugPrint('Cool beans');
                  },
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(child: Padding(padding: EdgeInsets.all(20), child: Text('Option 2', style: TextStyle(fontSize: 16))))),
                )
                            ),
              ),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 10),
                child: Card(
                clipBehavior: Clip.hardEdge,
                color: const Color.fromARGB(255, 33, 243, 110),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 22, 168, 112),
                  onTap: (){
                    debugPrint('Cool beans');
                  },
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(child: Padding(padding: EdgeInsets.all(20), child: Text('Option 3', style: TextStyle(fontSize: 16))))),
                )
                            ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, right: 20, left: 10),
                child: Card(
                color: Color.fromARGB(255, 227, 71, 81),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Color.fromARGB(255, 233, 32, 35),
                  onTap: (){
                    debugPrint('Cool beans');
                  },
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Center(child: Padding(padding: EdgeInsets.all(20), child: Text('Option 4', style: TextStyle(fontSize: 16))))),
                )
                            ),
              ),
            ],),
          ]
      ),
      backgroundColor: Color(0xFF0C1C3C),
      );
  }
}