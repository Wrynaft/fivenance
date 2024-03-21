import 'package:fivenance/pages/forum.dart';
import 'package:fivenance/pages/mentor1.dart';
import 'package:fivenance/pages/news.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:fivenance/pages/training.dart';
import 'package:fivenance/pages/dailytrivia.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  bool _isLoading = false; // Track loading state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1C3C),
      body: Stack(
        children: [
          // Background content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/Logo.png',
                        height: 80,
                        width: 80,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        child: Image.asset(
                          'assets/profilepic.png',
                          height: 43,
                          width: 43,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 370,
                width: 390,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return buildPage(
                        'assets/discovery1.jpg',
                        'Meta Stock\nPrice Soared by 20%',
                        '2 February 2024',
                      );
                    } else if (index == 1) {
                      return buildPage(
                        'assets/FeaturedTraining.jpg',
                        'FraudGuard: \nProtecting Your Finances',
                        '25 March 2024',
                      );
                    } else if (index == 2) {
                      return GestureDetector(
                        onTap: () async {
                          setState(() {
                            _isLoading = true; // Start loading
                          });
                          await Future.delayed(
                              Duration(seconds: 2)); // Simulating loading time
                          setState(() {
                            _isLoading = false; // Stop loading
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mentor1()),
                          );
                        },
                        child: buildPage(
                          'assets/5nancementor.png',
                          'Join 5nance as a Mentor: \nShare Your Expertise!',
                          '24 March 2024',
                        ),
                      );
                    }
                    return Container();
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
          // Loading indicator with background
          if (_isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.8),
                child: Center(
                  child: HourGlassLoadingWidget(),
                ),
              ),
            ),
          // SmoothPageIndicator widget (conditionally rendered based on _isLoading)
          if (!_isLoading)
            Positioned(
              top: 445,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: JumpingDotEffect(
                    activeDotColor: Color.fromRGBO(97, 255, 137, 1.000),
                    dotColor: Color.fromRGBO(211, 255, 249, 1.000),
                    dotHeight: 15,
                    dotWidth: 15,
                    spacing: 8,
                    jumpScale: 3,
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Opacity(
                  opacity: _isLoading
                      ? 0.1
                      : 1.0, // Set opacity based on loading state
                  child: GestureDetector(
                    child: SizedBox(
                      height: 120,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Forum(), // Navigate to news page
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isLoading
                              ? Colors.black.withOpacity(0.8)
                              : Color.fromRGBO(79, 129, 147, 1.000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Image.asset(
                          'assets/Forummainpage.png', // Insert your image here
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: _isLoading
                      ? 0.1
                      : 1.0, // Set opacity based on loading state
                  child: GestureDetector(
                    child: SizedBox(
                      height: 120,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  News(), // Navigate to news page
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isLoading
                              ? Colors.black.withOpacity(0.8)
                              : Color.fromRGBO(61, 99, 112, 1.000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Image.asset('assets/Newsmainpage.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Opacity(
                  opacity: _isLoading
                      ? 0.1
                      : 1.0, // Set opacity based on loading state
                  child: GestureDetector(
                    child: SizedBox(
                      height: 120,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Training(), // Navigate to news page
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isLoading
                              ? Colors.black.withOpacity(0.8)
                              : Color.fromRGBO(61, 99, 112, 1.000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child:
                            Image.asset('assets/Trainingprogrammainpage.png'),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: _isLoading
                      ? 0.1
                      : 1.0, // Set opacity based on loading state
                  child: GestureDetector(
                    child: SizedBox(
                      height: 120,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DailyTrivia(), // Navigate to news page
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _isLoading
                              ? Colors.black.withOpacity(0.8)
                              : Color.fromRGBO(79, 129, 147, 1.000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Image.asset('assets/Dailytriviamainpage.png'),
                      ),
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

Widget buildPage(String imageUrl, String title, String date) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 370,
            width: 390,
          ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(41, 117, 89, 1).withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          if (imageUrl == 'assets/discovery1.jpg')
            Positioned(
              top: 100,
              left: 20,
              child: Image.asset(
                'assets/Trending.png',
                height: 54,
                width: 100,
              ),
            ),
          if (imageUrl ==
              'assets/FeaturedTraining.jpg') // Show Featured Program icon for tab 2
            Positioned(
              top: 100,
              left: 20,
              child: Image.asset(
                'assets/featuredprogramicon.png',
                height: 54,
                width: 160,
              ),
            ),
          if (imageUrl ==
              'assets/5nancementor.png') // Show featured image for tab 3
            Positioned(
              top: 100,
              left: 20,
              child: Image.asset(
                'assets/featured.png',
                height: 54,
                width: 100,
              ),
            ),
          Positioned(
            top: 150,
            left: 20,
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'AbhayaLibre',
                fontSize: 33,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Text(
              date,
              style: TextStyle(
                fontFamily: 'AbhayaLibre-Regular',
                fontSize: 16,
                color: Color.fromARGB(215, 215, 215, 1000),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
