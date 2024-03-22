import 'package:flutter/material.dart';

class Mentor2 extends StatefulWidget {
  @override
  State<Mentor2> createState() => _Mentor2State();
}

String? dropdownValue;
class _Mentor2State extends State<Mentor2> {

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                const Column(children: <Widget>[
                  Text('Mentorship', style: TextStyle(color: Colors.white, fontSize: 40)),
                  Text('Sign Up', style: TextStyle(color: Color(0xFFCACACA), fontSize: 40)),
                ],),
                Container(
                margin: const EdgeInsets.all(40),
                alignment: Alignment.center,
                child: const Image(
                  width: 100,
                  image: AssetImage('assets/Logo.png'),
                ),),
              ],),

            Container(
              margin:const EdgeInsets.only(left:20, right:20, bottom: 20),
              child: const LinearProgressIndicator(value: 0.66, color: Color(0xFF64FF8C), backgroundColor: Color(0xFF523F62),)),

            const Center(child: Text('Page 2: Relevant Qualifications', style: TextStyle(color: Colors.white, fontSize: 26))),
            Container(margin: const EdgeInsets.only(left: 20, top: 10), child: const Text('Certification*', style: TextStyle(color: Colors.white, fontSize: 15))),
            Container(margin: const EdgeInsets.all(20),child: const Image(image: AssetImage('assets/Upload2nd.png'),)),
            Container(margin: const EdgeInsets.only(left:20), child: const Text('Please upload any relevant certificates  that demonstrate your expertise, experience, or completion of training programs to  support your qualifications for mentoring.', style: TextStyle(color: Colors.white, fontSize: 13))),
            Container(
              margin: const EdgeInsets.all(20),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Other:',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                  hintText: 'Other qualifications or training in word form...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                OutlinedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFF6DFF95))),
                  child: const Text('Back', style: TextStyle(fontFamily: 'Judson', color: Color(0xFF6DFF95), fontSize: 16)),),
              
                const ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF55E985))),
                  onPressed: null, child: Text('Next', style: TextStyle(color: Colors.black, fontSize: 16)))
              ],),
            )
          ],),
        ),
      )
    );
  }
}