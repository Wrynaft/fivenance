import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:flutter/material.dart';

class TriviaAnswer extends StatefulWidget {
  @override
  State<TriviaAnswer> createState() => _TriviaAnswerState();
}

class _TriviaAnswerState extends State<TriviaAnswer> {
  bool _isLoading = false;

  void _showWrongConfirmation(BuildContext context) {
    setState(() {
      _isLoading = true; // Set loading state to true
    });

    // Simulate delay before showing Save.png
    Future.delayed(Duration(seconds: 2), () {
      // Close loading dialog
      setState(() {
        _isLoading = false;
      });

      // Show the Save.png image and back button
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Material(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/Wronganswer.png',
                    width: 384,
                    height: 195,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 104, 175, 246)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  void _showCorrectConfirmation(BuildContext context) {
    setState(() {
      _isLoading = true; // Set loading state to true
    });

    // Simulate delay before showing Save.png
    Future.delayed(Duration(seconds: 2), () {
      // Close loading dialog
      setState(() {
        _isLoading = false;
      });

      // Show the Save.png image and back button
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Material(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/Correctanswer.png',
                    width: 384,
                    height: 195,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 46, 221, 110)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Color(0xFF0C1C3C),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                            Navigator.pushNamed(context, '/home');
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30, top: 40, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Daily Trivia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'AbhayaLibre',
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Choose your answers carefully.\n ',
                              style: TextStyle(
                                color: Color(0xFFCACACA),
                                fontSize: 16,
                                fontFamily: 'NotoSans-Medium',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 20),
                        child: Container(
                          margin: EdgeInsets.only(top: 20, right: 20),
                          alignment: Alignment.center,
                          child: Image(
                            width: 70,
                            image: AssetImage('assets/Logo.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10.0),
                    child: SizedBox(
                      width: 380, // Adjust the width of the Card as needed
                      height: 230, // Adjust the height of the Card as needed
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'What is the primary purpose of diversification in investment   portfolios?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'AbhayaLibre-SemiBold',
                                    color: Colors
                                        .black, // Adjust text color as needed
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      5), // Adjust spacing between text and image
                              Image.asset(
                                'assets/investment.png', // Assuming investment.png is inside the assets folder
                                width: 150, // Adjust image width as needed
                                height: 150, // Adjust image height as needed
                                fit: BoxFit
                                    .contain, // Adjust image fit as needed
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 20, right: 10),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Color.fromRGBO(154, 240, 132, 1),
                          child: InkWell(
                            splashColor: Color.fromRGBO(185, 206, 152, 1),
                            onTap: () {
                              debugPrint('Cool beans');
                              _showCorrectConfirmation(context);
                            },
                            child: SizedBox(
                              width: 155,
                              height: 100,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Minimizing risk',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'AbhayaLibre-SemiBold'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 20, left: 10),
                        child: Card(
                          color: Color.fromRGBO(90, 242, 181, 1),
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor:
                                Color.fromARGB(255, 117, 200, 82).withAlpha(30),
                            onTap: () {
                              debugPrint('Cool beans');
                              _showWrongConfirmation(context);
                            },
                            child: SizedBox(
                              width: 155,
                              height: 100,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Maximizing returns',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'AbhayaLibre-SemiBold'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 20, right: 10),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          color: Color.fromARGB(255, 60, 226, 143),
                          child: InkWell(
                            splashColor: Color.fromARGB(255, 22, 168, 112),
                            onTap: () {
                              debugPrint('Cool beans');
                              _showWrongConfirmation(context);
                            },
                            child: SizedBox(
                              width: 155,
                              height: 100,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Increasing volatility',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'AbhayaLibre-SemiBold'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 20, left: 10),
                        child: Card(
                          color: Color.fromARGB(255, 109, 214, 210),
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Color.fromARGB(255, 40, 193, 236),
                            onTap: () {
                              debugPrint('Cool beans');
                              _showWrongConfirmation(context);
                            },
                            child: SizedBox(
                              width: 155,
                              height: 100,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Concentrating investments',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'AbhayaLibre-SemiBold'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.7),
                child: Center(
                  child: HourGlassLoadingWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
