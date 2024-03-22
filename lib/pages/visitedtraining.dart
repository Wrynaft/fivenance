import 'package:fivenance/pages/activitylog.dart';
import 'package:fivenance/pages/home.dart';
import 'package:flutter/material.dart';

class VisitedTraining extends StatefulWidget {
  const VisitedTraining({super.key});

  @override
  State<VisitedTraining> createState() => _VisitedTrainingState();
}

class _VisitedTrainingState extends State<VisitedTraining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 25, right: 25),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityLog()),
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
            SizedBox(width: 60),
            Text(
              'Visited Training Programs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(), // Added Spacer widget to push the icon to the right
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
