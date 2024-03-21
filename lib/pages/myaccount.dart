import 'package:fivenance/pages/forum.dart';
import 'package:fivenance/pages/news.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:fivenance/pages/training.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                  child: Transform.scale(
                    scale: 0.8, // Adjust the scale factor as needed
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 105),
                Text(
                  'My Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50), // Adjust spacing as needed
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/Accountinfo.png',
                  width: 353, // Adjust width as needed
                  height: 527, // Adjust height as needed
                  fit: BoxFit.contain, // Adjust fit as needed
                ),
                Positioned(
                  top: 410,
                  left: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: Image.asset(
                      'assets/CompleteTrivia.png',
                      width: 70,
                      height: 86,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 90,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forum()),
                      );
                    },
                    child: Image.asset(
                      'assets/EngageForum.png',
                      width: 69,
                      height: 86,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 175,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => News()),
                      );
                    },
                    child: Image.asset(
                      'assets/ReadNews.png',
                      width: 78,
                      height: 96,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 400,
                  left: 260,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Training()),
                      );
                    },
                    child: Image.asset(
                      'assets/RegisterTrain.png',
                      width: 87,
                      height: 110,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
