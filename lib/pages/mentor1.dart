import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mentor1 extends StatefulWidget {
  @override
  State<Mentor1> createState() => _Mentor1State();
}

String? dropdownValue;
class _Mentor1State extends State<Mentor1> {

  bool isChecked = false;
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                Column(children: <Widget>[
                  Text('Mentorship', style: TextStyle(color: Colors.white, fontSize: 40)),
                  Text('Sign Up', style: TextStyle(color: Color(0xFFCACACA), fontSize: 40)),
                ],),
                Container(
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,
                child: Image(
                  width: 100,
                  image: AssetImage('assets/Logo.png'),
                ),),
              ],),

            Container(
              margin:EdgeInsets.only(left:20, right:20, bottom: 20),
              child: LinearProgressIndicator(value: 0.33, color: Color(0xFF64FF8C), backgroundColor: Color(0xFF523F62),)),

            Center(child: Text('Page 1: Personal Details', style: TextStyle(color: Colors.white, fontSize: 26))),
            detailsTextField('Email', false),
            detailsTextField('Phone Number', false),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              detailsTextField2('First Name', 30, 20),
              detailsTextField2('Last Name', 10, 30),
            ],),
            detailsTextField('Company Name', false),
            detailsTextField('Job Title', false),
            detailsTextField('Bank Account No.', false),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFF6DFF95))),
                  child: const Text('Cancel', style: TextStyle(fontFamily: 'Judson', color: Color(0xFF6DFF95), fontSize: 16)),),
              
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF55E985))),
                  onPressed: null, child: Text('Next', style: TextStyle(color: Colors.black, fontSize: 16)))
              ],),
            )
          ],),
        ),
      )
    );
  }

  Container detailsTextField(String label, bool obscure) {
    return Container(
        margin: EdgeInsets.only(left: 30, right:30, top:20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [Color(0xFF10FFA9).withOpacity(0.2), Color(0XFFFFFFFF).withOpacity(0.2)]),
        ),
        child: SizedBox(
          width: 250,
          child: TextField(
            obscureText: obscure,
            style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
            ),
            labelText: label,
            labelStyle: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),),
      );
  }

  Container detailsTextField2(String label, double leftMargin, double rightMargin) {
    return Container(
        margin: EdgeInsets.only(left: leftMargin, right:rightMargin, top:20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [Color(0xFF10FFA9).withOpacity(0.2), Color(0XFFFFFFFF).withOpacity(0.2)]),
        ),
        child: SizedBox(
          width: 150,
          child: TextField(
            style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
            ),
            labelText: label,
            labelStyle: TextStyle(color: Colors.white, fontSize: 18)
          ),
        ),),
      );
  }
}