import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:flutter/material.dart';

class Mentor2 extends StatefulWidget {
  @override
  State<Mentor2> createState() => _Mentor2State();
}

String? dropdownValue;

class _Mentor2State extends State<Mentor2> {
  bool isChecked = false;
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
                    'assets/Mentorrequest.png',
                    width: 348,
                    height: 251,
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
    return Scaffold(
      backgroundColor: const Color(0xFF0C1C3C),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 8.1),
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
                        value: 0.66,
                        color: Color(0xFF64FF8C),
                        backgroundColor: Color(0xFF523F62),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20), // Adjust the top padding as needed
                    child: Text(
                      'Page 2: Relevant Qualifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'AbhayaLibre',
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: const Text('\nCertification*',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'AbhayaLibre-SemiBold'))),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: const Image(
                        image: AssetImage('assets/Upload2nd.png'),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text(
                          'Please upload any relevant certificates  that demonstrate your expertise, experience, or completion of training programs to  support your qualifications for mentoring.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'AbhayaLibre-SemiBold'))),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const TextField(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'AbhayaLibre-SemiBold'),
                        decoration: InputDecoration(
                          labelText: 'Other:',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'AbhayaLibre-SemiBold'),
                          hintText:
                              'Other qualifications or training in word form...',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontFamily: 'AbhayaLibre-SemiBold'),
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 50),
                          width: 139,
                          height: 36,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/mentor1');
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Color(0xFF6DFF95)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8), // Rounded corners with a radius of 8
                              ),
                            ),
                            child: Text(
                              'Back',
                              style: TextStyle(
                                fontFamily: 'Judson',
                                color: Color(0xFF6DFF95),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 139,
                          height: 36,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
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
                              _showSaveConfirmation(context);
                            },
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
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
