import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:fivenance/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isLoading = false; // Flag to track loading state

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
                    'assets/Save.png',
                    width: 384,
                    height: 195,
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
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1C3C),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height:
                      kToolbarHeight + MediaQuery.of(context).padding.top + 90,
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
                  child: Padding(
                    padding: EdgeInsets.only(top: 0, left: 25, right: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 105),
                        Text(
                          'Edit Profile',
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
                ),
                SizedBox(height: 70), // space between image and text
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loading()),
                    );
                  },
                  child: Text(
                    'Update Profile Picture',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ProfileEditField(
                    label: 'Name', initialValue: 'Nicholas Wong Jun Jie'),
                ProfileEditField(
                    label: 'Username', initialValue: 'nicwongwjj0033'),
                ProfileEditField(
                    label: 'Email Address',
                    initialValue: 'nicwongjj@gmail.com'),
                ProfileEditField(label: 'Birthday', initialValue: '27/04/2004'),
                ProfileEditField(
                    label: 'Occupation', initialValue: 'Finance Manager'),
                ProfileEditField(
                    label: 'Bio',
                    initialValue:
                        'A well-organized person person with high sense of responsibility & urgency on works.'),
                SizedBox(height: 20), // space between bio and button
                SizedBox(
                  width: 290,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save action
                      print('Save button pressed');
                      _showSaveConfirmation(context);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(196, 255, 234, 1.000),
                            Color.fromRGBO(120, 172, 144, 1.000)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0C1C3C),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50), //bottom space
              ],
            ),
            Positioned(
              top: kToolbarHeight + MediaQuery.of(context).padding.top + 30,
              left: MediaQuery.of(context).size.width / 2 - 60,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/profilepic.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (_isLoading)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 180), // Adjust the height as needed
                        HourGlassLoadingWidget(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProfileEditField extends StatelessWidget {
  final String label;
  final String initialValue;

  const ProfileEditField({
    required this.label,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
          child: TextFormField(
            initialValue: initialValue,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
