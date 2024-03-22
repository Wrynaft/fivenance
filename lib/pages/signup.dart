import 'package:fivenance/pages/profile.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

String? dropdownValue;

class _SignUpState extends State<SignUp> {
  bool _isLoading = false; // Flag to track loading state

  void _showSignUpConfirmation(BuildContext context) {
    setState(() {
      _isLoading = true; // Set loading state to true
    });

    // Simulate delay before showing SignUpSuccess.png
    Future.delayed(Duration(seconds: 2), () {
      // Close loading dialog
      setState(() {
        _isLoading = false;
      });

      // Show the SignUpSuccess.png image and back button
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
                    'assets/SignUpSuccess.png',
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
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/begin', (Route<dynamic> route) => false);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 54, 199, 117)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Back',
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

  bool isChecked = false;
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Create',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 46)),
                          Text('Account',
                              style: TextStyle(
                                  color: Color(0xFFCACACA), fontSize: 46)),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(40),
                        alignment: Alignment.center,
                        child: Image(
                          width: 100,
                          image: AssetImage('assets/Logo.png'),
                        ),
                      ),
                    ],
                  ),
                  Center(
                      child: Text('Just some details to get you in!',
                          style: TextStyle(
                              color: Color(0xFFBEBEBE), fontSize: 16))),
                  detailsTextField('Name', false),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 20),
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
                        controller: _dateController,
                        readOnly: true,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Birthday',
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          _selectDate();
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Color(0xFF10FFA9).withOpacity(0.2),
                        Color(0XFFFFFFFF).withOpacity(0.2)
                      ]),
                    ),
                    child: DropdownButtonFormField<String>(
                        dropdownColor: Color(0xFF0E4952),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Full-time',
                          'Part-Time',
                          'Unemployed',
                          'Student'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20)),
                            labelText: 'Occupation',
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 18))),
                  ),
                  detailsTextField('Email address', false),
                  detailsTextField('Username', false),
                  detailsTextField('Password', true),
                  detailsTextField('Confirm password', true),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text(' I agree with the Terms and Privacy by signing up.',
                          style: TextStyle(color: Colors.white, fontSize: 11))
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          _showSignUpConfirmation(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Text('Sign Up',
                            style: TextStyle(
                                fontFamily: 'Judson',
                                color: Colors.black,
                                fontSize: 23)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('HAVE AN ACCOUNT? ',
                          style: TextStyle(
                              color: Color(0xFFB6B6B6B6), fontSize: 13)),
                      TextButton(
                          onPressed: null,
                          child: Text('SIGN IN',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)))
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: HourGlassLoadingWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Container detailsTextField(String label, bool obscure) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
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
          obscureText: obscure,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20)),
              labelText: label,
              labelStyle: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
