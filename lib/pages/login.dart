import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0C1C3C),
        body: Column(
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 46)),
                    Text('Glad you\'re here!',
                        style:
                            TextStyle(color: Color(0xFFCACACA), fontSize: 16)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(40),
                  alignment: Alignment.center,
                  child: Image(
                    width: 140,
                    image: AssetImage('assets/Logo.png'),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Color(0xFF10FFA9).withOpacity(0.2),
                  Color(0XFFFFFFFF).withOpacity(0.2)
                ]),
              ),
              child: SizedBox(
                width: 250,
                child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Username',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 18))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Color(0xFF10FFA9).withOpacity(0.2),
                  Color(0XFFFFFFFF).withOpacity(0.2)
                ]),
              ),
              child: SizedBox(
                width: 250,
                child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 18))),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/home', (Route<dynamic> route) => false);
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
                    style: TextStyle(color: Colors.white, fontSize: 16))),
            Image(
              image: AssetImage('assets/Or.png'),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: const ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
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
                    style: TextStyle(color: Color(0xFFB6B6B6), fontSize: 13)),
                TextButton(
                    onPressed: null,
                    child: Text('SIGN UP',
                        style: TextStyle(color: Colors.white, fontSize: 13)))
              ],
            )
          ],
        ));
  }
}
