import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

String? dropdownValue;
class _SignUpState extends State<SignUp> {

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
                  Text('Create', style: TextStyle(color: Colors.white, fontSize: 46)),
                  Text('Account', style: TextStyle(color: Color(0xFFCACACA), fontSize: 46)),
                ],),
                Container(
                margin: EdgeInsets.all(40),
                alignment: Alignment.center,
                child: Image(
                  width: 100,
                  image: AssetImage('assets/Logo.png'),
                ),),
              ],),
            Center(child: Text('Just some details to get you in!', style: TextStyle(color: Color(0xFFBEBEBE), fontSize: 16))),
            detailsTextField('Name', false),
            Container(
          margin: EdgeInsets.only(left: 30, right:30, top:20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [Color(0xFF10FFA9).withOpacity(0.2), Color(0XFFFFFFFF).withOpacity(0.2)]),
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
                borderRadius: BorderRadius.circular(20)
              ),
              labelText: 'Birthday',
              labelStyle: TextStyle(color: Colors.white, fontSize: 18),
              
            ),
            onTap: (){
              _selectDate();
            },
          ),),
        ),
            Container(
              width: 250,
              margin: EdgeInsets.only(left: 30, right:30, top:20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Color(0xFF10FFA9).withOpacity(0.2), Color(0XFFFFFFFF).withOpacity(0.2)]),
              ),
          child: DropdownButtonFormField<String>(
            dropdownColor: Color(0xFF0E4952),
            onChanged: (String? newValue) {
            setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['Full-time', 'Part-Time', 'Unemployed', 'Student'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );}).toList(),
            style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)
            ),
            labelText: 'Occupation',
            labelStyle: TextStyle(color: Colors.white, fontSize: 18)
          )
                  ),
        ),
            detailsTextField('Email address', false),
            detailsTextField('Username', false),
            detailsTextField('Password', true),
            detailsTextField('Confirm password', true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(value: isChecked, 
                onChanged: (bool? value){
                  setState((){
                    isChecked = value!;
                  });
                }),
                Text(' I agree with the Terms and Privacy by signing up.', style: TextStyle(color: Colors.white, fontSize: 11))
        
            ],),
            Container(
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFD3FFF9), Color(0XFF61FF89)]),
                borderRadius: BorderRadius.all(Radius.circular(30))),
                margin: EdgeInsets.only(left:20, top:20, right: 20),
                child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                child: Text('Sign Up', style: TextStyle(fontFamily: 'Judson', color: Colors.black, fontSize: 23)),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('HAVE AN ACCOUNT? ', style: TextStyle(color: Color(0xFFB6B6B6), fontSize: 13)),
                TextButton(onPressed: null, child: Text('SIGN IN', style: TextStyle(color: Colors.white, fontSize: 13)))
              ],)
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

  Future<void> _selectDate() async{
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      );

      if (_picked != null){
        setState((){
          _dateController.text = _picked.toString().split(" ")[0];
        });
      }
  }
}