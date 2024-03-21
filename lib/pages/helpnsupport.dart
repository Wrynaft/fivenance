import 'package:fivenance/pages/profile.dart';
import 'package:flutter/material.dart';

class HelpnSupport extends StatefulWidget {
  const HelpnSupport({super.key});

  @override
  State<HelpnSupport> createState() => _HelpnSupportState();
}

class _HelpnSupportState extends State<HelpnSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 25),
        child: Row(
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
              'Help & Support',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
