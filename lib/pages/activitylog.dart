import 'package:fivenance/pages/forumlikesrecord.dart';
import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/newsrecord.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:fivenance/pages/repliesrecord.dart';
import 'package:fivenance/pages/searchhistoryrecord.dart';
import 'package:fivenance/pages/triviarecord.dart';
import 'package:fivenance/pages/visitedtraining.dart';
import 'package:flutter/material.dart';

class ActivityLog extends StatefulWidget {
  const ActivityLog({super.key});

  @override
  State<ActivityLog> createState() => _ActivityLogState();
}

class _ActivityLogState extends State<ActivityLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 25,
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
                    scale: 0.8,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 105),
                Text(
                  'Activity log',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            right: 25,
            child: GestureDetector(
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
          ),
          Positioned(
            top: 140,
            left: 20,
            child: Container(
              width: 352,
              height: 453,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('assets/ActivityLog.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 167,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForumLikesRecord()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 245,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RepliesnComments()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 320,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchHistory()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 393,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsRecord()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 464,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VisitedTraining()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Forward icon
            top: 534,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TriviaRecord()),
                );
              },
              child: Transform.scale(
                scale: 0.7,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
