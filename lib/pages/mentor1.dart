import 'package:flutter/material.dart';

class Mentor1 extends StatefulWidget {
  @override
  State<Mentor1> createState() => _Mentor1State();
}

String? dropdownValue;

class _Mentor1State extends State<Mentor1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0C1C3C),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Column(
                        children: <Widget>[
                          Text(' Mentorship\n Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'AbhayaLibre')),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(
                            33), // Adjust margin to fine-tune position
                        alignment: Alignment.center,
                        child: const Image(
                          width: 100,
                          image: AssetImage('assets/Logo.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: SizedBox(
                    height: 9,
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(100),
                      value: 0.33,
                      color: Color(0xFF64FF8C),
                      backgroundColor: Color(0xFF523F62),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30), // Adjust the top padding as needed
                  child: Text(
                    'Page 1: Personal Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'AbhayaLibre',
                    ),
                  ),
                ),
                detailsTextField('Email', false),
                detailsTextField('Phone Number', false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    detailsTextField2('First Name', 30, 20),
                    detailsTextField2('Last Name', 10, 30),
                  ],
                ),
                detailsTextField('Company Name', false),
                detailsTextField('Job Title', false),
                detailsTextField('Bank Account No.', false),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 50, top: 20),
                            width: 139,
                            height: 36,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushNamed(context,
                                    '/home'); // Navigate to '/home' route
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Color(0xFF6DFF95)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8), // Rounded corners with a radius of 8
                                ),
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontFamily: 'Judson',
                                  color: Color(0xFF6DFF95),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            width: 139,
                            height: 36,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF55E985)), // Background color
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8), // Rounded corners with a radius of 8
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/mentor2');
                              },
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container detailsTextField(String label, bool obscure) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
          const Color(0xFF10FFA9).withOpacity(0.2),
          const Color(0XFFFFFFFF).withOpacity(0.2)
        ]),
      ),
      child: SizedBox(
        width: 250,
        child: TextField(
          obscureText: obscure,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'AbhayaLibre-SemiBold'),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
              labelText: label,
              labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'AbhayaLibre-SemiBold')),
        ),
      ),
    );
  }

  Container detailsTextField2(
      String label, double leftMargin, double rightMargin) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [
          const Color(0xFF10FFA9).withOpacity(0.2),
          const Color(0XFFFFFFFF).withOpacity(0.2)
        ]),
      ),
      child: SizedBox(
        width: 150,
        child: TextField(
          style: const TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
              labelText: label,
              labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'AbhayaLibre-SemiBold')),
        ),
      ),
    );
  }
}
