import 'package:fivenance/pages/aboutapp.dart';
import 'package:fivenance/pages/activitylog.dart';
import 'package:fivenance/pages/begin.dart';
import 'package:fivenance/pages/editprofile.dart';
import 'package:fivenance/pages/goals.dart';
import 'package:fivenance/pages/helpnsupport.dart';
import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/myaccount.dart';
import 'package:fivenance/pages/rewards.dart';
import 'package:fivenance/pages/triviareport.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height:
                      kToolbarHeight + MediaQuery.of(context).padding.top + 120,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(13, 80, 129, 1.000),
                        Color.fromRGBO(120, 173, 144, 1.000)
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  top: kToolbarHeight + MediaQuery.of(context).padding.top + 20,
                  left: 20,
                  child: Container(
                    width: 352,
                    height: 580,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/Profileinfo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            // Back button
            top: 110,
            left: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Navigate back to previous screen
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            // MyAccountIcon
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 168,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccount()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 230,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityLog()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Trivia Report
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 292,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TriviaReport()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Rewards
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 354,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rewards()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Goals
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 416,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Goals()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Log Out button
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 478,
            right: 40,
            child: GestureDetector(
              onTap: () {
                // Show the logout confirmation dialog
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return LogoutConfirmationDialog();
                  },
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // Help & Support
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 588,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpnSupport()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            // About App
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 650,
            right: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutApp()),
                );
              },
              child: Transform.scale(
                scale: 0.7, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 0,
            left: MediaQuery.of(context).size.width / 2 - 165,
            child: GestureDetector(
              child: Container(
                width: 296,
                height: 98,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/ProfileSummary.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 30,
            right: MediaQuery.of(context).size.width / 2 - 170,
            child: GestureDetector(
              onTap: () {},
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage('assets/editIcon.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoutConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Material(
            color: Colors.transparent,
            child: Image.asset(
              'assets/Logout.png',
              width: 384,
              height: 209,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  // Show loading dialog
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Center(
                        child: HourGlassLoadingWidget(),
                      );
                    },
                  );

                  //delay
                  Future.delayed(Duration(seconds: 2), () {
                    // Close the loading
                    Navigator.of(context, rootNavigator: true).pop();

                    // Close the current dialog
                    Navigator.pop(context);

                    // Show Log out success dialog
                    showSuccessDialog(context);
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(73, 210, 129, 1.000),
                  ),
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
                  'Log out',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/Logoutsuccess.png',
              width: 384,
              height: 195,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10, // Add spacing between the image and button
            ),
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Begin(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(73, 210, 129, 1.000),
                  ),
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
                  'OK',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

class HourGlassLoadingWidget extends StatefulWidget {
  @override
  _HourGlassLoadingWidgetState createState() => _HourGlassLoadingWidgetState();
}

class _HourGlassLoadingWidgetState extends State<HourGlassLoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Icon(
        Icons.hourglass_empty,
        color: Color.fromRGBO(0, 242, 52, 1),
        size: 70, // Customize size as needed
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
