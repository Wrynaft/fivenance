import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;

  void _showSaveConfirmation(BuildContext context) {
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
                    'assets/LoginSuccess.png',
                    width: 325,
                    height: 234,
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
                          Color.fromARGB(255, 54, 199, 117)),
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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xFF0C1C3C),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 25, right: 20),
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
                            Text('Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 46,
                                  fontFamily: 'AbhayaLibre',
                                )),
                            SizedBox(height: 10),
                            Text('Glad you\'re here!',
                                style: TextStyle(
                                  color: Color(0xFFCACACA),
                                  fontSize: 16,
                                  fontFamily: 'NotoSans-Medium',
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Container(
                          margin: EdgeInsets.all(40),
                          alignment: Alignment.center,
                          child: Image(
                            width: 140,
                            image: AssetImage('assets/Logo.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 0, right: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color(0xFF10FFA9).withOpacity(0.2),
                        Color(0XFFFFFFFF).withOpacity(0.2)
                      ]),
                    ),
                    child: SizedBox(
                      width: 230,
                      height: 60,
                      child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: '   Username',
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'AbhayaLibre'))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 30, right: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color(0xFF10FFA9).withOpacity(0.2),
                        Color(0XFFFFFFFF).withOpacity(0.2)
                      ]),
                    ),
                    child: SizedBox(
                      width: 230,
                      height: 60,
                      child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: '   Password',
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'AbhayaLibre'))),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      margin: EdgeInsets.only(left: 25, top: 35, right: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          _showSaveConfirmation(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Text('Login',
                            style: TextStyle(
                                fontFamily: 'Judson',
                                color: Colors.black,
                                fontSize: 23)),
                      )),
                  TextButton(
                      onPressed: null,
                      child: Text('Forgot Password?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'AbhayaLibre-Regular'))),
                  Image(
                    image: AssetImage('assets/Or.png'),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, top: 15),
                      child: const ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/Google1.png'),
                              ),
                              Text('   Log in with Google',
                                  style: TextStyle(
                                      fontFamily: 'Judson',
                                      color: Colors.black,
                                      fontSize: 19)),
                            ]),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('DON\'T HAVE AN ACCOUNT? ',
                          style: TextStyle(
                              color: Color(0xFFB6B6B6),
                              fontSize: 13,
                              fontFamily: 'Poppins-Bold')),
                      TextButton(
                          onPressed: null,
                          child: Text('SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Poppins-Bold')))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        // Overlay for loading indicator
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
    );
  }
}
