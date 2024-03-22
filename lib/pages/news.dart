import 'package:fivenance/pages/newspage2.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'newspage.dart';

void main() => runApp(const MaterialApp(home: News()));

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1C3C),
      body: Column(
        children: [
          Padding(
        padding: EdgeInsets.only(top: 50, left: 25, right: 20),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Transform.scale(
                scale: 0.8, // Adjust the scale factor as needed
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 120),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
          const Row(
            children: [
              SizedBox(width: 50),
              SizedBox(
                height: 40,
                width: 164,
                child: Text(
                  'Discovery',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'AbhayaLibre-ExtraBold',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/discovery1.png'),
                        fit: BoxFit.cover,
                        height: 250,
                        width: 330,
                      ),
                      Positioned(
                        top:120,
                        left: 20,
                        child: Text(
                          'Meta Stock\nPrice Soared by 20%',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewsPage())
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/discovery4.jpg'),
                          fit: BoxFit.cover,
                          height: 250,
                          width: 330,
                        ),
                        Positioned(
                          top:100,
                          left: 20,
                          child: Text(
                            'Google recently\ntalked about their\nnew AI model',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre-ExtraBold',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/discovery2.png'),
                        fit: BoxFit.cover,
                        height: 250,
                        width: 330,
                      ),
                      Positioned(
                        top:60,
                        left: 20,
                        child: Text(
                          'Do you know\nfinancial fraud\nis around you?',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/discovery3.png'),
                        fit: BoxFit.cover,
                        height: 250,
                        width: 330,
                      ),
                      Positioned(
                        top:30,
                        left: 20,
                        child: Text(
                          'How to Survive\nin Investment Pool?',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/discovery5.png'),
                        fit: BoxFit.cover,
                        height: 250,
                        width: 330,
                      ),
                      Positioned(
                        top: 10,
                        left: 20,
                        child: Text(
                          'Start your\ntrading journey today!',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              SizedBox(width: 50),
              SizedBox(
                height: 36,
                width: 164,
                child: Text(
                  'News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'AbhayaLibre',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 350,
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewsPage2())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 100,
                                width: 150,
                                child: Image(
                                  image: AssetImage('assets/news1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Market Surges as\nTech Stocks Rally:\nBreaking News in Trading',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news2.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Apple Unveils\nGroundbreaking\nInnovation in New Product\nAnnouncement Event',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news3.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Warren Buffett Makes\nBold Investment Move\nAmid Market Volatility',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news4.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Authorities Uncover\nMajor Financial\nFraud Scheme Involving\nMillions of Dollars',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news5.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Large Corporation Files\nfor Bankruptcy Amid\nEconomic Uncertainty',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news6.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Tesla Stock Skyrockets\non Record Deliveries\nand Profit Surge',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 100,
                              width: 150,
                              child: Image(
                                image: AssetImage('assets/news7.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Biotech Stock Soars\non Breakthrough Drug\nApproval',
                          style: TextStyle(
                            fontFamily: 'AbhayaLibre-ExtraBold',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//for backend uses (fetch api)
// height: 170,
// child: ListView.separated(
//   scrollDirection: Axis.horizontal,
//   itemCount: 5,
//   separatorBuilder: (BuildContext context, int index){
//     return const SizedBox(width: 20);
//   },
//   itemBuilder: (BuildContext context, int index){
//     return Container(
//       height: 168,
//       width: 300,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//       ),
//     );
//   }
// ),

// SizedBox(
// height: 350,
// child: ListView.builder(
// itemCount: 5,
// itemBuilder: (BuildContext context, int index){
// return Padding(
// padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
// child: Container(
// height: 100,
// width: 350,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.white
// ),
// ),
// );
// }
// ),
// ),