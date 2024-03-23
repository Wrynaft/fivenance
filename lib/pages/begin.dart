import 'package:flutter/material.dart';

class Begin extends StatefulWidget {
  const Begin({super.key});

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(40),
              alignment: Alignment(0.05, 0.1),
              child: const Image(
                image: AssetImage('assets/Logo.png'),
                width: 332,
                height: 206,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 5),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF6DFF95))),
                      child: const Text('Login',
                          style: TextStyle(
                              fontFamily: 'Judson',
                              color: Color(0xFF6DFF95),
                              fontSize: 21)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5, right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF22D393))),
                      child: Text('Sign Up',
                          style: TextStyle(
                              fontFamily: 'Judson',
                              color: Colors.black,
                              fontSize: 21)),
                    ),
                  ),
                )
              ],
            ),
            const Divider(color: Color(0xFF435D92)),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                        Text('   Continue with Google',
                            style: TextStyle(
                                fontFamily: 'Judson',
                                color: Colors.black,
                                fontSize: 19)),
                      ]),
                )),
            Container(
              margin: const EdgeInsets.all(20),
              child: Center(
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'By registering you agree with our ',
                      style: new TextStyle(color: const Color(0xFFB6B6B6))),
                  TextSpan(
                      text: 'Terms and Conditions',
                      style: new TextStyle(color: const Color(0xFF9D5CE9)))
                ])),
              ),
            )
          ]),
      backgroundColor: const Color(0xFF0C1C3C),
    );
  }
}
