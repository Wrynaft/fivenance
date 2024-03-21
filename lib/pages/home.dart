import 'package:fivenance/pages/profile.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1C3C),
      body: Stack(
        children: [
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
                    // Define the amount to translate based on the current page index
                    double xOffset = (index - _currentPage) * 100.0;

                    return Transform.translate(
                      offset: Offset(
                        xOffset,
                        0.0,
                      ),
                      child: buildPage(
                        'assets/discovery1.jpg',
                        index == 0
                            ? 'Meta Stock\nPrice Soared by 20%'
                            : 'Tab ${index + 1}',
                        '2 February 2024',
                      ),
                    );
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
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
    );
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
              height: 365,
              width: 390,
            ),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromRGBO(41, 117, 89, 1).withOpacity(0.9),
                      Colors.transparent,
                    ],
                  ),
                ),
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
}
